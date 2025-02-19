# typed: strong

module Increase
  module Resources
    class Accounts
      sig do
        params(
          name: String,
          entity_id: String,
          informational_entity_id: String,
          program_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Account)
      end
      def create(name:, entity_id: nil, informational_entity_id: nil, program_id: nil, request_options: {})
      end

      sig do
        params(
          account_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Account)
      end
      def retrieve(account_id, request_options: {})
      end

      sig do
        params(
          account_id: String,
          name: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Account)
      end
      def update(account_id, name: nil, request_options: {})
      end

      sig do
        params(
          created_at: Increase::Models::AccountListParams::CreatedAt,
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          informational_entity_id: String,
          limit: Integer,
          program_id: String,
          status: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::Account])
      end
      def list(
        created_at: nil,
        cursor: nil,
        entity_id: nil,
        idempotency_key: nil,
        informational_entity_id: nil,
        limit: nil,
        program_id: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        params(
          account_id: String,
          at_time: Time,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::BalanceLookup)
      end
      def balance(account_id, at_time: nil, request_options: {})
      end

      sig do
        params(
          account_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Account)
      end
      def close(account_id, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
