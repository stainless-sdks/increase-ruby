# typed: strong

module Increase
  module Resources
    class Lockboxes
      sig do
        params(
            account_id: String,
            description: String,
            recipient_name: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::Lockbox)
      end
      def create(account_id:, description: nil, recipient_name: nil, request_options: {})
      end

      sig do
        params(
            lockbox_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::Lockbox)
      end
      def retrieve(lockbox_id, request_options: {})
      end

      sig do
        params(
            lockbox_id: String,
            description: String,
            recipient_name: String,
            status: Symbol,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::Lockbox)
      end
      def update(lockbox_id, description: nil, recipient_name: nil, status: nil, request_options: {})
      end

      sig do
        params(
            account_id: String,
            created_at: Increase::Models::LockboxListParams::CreatedAt,
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Page[Increase::Models::Lockbox])
      end
      def list(account_id: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
