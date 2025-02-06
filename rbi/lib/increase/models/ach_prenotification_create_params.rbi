# typed: strong

module Increase
  module Models
    class ACHPrenotificationCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(String) }
      attr_accessor :account_number

      sig { returns(String) }
      attr_accessor :routing_number

      sig { returns(T.nilable(String)) }
      attr_reader :addendum

      sig { params(addendum: String).void }
      attr_writer :addendum

      sig { returns(T.nilable(String)) }
      attr_reader :company_descriptive_date

      sig { params(company_descriptive_date: String).void }
      attr_writer :company_descriptive_date

      sig { returns(T.nilable(String)) }
      attr_reader :company_discretionary_data

      sig { params(company_discretionary_data: String).void }
      attr_writer :company_discretionary_data

      sig { returns(T.nilable(String)) }
      attr_reader :company_entry_description

      sig { params(company_entry_description: String).void }
      attr_writer :company_entry_description

      sig { returns(T.nilable(String)) }
      attr_reader :company_name

      sig { params(company_name: String).void }
      attr_writer :company_name

      sig { returns(T.nilable(Symbol)) }
      attr_reader :credit_debit_indicator

      sig { params(credit_debit_indicator: Symbol).void }
      attr_writer :credit_debit_indicator

      sig { returns(T.nilable(Date)) }
      attr_reader :effective_date

      sig { params(effective_date: Date).void }
      attr_writer :effective_date

      sig { returns(T.nilable(String)) }
      attr_reader :individual_id

      sig { params(individual_id: String).void }
      attr_writer :individual_id

      sig { returns(T.nilable(String)) }
      attr_reader :individual_name

      sig { params(individual_name: String).void }
      attr_writer :individual_name

      sig { returns(T.nilable(Symbol)) }
      attr_reader :standard_entry_class_code

      sig { params(standard_entry_class_code: Symbol).void }
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
          credit_debit_indicator: Symbol,
          effective_date: Date,
          individual_id: String,
          individual_name: String,
          standard_entry_class_code: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
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
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            account_number: String,
            routing_number: String,
            addendum: String,
            company_descriptive_date: String,
            company_discretionary_data: String,
            company_entry_description: String,
            company_name: String,
            credit_debit_indicator: Symbol,
            effective_date: Date,
            individual_id: String,
            individual_name: String,
            standard_entry_class_code: Symbol,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CreditDebitIndicator < Increase::Enum
        abstract!

        # The Prenotification is for an anticipated credit.
        CREDIT = :credit

        # The Prenotification is for an anticipated debit.
        DEBIT = :debit

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class StandardEntryClassCode < Increase::Enum
        abstract!

        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
