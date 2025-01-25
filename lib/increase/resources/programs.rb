# frozen_string_literal: true

module Increase
  module Resources
    class Programs
      # Retrieve a Program
      #
      # @param program_id [String] The identifier of the Program to retrieve.
      #
      # @param params [Increase::Models::ProgramRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::Program]
      #
      def retrieve(program_id, params = {})
        @client.request(
          method: :get,
          path: ["programs/%0s", program_id],
          model: Increase::Models::Program,
          options: params[:request_options]
        )
      end

      # List Programs
      #
      # @param params [Increase::Models::ProgramListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Page<Increase::Models::Program>]
      #
      def list(params = {})
        parsed, options = Increase::Models::ProgramListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "programs",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Program,
          options: options
        )
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
