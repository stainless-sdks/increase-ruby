# typed: strong

module Increase
  module Resources
    class SupplementalDocuments
      # Create a supplemental document for an Entity
      sig do
        params(
          entity_id: String,
          file_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::EntitySupplementalDocument)
      end
      def create(entity_id:, file_id:, request_options: {})
      end

      # List Entity Supplemental Document Submissions
      sig do
        params(
          entity_id: String,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::EntitySupplementalDocument])
      end
      def list(entity_id:, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
