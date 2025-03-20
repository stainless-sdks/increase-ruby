# typed: strong

module Increase
  module Models
    class ACHTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The Increase identifier for the account that will send the transfer.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The transfer amount in USD cents. A positive amount originates a credit transfer
      #   pushing funds to the receiving account. A negative amount originates a debit
      #   transfer pulling funds from the receiving account.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # A description you choose to give the transfer. This will be saved with the
      #   transfer details, displayed in the dashboard, and returned by the API. If
      #   `individual_name` and `company_name` are not explicitly set by this API, the
      #   `statement_descriptor` will be sent in those fields to the receiving bank to
      #   help the customer recognize the transfer. You are highly encouraged to pass
      #   `individual_name` and `company_name` instead of relying on this fallback.
      sig { returns(String) }
      def statement_descriptor
      end

      sig { params(_: String).returns(String) }
      def statement_descriptor=(_)
      end

      # The account number for the destination account.
      sig { returns(T.nilable(String)) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # Additional information that will be sent to the recipient. This is included in
      #   the transfer data sent to the receiving bank.
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda)) }
      def addenda
      end

      sig do
        params(_: T.any(Increase::Models::ACHTransferCreateParams::Addenda, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::ACHTransferCreateParams::Addenda, Increase::Util::AnyHash))
      end
      def addenda=(_)
      end

      # The description of the date of the transfer, usually in the format `YYMMDD`.
      #   This is included in the transfer data sent to the receiving bank.
      sig { returns(T.nilable(String)) }
      def company_descriptive_date
      end

      sig { params(_: String).returns(String) }
      def company_descriptive_date=(_)
      end

      # The data you choose to associate with the transfer. This is included in the
      #   transfer data sent to the receiving bank.
      sig { returns(T.nilable(String)) }
      def company_discretionary_data
      end

      sig { params(_: String).returns(String) }
      def company_discretionary_data=(_)
      end

      # A description of the transfer. This is included in the transfer data sent to the
      #   receiving bank.
      sig { returns(T.nilable(String)) }
      def company_entry_description
      end

      sig { params(_: String).returns(String) }
      def company_entry_description=(_)
      end

      # The name by which the recipient knows you. This is included in the transfer data
      #   sent to the receiving bank.
      sig { returns(T.nilable(String)) }
      def company_name
      end

      sig { params(_: String).returns(String) }
      def company_name=(_)
      end

      # The type of entity that owns the account to which the ACH Transfer is being
      #   sent.
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::OrSymbol)) }
      def destination_account_holder
      end

      sig do
        params(_: Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::OrSymbol)
          .returns(Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::OrSymbol)
      end
      def destination_account_holder=(_)
      end

      # The ID of an External Account to initiate a transfer to. If this parameter is
      #   provided, `account_number`, `routing_number`, and `funding` must be absent.
      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: String).returns(String) }
      def external_account_id=(_)
      end

      # The type of the account to which the transfer will be sent.
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Funding::OrSymbol)) }
      def funding
      end

      sig do
        params(_: Increase::Models::ACHTransferCreateParams::Funding::OrSymbol)
          .returns(Increase::Models::ACHTransferCreateParams::Funding::OrSymbol)
      end
      def funding=(_)
      end

      # Your identifier for the transfer recipient.
      sig { returns(T.nilable(String)) }
      def individual_id
      end

      sig { params(_: String).returns(String) }
      def individual_id=(_)
      end

      # The name of the transfer recipient. This value is informational and not verified
      #   by the recipient's bank.
      sig { returns(T.nilable(String)) }
      def individual_name
      end

      sig { params(_: String).returns(String) }
      def individual_name=(_)
      end

      # Configuration for how the effective date of the transfer will be set. This
      #   determines same-day vs future-dated settlement timing. If not set, defaults to a
      #   `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
      #   must be set.
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate)) }
      def preferred_effective_date
      end

      sig do
        params(
          _: T.any(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate, Increase::Util::AnyHash)
        )
          .returns(T.any(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate, Increase::Util::AnyHash))
      end
      def preferred_effective_date=(_)
      end

      # Whether the transfer requires explicit approval via the dashboard or API.
      sig { returns(T.nilable(T::Boolean)) }
      def require_approval
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def require_approval=(_)
      end

      # The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      sig { returns(T.nilable(String)) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # The Standard Entry Class (SEC) code to use for the transfer.
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::OrSymbol)) }
      def standard_entry_class_code
      end

      sig do
        params(_: Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::OrSymbol)
          .returns(Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::OrSymbol)
      end
      def standard_entry_class_code=(_)
      end

      # The timing of the transaction.
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::TransactionTiming::OrSymbol)) }
      def transaction_timing
      end

      sig do
        params(_: Increase::Models::ACHTransferCreateParams::TransactionTiming::OrSymbol)
          .returns(Increase::Models::ACHTransferCreateParams::TransactionTiming::OrSymbol)
      end
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
          destination_account_holder: Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::OrSymbol,
          external_account_id: String,
          funding: Increase::Models::ACHTransferCreateParams::Funding::OrSymbol,
          individual_id: String,
          individual_name: String,
          preferred_effective_date: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate,
          require_approval: T::Boolean,
          routing_number: String,
          standard_entry_class_code: Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::OrSymbol,
          transaction_timing: Increase::Models::ACHTransferCreateParams::TransactionTiming::OrSymbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              destination_account_holder: Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::OrSymbol,
              external_account_id: String,
              funding: Increase::Models::ACHTransferCreateParams::Funding::OrSymbol,
              individual_id: String,
              individual_name: String,
              preferred_effective_date: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate,
              require_approval: T::Boolean,
              routing_number: String,
              standard_entry_class_code: Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::OrSymbol,
              transaction_timing: Increase::Models::ACHTransferCreateParams::TransactionTiming::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Addenda < Increase::BaseModel
        # The type of addenda to pass with the transfer.
        sig { returns(Increase::Models::ACHTransferCreateParams::Addenda::Category::OrSymbol) }
        def category
        end

        sig do
          params(_: Increase::Models::ACHTransferCreateParams::Addenda::Category::OrSymbol)
            .returns(Increase::Models::ACHTransferCreateParams::Addenda::Category::OrSymbol)
        end
        def category=(_)
        end

        # Unstructured `payment_related_information` passed through with the transfer.
        sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda::Freeform)) }
        def freeform
        end

        sig do
          params(_: T.any(Increase::Models::ACHTransferCreateParams::Addenda::Freeform, Increase::Util::AnyHash))
            .returns(T.any(Increase::Models::ACHTransferCreateParams::Addenda::Freeform, Increase::Util::AnyHash))
        end
        def freeform=(_)
        end

        # Structured ASC X12 820 remittance advice records. Please reach out to
        #   [support@increase.com](mailto:support@increase.com) for more information.
        sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice)) }
        def payment_order_remittance_advice
        end

        sig do
          params(
            _: T.any(
              Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice,
              Increase::Util::AnyHash
            )
          )
            .returns(
              T.any(
                Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice,
                Increase::Util::AnyHash
              )
            )
        end
        def payment_order_remittance_advice=(_)
        end

        # Additional information that will be sent to the recipient. This is included in
        #   the transfer data sent to the receiving bank.
        sig do
          params(
            category: Increase::Models::ACHTransferCreateParams::Addenda::Category::OrSymbol,
            freeform: Increase::Models::ACHTransferCreateParams::Addenda::Freeform,
            payment_order_remittance_advice: Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice
          )
            .returns(T.attached_class)
        end
        def self.new(category:, freeform: nil, payment_order_remittance_advice: nil)
        end

        sig do
          override
            .returns(
              {
                category: Increase::Models::ACHTransferCreateParams::Addenda::Category::OrSymbol,
                freeform: Increase::Models::ACHTransferCreateParams::Addenda::Freeform,
                payment_order_remittance_advice: Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice
              }
            )
        end
        def to_hash
        end

        # The type of addenda to pass with the transfer.
        module Category
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::Addenda::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::ACHTransferCreateParams::Addenda::Category::TaggedSymbol) }

          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = T.let(:freeform, Increase::Models::ACHTransferCreateParams::Addenda::Category::TaggedSymbol)

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE =
            T.let(
              :payment_order_remittance_advice,
              Increase::Models::ACHTransferCreateParams::Addenda::Category::TaggedSymbol
            )

          class << self
            sig { override.returns(T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Category::TaggedSymbol]) }
            def values
            end
          end
        end

        class Freeform < Increase::BaseModel
          # Each entry represents an addendum sent with the transfer. Please reach out to
          #   [support@increase.com](mailto:support@increase.com) to send more than one
          #   addendum.
          sig { returns(T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry]) }
          def entries
          end

          sig do
            params(_: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry])
              .returns(T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry])
          end
          def entries=(_)
          end

          # Unstructured `payment_related_information` passed through with the transfer.
          sig do
            params(entries: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry])
              .returns(T.attached_class)
          end
          def self.new(entries:)
          end

          sig { override.returns({entries: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry]}) }
          def to_hash
          end

          class Entry < Increase::BaseModel
            # The payment related information passed in the addendum.
            sig { returns(String) }
            def payment_related_information
            end

            sig { params(_: String).returns(String) }
            def payment_related_information=(_)
            end

            sig { params(payment_related_information: String).returns(T.attached_class) }
            def self.new(payment_related_information:)
            end

            sig { override.returns({payment_related_information: String}) }
            def to_hash
            end
          end
        end

        class PaymentOrderRemittanceAdvice < Increase::BaseModel
          # ASC X12 RMR records for this specific transfer.
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

          # Structured ASC X12 820 remittance advice records. Please reach out to
          #   [support@increase.com](mailto:support@increase.com) for more information.
          sig do
            params(
              invoices: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]
            )
              .returns(T.attached_class)
          end
          def self.new(invoices:)
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
            # The invoice number for this reference, determined in advance with the receiver.
            sig { returns(String) }
            def invoice_number
            end

            sig { params(_: String).returns(String) }
            def invoice_number=(_)
            end

            # The amount that was paid for this invoice in the minor unit of its currency. For
            #   dollars, for example, this is cents.
            sig { returns(Integer) }
            def paid_amount
            end

            sig { params(_: Integer).returns(Integer) }
            def paid_amount=(_)
            end

            sig { params(invoice_number: String, paid_amount: Integer).returns(T.attached_class) }
            def self.new(invoice_number:, paid_amount:)
            end

            sig { override.returns({invoice_number: String, paid_amount: Integer}) }
            def to_hash
            end
          end
        end
      end

      # The type of entity that owns the account to which the ACH Transfer is being
      #   sent.
      module DestinationAccountHolder
        extend Increase::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::TaggedSymbol) }

        # The External Account is owned by a business.
        BUSINESS =
          T.let(:business, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::TaggedSymbol)

        # The External Account is owned by an individual.
        INDIVIDUAL =
          T.let(:individual, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::TaggedSymbol)

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN =
          T.let(:unknown, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::TaggedSymbol)

        class << self
          sig do
            override
              .returns(T::Array[Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::TaggedSymbol])
          end
          def values
          end
        end
      end

      # The type of the account to which the transfer will be sent.
      module Funding
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::Funding) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ACHTransferCreateParams::Funding::TaggedSymbol) }

        # A checking account.
        CHECKING = T.let(:checking, Increase::Models::ACHTransferCreateParams::Funding::TaggedSymbol)

        # A savings account.
        SAVINGS = T.let(:savings, Increase::Models::ACHTransferCreateParams::Funding::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ACHTransferCreateParams::Funding::TaggedSymbol]) }
          def values
          end
        end
      end

      class PreferredEffectiveDate < Increase::BaseModel
        # A specific date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format to
        #   use as the effective date when submitting this transfer.
        sig { returns(T.nilable(Date)) }
        def date
        end

        sig { params(_: Date).returns(Date) }
        def date=(_)
        end

        # A schedule by which Increase will choose an effective date for the transfer.
        sig do
          returns(
            T.nilable(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::OrSymbol)
          )
        end
        def settlement_schedule
        end

        sig do
          params(_: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::OrSymbol)
            .returns(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::OrSymbol)
        end
        def settlement_schedule=(_)
        end

        # Configuration for how the effective date of the transfer will be set. This
        #   determines same-day vs future-dated settlement timing. If not set, defaults to a
        #   `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
        #   must be set.
        sig do
          params(
            date: Date,
            settlement_schedule: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(date: nil, settlement_schedule: nil)
        end

        sig do
          override
            .returns(
              {
                date: Date,
                settlement_schedule: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::OrSymbol
              }
            )
        end
        def to_hash
        end

        # A schedule by which Increase will choose an effective date for the transfer.
        module SettlementSchedule
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol
              )
            end

          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted. This is necessary, but not sufficient for the transfer to be settled same-day: it must also be submitted before the last same-day cutoff and be less than or equal to $1,000.000.00.
          SAME_DAY =
            T.let(
              :same_day,
              Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol
            )

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED =
            T.let(
              :future_dated,
              Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(
                  T::Array[Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol]
                )
            end
            def values
            end
          end
        end
      end

      # The Standard Entry Class (SEC) code to use for the transfer.
      module StandardEntryClassCode
        extend Increase::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::StandardEntryClassCode) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol) }

        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT =
          T.let(
            :corporate_credit_or_debit,
            Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
          )

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE =
          T.let(
            :corporate_trade_exchange,
            Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
          )

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT =
          T.let(
            :prearranged_payments_and_deposit,
            Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
          )

        # Internet Initiated (WEB).
        INTERNET_INITIATED =
          T.let(
            :internet_initiated,
            Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol
          )

        class << self
          sig do
            override.returns(T::Array[Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol])
          end
          def values
          end
        end
      end

      # The timing of the transaction.
      module TransactionTiming
        extend Increase::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::TransactionTiming) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ACHTransferCreateParams::TransactionTiming::TaggedSymbol) }

        # A Transaction will be created immediately.
        SYNCHRONOUS =
          T.let(:synchronous, Increase::Models::ACHTransferCreateParams::TransactionTiming::TaggedSymbol)

        # A Transaction will be created when the funds settle at the Federal Reserve.
        ASYNCHRONOUS =
          T.let(:asynchronous, Increase::Models::ACHTransferCreateParams::TransactionTiming::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ACHTransferCreateParams::TransactionTiming::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
