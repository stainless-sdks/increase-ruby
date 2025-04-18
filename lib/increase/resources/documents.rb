# frozen_string_literal: true

module Increase
  module Resources
    class Documents
      # @api private
      private def initialize_resources; end

      # Retrieve a Document
      #
      # @overload retrieve(document_id, request_options: {})
      #
      # @param document_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Document]
      #
      # @see Increase::Models::DocumentRetrieveParams
      def retrieve(document_id, params = {})
        @client.request(
          method: :get,
          path: ["documents/%1$s", document_id],
          model: Increase::Models::Document,
          options: params[:request_options]
        )
      end

      # List Documents
      #
      # @overload list(category: nil, created_at: nil, cursor: nil, entity_id: nil, limit: nil, request_options: {})
      #
      # @param category [Increase::Models::DocumentListParams::Category]
      # @param created_at [Increase::Models::DocumentListParams::CreatedAt]
      # @param cursor [String]
      # @param entity_id [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::Document>]
      #
      # @see Increase::Models::DocumentListParams
      def list(params = {})
        parsed, options = Increase::Models::DocumentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "documents",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::Document,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
