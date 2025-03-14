# typed: strong

module Increase
  module Resources
    class BookkeepingAccounts
      # Create a Bookkeeping Account
      sig do
        params(
          name: String,
          account_id: String,
          compliance_category: Symbol,
          entity_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::BookkeepingAccount)
      end
      def create(name:, account_id: nil, compliance_category: nil, entity_id: nil, request_options: {})
      end

      # Update a Bookkeeping Account
      sig do
        params(
          bookkeeping_account_id: String,
          name: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::BookkeepingAccount)
      end
      def update(bookkeeping_account_id, name:, request_options: {})
      end

      # List Bookkeeping Accounts
      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::BookkeepingAccount])
      end
      def list(cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      end

      # Retrieve a Bookkeeping Account Balance
      sig do
        params(
          bookkeeping_account_id: String,
          at_time: Time,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::BookkeepingBalanceLookup)
      end
      def balance(bookkeeping_account_id, at_time: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
