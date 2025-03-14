# typed: strong

module Increase
  module Resources
    class Documents
      # Retrieve a Document
      sig do
        params(
          document_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Document)
      end
      def retrieve(document_id, request_options: {})
      end

      # List Documents
      sig do
        params(
          category: Increase::Models::DocumentListParams::Category,
          created_at: Increase::Models::DocumentListParams::CreatedAt,
          cursor: String,
          entity_id: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::Document])
      end
      def list(category: nil, created_at: nil, cursor: nil, entity_id: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
