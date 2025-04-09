# typed: strong

module Increase
  module Resources
    class ACHPrenotifications
      # Create an ACH Prenotification
      sig do
        params(
          account_id: String,
          account_number: String,
          routing_number: String,
          addendum: String,
          company_descriptive_date: String,
          company_discretionary_data: String,
          company_entry_description: String,
          company_name: String,
          credit_debit_indicator: Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::OrSymbol,
          effective_date: Date,
          individual_id: String,
          individual_name: String,
          standard_entry_class_code: Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ACHPrenotification)
      end
      def create(
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/account_id
        account_id:,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/account_number
        account_number:,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/routing_number
        routing_number:,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/addendum
        addendum: nil,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/company_descriptive_date
        company_descriptive_date: nil,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/company_discretionary_data
        company_discretionary_data: nil,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/company_entry_description
        company_entry_description: nil,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/company_name
        company_name: nil,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/credit_debit_indicator
        credit_debit_indicator: nil,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/effective_date
        effective_date: nil,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/individual_id
        individual_id: nil,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/individual_name
        individual_name: nil,
        # #/components/schemas/create_an_ach_prenotification_parameters/properties/standard_entry_class_code
        standard_entry_class_code: nil,
        request_options: {}
      ); end
      # Retrieve an ACH Prenotification
      sig do
        params(
          ach_prenotification_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ACHPrenotification)
      end
      def retrieve(
        # #/paths//ach_prenotifications/{ach_prenotification_id}/get/parameters/0/schema
        ach_prenotification_id,
        request_options: {}
      ); end
      # List ACH Prenotifications
      sig do
        params(
          created_at: T.any(Increase::Models::ACHPrenotificationListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::ACHPrenotification])
      end
      def list(
        created_at: nil,
        # #/paths//ach_prenotifications/get/parameters/0/schema
        cursor: nil,
        # #/paths//ach_prenotifications/get/parameters/2/schema
        idempotency_key: nil,
        # #/paths//ach_prenotifications/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
