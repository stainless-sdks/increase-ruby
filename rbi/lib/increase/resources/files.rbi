# typed: strong

module Increase
  module Resources
    class Files
      sig do
        params(
          file: T.any(IO, StringIO),
          purpose: Symbol,
          description: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::File)
      end
      def create(file:, purpose:, description: nil, request_options: {})
      end

      sig do
        params(
          file_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::File)
      end
      def retrieve(file_id, request_options: {})
      end

      sig do
        params(
          created_at: Increase::Models::FileListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          purpose: Increase::Models::FileListParams::Purpose,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::File])
      end
      def list(
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        purpose: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
