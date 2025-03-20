# typed: strong

module Increase
  module Models
    class ACHPrenotificationCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The Increase identifier for the account that will send the transfer.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The account number for the destination account.
      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # Additional information that will be sent to the recipient.
      sig { returns(T.nilable(String)) }
      def addendum
      end

      sig { params(_: String).returns(String) }
      def addendum=(_)
      end

      # The description of the date of the transfer.
      sig { returns(T.nilable(String)) }
      def company_descriptive_date
      end

      sig { params(_: String).returns(String) }
      def company_descriptive_date=(_)
      end

      # The data you choose to associate with the transfer.
      sig { returns(T.nilable(String)) }
      def company_discretionary_data
      end

      sig { params(_: String).returns(String) }
      def company_discretionary_data=(_)
      end

      # The description of the transfer you wish to be shown to the recipient.
      sig { returns(T.nilable(String)) }
      def company_entry_description
      end

      sig { params(_: String).returns(String) }
      def company_entry_description=(_)
      end

      # The name by which the recipient knows you.
      sig { returns(T.nilable(String)) }
      def company_name
      end

      sig { params(_: String).returns(String) }
      def company_name=(_)
      end

      # Whether the Prenotification is for a future debit or credit.
      sig { returns(T.nilable(Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::OrSymbol)) }
      def credit_debit_indicator
      end

      sig do
        params(_: Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::OrSymbol)
          .returns(Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::OrSymbol)
      end
      def credit_debit_indicator=(_)
      end

      # The transfer effective date in
      #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
      sig { returns(T.nilable(Date)) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      # Your identifier for the transfer recipient.
      sig { returns(T.nilable(String)) }
      def individual_id
      end

      sig { params(_: String).returns(String) }
      def individual_id=(_)
      end

      # The name of the transfer recipient. This value is information and not verified
      #   by the recipient's bank.
      sig { returns(T.nilable(String)) }
      def individual_name
      end

      sig { params(_: String).returns(String) }
      def individual_name=(_)
      end

      # The Standard Entry Class (SEC) code to use for the ACH Prenotification.
      sig { returns(T.nilable(Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::OrSymbol)) }
      def standard_entry_class_code
      end

      sig do
        params(_: Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::OrSymbol)
          .returns(Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::OrSymbol)
      end
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
          credit_debit_indicator: Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::OrSymbol,
          effective_date: Date,
          individual_id: String,
          individual_name: String,
          standard_entry_class_code: Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::OrSymbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
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
              credit_debit_indicator: Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::OrSymbol,
              effective_date: Date,
              individual_id: String,
              individual_name: String,
              standard_entry_class_code: Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Whether the Prenotification is for a future debit or credit.
      module CreditDebitIndicator
        extend Increase::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::TaggedSymbol) }

        # The Prenotification is for an anticipated credit.
        CREDIT =
          T.let(:credit, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::TaggedSymbol)

        # The Prenotification is for an anticipated debit.
        DEBIT =
          T.let(:debit, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::TaggedSymbol)

        class << self
          sig do
            override
              .returns(T::Array[Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator::TaggedSymbol])
          end
          def values
          end
        end
      end

      # The Standard Entry Class (SEC) code to use for the ACH Prenotification.
      module StandardEntryClassCode
        extend Increase::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::TaggedSymbol) }

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

        class << self
          sig do
            override
              .returns(T::Array[Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode::TaggedSymbol])
          end
          def values
          end
        end
      end
    end
  end
end
