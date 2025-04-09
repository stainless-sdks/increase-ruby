# typed: strong

module Increase
  module Models
    class ACHPrenotificationCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/account_number
      sig { returns(String) }
      attr_accessor :account_number

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/routing_number
      sig { returns(String) }
      attr_accessor :routing_number

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/addendum
      sig { returns(T.nilable(String)) }
      attr_reader :addendum

      sig { params(addendum: String).void }
      attr_writer :addendum

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/company_descriptive_date
      sig { returns(T.nilable(String)) }
      attr_reader :company_descriptive_date

      sig { params(company_descriptive_date: String).void }
      attr_writer :company_descriptive_date

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/company_discretionary_data
      sig { returns(T.nilable(String)) }
      attr_reader :company_discretionary_data

      sig { params(company_discretionary_data: String).void }
      attr_writer :company_discretionary_data

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/company_entry_description
      sig { returns(T.nilable(String)) }
      attr_reader :company_entry_description

      sig { params(company_entry_description: String).void }
      attr_writer :company_entry_description

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/company_name
      sig { returns(T.nilable(String)) }
      attr_reader :company_name

      sig { params(company_name: String).void }
      attr_writer :company_name

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/credit_debit_indicator
      sig { returns(T.nilable(Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::OrSymbol)) }
      attr_reader :credit_debit_indicator

      sig do
        params(
          credit_debit_indicator: Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::OrSymbol
        )
          .void
      end
      attr_writer :credit_debit_indicator

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/effective_date
      sig { returns(T.nilable(Date)) }
      attr_reader :effective_date

      sig { params(effective_date: Date).void }
      attr_writer :effective_date

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/individual_id
      sig { returns(T.nilable(String)) }
      attr_reader :individual_id

      sig { params(individual_id: String).void }
      attr_writer :individual_id

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/individual_name
      sig { returns(T.nilable(String)) }
      attr_reader :individual_name

      sig { params(individual_name: String).void }
      attr_writer :individual_name

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/standard_entry_class_code
      sig { returns(T.nilable(Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::OrSymbol)) }
      attr_reader :standard_entry_class_code

      sig do
        params(
          standard_entry_class_code: Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::OrSymbol
        )
          .void
      end
      attr_writer :standard_entry_class_code

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
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id:,
        account_number:,
        routing_number:,
        addendum: nil,
        company_descriptive_date: nil,
        company_discretionary_data: nil,
        company_entry_description: nil,
        company_name: nil,
        credit_debit_indicator: nil,
        effective_date: nil,
        individual_id: nil,
        individual_name: nil,
        standard_entry_class_code: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
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
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/credit_debit_indicator
      module CreditDebitIndicator
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator) }
        OrSymbol =
          T.type_alias do
            T.any(
              Symbol,
              String,
              Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::TaggedSymbol
            )
          end

        # The Prenotification is for an anticipated credit.
        CREDIT =
          T.let(:credit, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::TaggedSymbol)

        # The Prenotification is for an anticipated debit.
        DEBIT =
          T.let(:debit, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::TaggedSymbol)

        sig do
          override
            .returns(T::Array[Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::TaggedSymbol])
        end
        def self.values; end
      end

      # #/components/schemas/create_an_ach_prenotification_parameters/properties/standard_entry_class_code
      module StandardEntryClassCode
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode) }
        OrSymbol =
          T.type_alias do
            T.any(
              Symbol,
              String,
              Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::TaggedSymbol
            )
          end

        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT =
          T.let(
            :corporate_credit_or_debit,
            Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::TaggedSymbol
          )

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE =
          T.let(
            :corporate_trade_exchange,
            Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::TaggedSymbol
          )

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT =
          T.let(
            :prearranged_payments_and_deposit,
            Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::TaggedSymbol
          )

        # Internet Initiated (WEB).
        INTERNET_INITIATED =
          T.let(
            :internet_initiated,
            Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::TaggedSymbol
          )

        sig do
          override
            .returns(T::Array[Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::TaggedSymbol])
        end
        def self.values; end
      end
    end
  end
end
