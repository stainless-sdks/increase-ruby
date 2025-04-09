# typed: strong

module Increase
  module Resources
    class ExternalAccounts
      # Create an External Account
      sig do
        params(
          account_number: String,
          description: String,
          routing_number: String,
          account_holder: Increase::Models::ExternalAccountCreateParams::AccountHolder::OrSymbol,
          funding: Increase::Models::ExternalAccountCreateParams::Funding::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ExternalAccount)
      end
      def create(
        # #/components/schemas/create_an_external_account_parameters/properties/account_number
        account_number:,
        # #/components/schemas/create_an_external_account_parameters/properties/description
        description:,
        # #/components/schemas/create_an_external_account_parameters/properties/routing_number
        routing_number:,
        # #/components/schemas/create_an_external_account_parameters/properties/account_holder
        account_holder: nil,
        # #/components/schemas/create_an_external_account_parameters/properties/funding
        funding: nil,
        request_options: {}
      ); end
      # Retrieve an External Account
      sig do
        params(
          external_account_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ExternalAccount)
      end
      def retrieve(
        # #/paths//external_accounts/{external_account_id}/get/parameters/0/schema
        external_account_id,
        request_options: {}
      ); end
      # Update an External Account
      sig do
        params(
          external_account_id: String,
          account_holder: Increase::Models::ExternalAccountUpdateParams::AccountHolder::OrSymbol,
          description: String,
          funding: Increase::Models::ExternalAccountUpdateParams::Funding::OrSymbol,
          status: Increase::Models::ExternalAccountUpdateParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ExternalAccount)
      end
      def update(
        # #/paths//external_accounts/{external_account_id}/patch/parameters/0/schema
        external_account_id,
        # #/components/schemas/update_an_external_account_parameters/properties/account_holder
        account_holder: nil,
        # #/components/schemas/update_an_external_account_parameters/properties/description
        description: nil,
        # #/components/schemas/update_an_external_account_parameters/properties/funding
        funding: nil,
        # #/components/schemas/update_an_external_account_parameters/properties/status
        status: nil,
        request_options: {}
      ); end
      # List External Accounts
      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          routing_number: String,
          status: T.any(Increase::Models::ExternalAccountListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::ExternalAccount])
      end
      def list(
        # #/paths//external_accounts/get/parameters/0/schema
        cursor: nil,
        # #/paths//external_accounts/get/parameters/4/schema
        idempotency_key: nil,
        # #/paths//external_accounts/get/parameters/1/schema
        limit: nil,
        # #/paths//external_accounts/get/parameters/3/schema
        routing_number: nil,
        status: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
