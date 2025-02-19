# typed: strong

module Increase
  module Models
    class ACHPrenotificationCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def addendum
      end

      sig { params(_: String).returns(String) }
      def addendum=(_)
      end

      sig { returns(T.nilable(String)) }
      def company_descriptive_date
      end

      sig { params(_: String).returns(String) }
      def company_descriptive_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def company_discretionary_data
      end

      sig { params(_: String).returns(String) }
      def company_discretionary_data=(_)
      end

      sig { returns(T.nilable(String)) }
      def company_entry_description
      end

      sig { params(_: String).returns(String) }
      def company_entry_description=(_)
      end

      sig { returns(T.nilable(String)) }
      def company_name
      end

      sig { params(_: String).returns(String) }
      def company_name=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def credit_debit_indicator
      end

      sig { params(_: Symbol).returns(Symbol) }
      def credit_debit_indicator=(_)
      end

      sig { returns(T.nilable(Date)) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def individual_id
      end

      sig { params(_: String).returns(String) }
      def individual_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def individual_name
      end

      sig { params(_: String).returns(String) }
      def individual_name=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def standard_entry_class_code
      end

      sig { params(_: Symbol).returns(Symbol) }
      def standard_entry_class_code=(_)
      end

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
          )
          .void
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
