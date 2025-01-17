# frozen_string_literal: true

module Increase
  module Resources
    class Programs
      # Retrieve a Program
      #
      # @param program_id [String] The identifier of the Program to retrieve.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Program]
      #
      def retrieve(program_id, opts = {})
        req = {
          method: :get,
          path: ["programs/%0s", program_id],
          model: Increase::Models::Program
        }
        @client.request(req, opts)
      end

      # List Programs
      #
      # @param params [Increase::Models::ProgramListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Program>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::ProgramListParams.dump(params)
        req = {
          method: :get,
          path: "programs",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Program
        }
        @client.request(req, opts)
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
