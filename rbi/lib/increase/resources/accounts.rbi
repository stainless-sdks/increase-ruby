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
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Account)
      end
      def create(
        # #/components/schemas/create_an_account_parameters/properties/name
        name:,
        # #/components/schemas/create_an_account_parameters/properties/entity_id
        entity_id: nil,
        # #/components/schemas/create_an_account_parameters/properties/informational_entity_id
        informational_entity_id: nil,
        # #/components/schemas/create_an_account_parameters/properties/program_id
        program_id: nil,
        request_options: {}
      ); end
      # Retrieve an Account
      sig do
        params(
          account_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Account)
      end
      def retrieve(
        # #/paths//accounts/{account_id}/get/parameters/0/schema
        account_id,
        request_options: {}
      ); end
      # Update an Account
      sig do
        params(
          account_id: String,
          name: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Account)
      end
      def update(
        # #/paths//accounts/{account_id}/patch/parameters/0/schema
        account_id,
        # #/components/schemas/update_an_account_parameters/properties/name
        name: nil,
        request_options: {}
      ); end
      # List Accounts
      sig do
        params(
          created_at: T.any(Increase::Models::AccountListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          informational_entity_id: String,
          limit: Integer,
          program_id: String,
          status: T.any(Increase::Models::AccountListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::Account])
      end
      def list(
        created_at: nil,
        # #/paths//accounts/get/parameters/0/schema
        cursor: nil,
        # #/paths//accounts/get/parameters/2/schema
        entity_id: nil,
        # #/paths//accounts/get/parameters/10/schema
        idempotency_key: nil,
        # #/paths//accounts/get/parameters/3/schema
        informational_entity_id: nil,
        # #/paths//accounts/get/parameters/1/schema
        limit: nil,
        # #/paths//accounts/get/parameters/4/schema
        program_id: nil,
        status: nil,
        request_options: {}
      ); end
      # Retrieve the current and available balances for an account in minor units of the
      # account's currency. Learn more about [account balances](/documentation/balance).
      sig do
        params(
          account_id: String,
          at_time: Time,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::BalanceLookup)
      end
      def balance(
        # #/paths//accounts/{account_id}/balance/get/parameters/0/schema
        account_id,
        # #/paths//accounts/{account_id}/balance/get/parameters/1/schema
        at_time: nil,
        request_options: {}
      ); end
      # Close an Account
      sig do
        params(
          account_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Account)
      end
      def close(
        # #/paths//accounts/{account_id}/close/post/parameters/0/schema
        account_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
