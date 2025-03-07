# typed: strong

module Increase
  module Models
    class ACHTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(String) }
      def statement_descriptor
      end

      sig { params(_: String).returns(String) }
      def statement_descriptor=(_)
      end

      sig { returns(T.nilable(String)) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda)) }
      def addenda
      end

      sig do
        params(_: Increase::Models::ACHTransferCreateParams::Addenda)
          .returns(Increase::Models::ACHTransferCreateParams::Addenda)
      end
      def addenda=(_)
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
      def destination_account_holder
      end

      sig { params(_: Symbol).returns(Symbol) }
      def destination_account_holder=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: String).returns(String) }
      def external_account_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def funding
      end

      sig { params(_: Symbol).returns(Symbol) }
      def funding=(_)
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

      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate)) }
      def preferred_effective_date
      end

      sig do
        params(_: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate)
          .returns(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate)
      end
      def preferred_effective_date=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def require_approval
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def require_approval=(_)
      end

      sig { returns(T.nilable(String)) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def standard_entry_class_code
      end

      sig { params(_: Symbol).returns(Symbol) }
      def standard_entry_class_code=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def transaction_timing
      end

      sig { params(_: Symbol).returns(Symbol) }
      def transaction_timing=(_)
      end

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
        )
          .void
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
        override
          .returns(
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
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda::Freeform)) }
        def freeform
        end

        sig do
          params(_: Increase::Models::ACHTransferCreateParams::Addenda::Freeform)
            .returns(Increase::Models::ACHTransferCreateParams::Addenda::Freeform)
        end
        def freeform=(_)
        end

        sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice)) }
        def payment_order_remittance_advice
        end

        sig do
          params(_: Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice)
            .returns(Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice)
        end
        def payment_order_remittance_advice=(_)
        end

        sig do
          params(
            category: Symbol,
            freeform: Increase::Models::ACHTransferCreateParams::Addenda::Freeform,
            payment_order_remittance_advice: Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice
          )
            .void
        end
        def initialize(category:, freeform: nil, payment_order_remittance_advice: nil)
        end

        sig do
          override
            .returns(
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
          def entries
          end

          sig do
            params(_: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry])
              .returns(T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry])
          end
          def entries=(_)
          end

          sig { params(entries: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry]).void }
          def initialize(entries:)
          end

          sig { override.returns({entries: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry]}) }
          def to_hash
          end

          class Entry < Increase::BaseModel
            sig { returns(String) }
            def payment_related_information
            end

            sig { params(_: String).returns(String) }
            def payment_related_information=(_)
            end

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
            returns(
              T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]
            )
          end
          def invoices
          end

          sig do
            params(
              _: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]
            )
              .returns(
                T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]
              )
          end
          def invoices=(_)
          end

          sig do
            params(
              invoices: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]
            )
              .void
          end
          def initialize(invoices:)
          end

          sig do
            override
              .returns(
                {
                  invoices: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]
                }
              )
          end
          def to_hash
          end

          class Invoice < Increase::BaseModel
            sig { returns(String) }
            def invoice_number
            end

            sig { params(_: String).returns(String) }
            def invoice_number=(_)
            end

            sig { returns(Integer) }
            def paid_amount
            end

            sig { params(_: Integer).returns(Integer) }
            def paid_amount=(_)
            end

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
        def date
        end

        sig { params(_: Date).returns(Date) }
        def date=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def settlement_schedule
        end

        sig { params(_: Symbol).returns(Symbol) }
        def settlement_schedule=(_)
        end

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
