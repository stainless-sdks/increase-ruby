# typed: strong

module Increase
  module Resources
    class Accounts
      # Create an Account
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

      # Retrieve an Account
      sig do
        params(
          account_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Account)
      end
      def retrieve(account_id, request_options: {})
      end

      # Update an Account
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

      # List Accounts
      sig do
        params(
          created_at: Increase::Models::AccountListParams::CreatedAt,
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          informational_entity_id: String,
          limit: Integer,
          program_id: String,
          status: Increase::Models::AccountListParams::Status,
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

      # Retrieve the current and available balances for an account in minor units of the
      #   account's currency. Learn more about [account balances](/documentation/balance).
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

      # Close an Account
      sig do
        params(
          account_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Account)
      end
      def close(account_id, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
