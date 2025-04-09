# typed: strong

module Increase
  module Resources
    class AccountNumbers
      # Create an Account Number
      sig do
        params(
          account_id: String,
          name: String,
          inbound_ach: T.any(Increase::Models::AccountNumberCreateParams::InboundACH, Increase::Internal::AnyHash),
          inbound_checks: T.any(Increase::Models::AccountNumberCreateParams::InboundChecks, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::AccountNumber)
      end
      def create(
        # #/components/schemas/create_an_account_number_parameters/properties/account_id
        account_id:,
        # #/components/schemas/create_an_account_number_parameters/properties/name
        name:,
        # #/components/schemas/create_an_account_number_parameters/properties/inbound_ach
        inbound_ach: nil,
        # #/components/schemas/create_an_account_number_parameters/properties/inbound_checks
        inbound_checks: nil,
        request_options: {}
      ); end
      # Retrieve an Account Number
      sig do
        params(
          account_number_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::AccountNumber)
      end
      def retrieve(
        # #/paths//account_numbers/{account_number_id}/get/parameters/0/schema
        account_number_id,
        request_options: {}
      ); end
      # Update an Account Number
      sig do
        params(
          account_number_id: String,
          inbound_ach: T.any(Increase::Models::AccountNumberUpdateParams::InboundACH, Increase::Internal::AnyHash),
          inbound_checks: T.any(Increase::Models::AccountNumberUpdateParams::InboundChecks, Increase::Internal::AnyHash),
          name: String,
          status: Increase::Models::AccountNumberUpdateParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::AccountNumber)
      end
      def update(
        # #/paths//account_numbers/{account_number_id}/patch/parameters/0/schema
        account_number_id,
        # #/components/schemas/update_an_account_number_parameters/properties/inbound_ach
        inbound_ach: nil,
        # #/components/schemas/update_an_account_number_parameters/properties/inbound_checks
        inbound_checks: nil,
        # #/components/schemas/update_an_account_number_parameters/properties/name
        name: nil,
        # #/components/schemas/update_an_account_number_parameters/properties/status
        status: nil,
        request_options: {}
      ); end
      # List Account Numbers
      sig do
        params(
          account_id: String,
          ach_debit_status: T.any(Increase::Models::AccountNumberListParams::ACHDebitStatus, Increase::Internal::AnyHash),
          created_at: T.any(Increase::Models::AccountNumberListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::AccountNumberListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::AccountNumber])
      end
      def list(
        # #/paths//account_numbers/get/parameters/4/schema
        account_id: nil,
        ach_debit_status: nil,
        created_at: nil,
        # #/paths//account_numbers/get/parameters/0/schema
        cursor: nil,
        # #/paths//account_numbers/get/parameters/9/schema
        idempotency_key: nil,
        # #/paths//account_numbers/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
