# typed: strong

module Increase
  module Resources
    class BookkeepingAccounts
      # Create a Bookkeeping Account
      sig do
        params(
          name: String,
          account_id: String,
          compliance_category: Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::OrSymbol,
          entity_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::BookkeepingAccount)
      end
      def create(
        # #/components/schemas/create_a_bookkeeping_account_parameters/properties/name
        name:,
        # #/components/schemas/create_a_bookkeeping_account_parameters/properties/account_id
        account_id: nil,
        # #/components/schemas/create_a_bookkeeping_account_parameters/properties/compliance_category
        compliance_category: nil,
        # #/components/schemas/create_a_bookkeeping_account_parameters/properties/entity_id
        entity_id: nil,
        request_options: {}
      ); end
      # Update a Bookkeeping Account
      sig do
        params(
          bookkeeping_account_id: String,
          name: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::BookkeepingAccount)
      end
      def update(
        # #/paths//bookkeeping_accounts/{bookkeeping_account_id}/patch/parameters/0/schema
        bookkeeping_account_id,
        # #/components/schemas/update_a_bookkeeping_account_parameters/properties/name
        name:,
        request_options: {}
      ); end
      # List Bookkeeping Accounts
      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::BookkeepingAccount])
      end
      def list(
        # #/paths//bookkeeping_accounts/get/parameters/0/schema
        cursor: nil,
        # #/paths//bookkeeping_accounts/get/parameters/2/schema
        idempotency_key: nil,
        # #/paths//bookkeeping_accounts/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # Retrieve a Bookkeeping Account Balance
      sig do
        params(
          bookkeeping_account_id: String,
          at_time: Time,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::BookkeepingBalanceLookup)
      end
      def balance(
        # #/paths//bookkeeping_accounts/{bookkeeping_account_id}/balance/get/parameters/0/schema
        bookkeeping_account_id,
        # #/paths//bookkeeping_accounts/{bookkeeping_account_id}/balance/get/parameters/1/schema
        at_time: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
