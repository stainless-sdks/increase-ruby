# frozen_string_literal: true

module Increase
  module Resources
    class Programs
      # Retrieve a Program
      #
      # @overload retrieve(program_id, request_options: {})
      #
      # @param program_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Program]
      #
      # @see Increase::Models::ProgramRetrieveParams
      def retrieve(program_id, params = {})
        @client.request(
          method: :get,
          path: ["programs/%1$s", program_id],
          model: Increase::Models::Program,
          options: params[:request_options]
        )
      end

      # List Programs
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::Program>]
      #
      # @see Increase::Models::ProgramListParams
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

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
