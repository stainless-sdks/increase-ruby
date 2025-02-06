# typed: strong

module Increase
  module Models
    class ACHTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :statement_descriptor

      sig { returns(T.nilable(String)) }
      attr_reader :account_number

      sig { params(account_number: String).void }
      attr_writer :account_number

      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda)) }
      attr_reader :addenda

      sig { params(addenda: Increase::Models::ACHTransferCreateParams::Addenda).void }
      attr_writer :addenda

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
      attr_reader :destination_account_holder

      sig { params(destination_account_holder: Symbol).void }
      attr_writer :destination_account_holder

      sig { returns(T.nilable(String)) }
      attr_reader :external_account_id

      sig { params(external_account_id: String).void }
      attr_writer :external_account_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :funding

      sig { params(funding: Symbol).void }
      attr_writer :funding

      sig { returns(T.nilable(String)) }
      attr_reader :individual_id

      sig { params(individual_id: String).void }
      attr_writer :individual_id

      sig { returns(T.nilable(String)) }
      attr_reader :individual_name

      sig { params(individual_name: String).void }
      attr_writer :individual_name

      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate)) }
      attr_reader :preferred_effective_date

      sig do
        params(preferred_effective_date: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate).void
      end
      attr_writer :preferred_effective_date

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_approval

      sig { params(require_approval: T::Boolean).void }
      attr_writer :require_approval

      sig { returns(T.nilable(String)) }
      attr_reader :routing_number

      sig { params(routing_number: String).void }
      attr_writer :routing_number

      sig { returns(T.nilable(Symbol)) }
      attr_reader :standard_entry_class_code

      sig { params(standard_entry_class_code: Symbol).void }
      attr_writer :standard_entry_class_code

      sig { returns(T.nilable(Symbol)) }
      attr_reader :transaction_timing

      sig { params(transaction_timing: Symbol).void }
      attr_writer :transaction_timing

      sig do
        params(
          account_id: String,
          amount: Integer,
          statement_descriptor: String,
          account_number: String,
          addenda: Increase::Models::ACHTransferCreateParams::Addenda,
          company_descriptive_date: String,
          company_discretionary_data: String,
          company_entry_description: String,
          company_name: String,
          destination_account_holder: Symbol,
          external_account_id: String,
          funding: Symbol,
          individual_id: String,
          individual_name: String,
          preferred_effective_date: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate,
          require_approval: T::Boolean,
          routing_number: String,
          standard_entry_class_code: Symbol,
          transaction_timing: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        account_id:,
        amount:,
        statement_descriptor:,
        account_number: nil,
        addenda: nil,
        company_descriptive_date: nil,
        company_discretionary_data: nil,
        company_entry_description: nil,
        company_name: nil,
        destination_account_holder: nil,
        external_account_id: nil,
        funding: nil,
        individual_id: nil,
        individual_name: nil,
        preferred_effective_date: nil,
        require_approval: nil,
        routing_number: nil,
        standard_entry_class_code: nil,
        transaction_timing: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            amount: Integer,
            statement_descriptor: String,
            account_number: String,
            addenda: Increase::Models::ACHTransferCreateParams::Addenda,
            company_descriptive_date: String,
            company_discretionary_data: String,
            company_entry_description: String,
            company_name: String,
            destination_account_holder: Symbol,
            external_account_id: String,
            funding: Symbol,
            individual_id: String,
            individual_name: String,
            preferred_effective_date: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate,
            require_approval: T::Boolean,
            routing_number: String,
            standard_entry_class_code: Symbol,
            transaction_timing: Symbol,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Addenda < Increase::BaseModel
        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda::Freeform)) }
        attr_reader :freeform

        sig { params(freeform: Increase::Models::ACHTransferCreateParams::Addenda::Freeform).void }
        attr_writer :freeform

        sig do
          returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice))
        end
        attr_reader :payment_order_remittance_advice

        sig do
          params(
            payment_order_remittance_advice: Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice
          ).void
        end
        attr_writer :payment_order_remittance_advice

        sig do
          params(
            category: Symbol,
            freeform: Increase::Models::ACHTransferCreateParams::Addenda::Freeform,
            payment_order_remittance_advice: Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice
          ).void
        end
        def initialize(category:, freeform: nil, payment_order_remittance_advice: nil)
        end

        sig do
          override.returns(
            {
              category: Symbol,
              freeform: Increase::Models::ACHTransferCreateParams::Addenda::Freeform,
              payment_order_remittance_advice: Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice
            }
          )
        end
        def to_hash
        end

        class Category < Increase::Enum
          abstract!

          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = :freeform

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE = :payment_order_remittance_advice

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Freeform < Increase::BaseModel
          sig { returns(T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry]) }
          attr_accessor :entries

          sig do
            params(entries: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry]).void
          end
          def initialize(entries:)
          end

          sig do
            override.returns({entries: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry]})
          end
          def to_hash
          end

          class Entry < Increase::BaseModel
            sig { returns(String) }
            attr_accessor :payment_related_information

            sig { params(payment_related_information: String).void }
            def initialize(payment_related_information:)
            end

            sig { override.returns({payment_related_information: String}) }
            def to_hash
            end
          end
        end

        class PaymentOrderRemittanceAdvice < Increase::BaseModel
          sig do
            returns(T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice])
          end
          attr_accessor :invoices

          sig do
            params(
              invoices: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]
            ).void
          end
          def initialize(invoices:)
          end

          sig do
            override.returns({invoices: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]})
          end
          def to_hash
          end

          class Invoice < Increase::BaseModel
            sig { returns(String) }
            attr_accessor :invoice_number

            sig { returns(Integer) }
            attr_accessor :paid_amount

            sig { params(invoice_number: String, paid_amount: Integer).void }
            def initialize(invoice_number:, paid_amount:)
            end

            sig { override.returns({invoice_number: String, paid_amount: Integer}) }
            def to_hash
            end
          end
        end
      end

      class DestinationAccountHolder < Increase::Enum
        abstract!

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Funding < Increase::Enum
        abstract!

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class PreferredEffectiveDate < Increase::BaseModel
        sig { returns(T.nilable(Date)) }
        attr_reader :date

        sig { params(date: Date).void }
        attr_writer :date

        sig { returns(T.nilable(Symbol)) }
        attr_reader :settlement_schedule

        sig { params(settlement_schedule: Symbol).void }
        attr_writer :settlement_schedule

        sig { params(date: Date, settlement_schedule: Symbol).void }
        def initialize(date: nil, settlement_schedule: nil)
        end

        sig { override.returns({date: Date, settlement_schedule: Symbol}) }
        def to_hash
        end

        class SettlementSchedule < Increase::Enum
          abstract!

          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted. This is necessary, but not sufficient for the transfer to be settled same-day: it must also be submitted before the last same-day cutoff and be less than or equal to $1,000.000.00.
          SAME_DAY = :same_day

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED = :future_dated

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
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

      class TransactionTiming < Increase::Enum
        abstract!

        # A Transaction will be created immediately.
        SYNCHRONOUS = :synchronous

        # A Transaction will be created when the funds settle at the Federal Reserve.
        ASYNCHRONOUS = :asynchronous

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
