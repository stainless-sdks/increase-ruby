# typed: strong

module Increase
  module Resources
    class SupplementalDocuments
      # Create a supplemental document for an Entity
      sig do
        params(
          entity_id: String,
          file_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::EntitySupplementalDocument)
      end
      def create(
        # #/components/schemas/create_a_supplemental_document_for_an_entity_parameters/properties/entity_id
        entity_id:,
        # #/components/schemas/create_a_supplemental_document_for_an_entity_parameters/properties/file_id
        file_id:,
        request_options: {}
      ); end
      # List Entity Supplemental Document Submissions
      sig do
        params(
          entity_id: String,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::EntitySupplementalDocument])
      end
      def list(
        # #/paths//entity_supplemental_documents/get/parameters/2/schema
        entity_id:,
        # #/paths//entity_supplemental_documents/get/parameters/0/schema
        cursor: nil,
        # #/paths//entity_supplemental_documents/get/parameters/3/schema
        idempotency_key: nil,
        # #/paths//entity_supplemental_documents/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
