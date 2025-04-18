# frozen_string_literal: true

module Increase
  module Resources
    class SupplementalDocuments
      # @api private
      private def initialize_resources; end

      # Create a supplemental document for an Entity
      #
      # @overload create(entity_id:, file_id:, request_options: {})
      #
      # @param entity_id [String]
      # @param file_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::EntitySupplementalDocument]
      #
      # @see Increase::Models::SupplementalDocumentCreateParams
      def create(params)
        parsed, options = Increase::Models::SupplementalDocumentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "entity_supplemental_documents",
          body: parsed,
          model: Increase::Models::EntitySupplementalDocument,
          options: options
        )
      end

      # List Entity Supplemental Document Submissions
      #
      # @overload list(entity_id:, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      #
      # @param entity_id [String]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::EntitySupplementalDocument>]
      #
      # @see Increase::Models::SupplementalDocumentListParams
      def list(params)
        parsed, options = Increase::Models::SupplementalDocumentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "entity_supplemental_documents",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::EntitySupplementalDocument,
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
