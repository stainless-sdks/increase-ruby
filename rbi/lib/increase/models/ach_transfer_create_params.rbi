# typed: strong

module Increase
  module Models
    class ACHTransferCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_an_ach_transfer_parameters/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/create_an_ach_transfer_parameters/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/create_an_ach_transfer_parameters/properties/statement_descriptor
      sig { returns(String) }
      attr_accessor :statement_descriptor

      # #/components/schemas/create_an_ach_transfer_parameters/properties/account_number
      sig { returns(T.nilable(String)) }
      attr_reader :account_number

      sig { params(account_number: String).void }
      attr_writer :account_number

      # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda)) }
      attr_reader :addenda

      sig do
        params(addenda: T.any(Increase::Models::ACHTransferCreateParams::Addenda, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :addenda

      # #/components/schemas/create_an_ach_transfer_parameters/properties/company_descriptive_date
      sig { returns(T.nilable(String)) }
      attr_reader :company_descriptive_date

      sig { params(company_descriptive_date: String).void }
      attr_writer :company_descriptive_date

      # #/components/schemas/create_an_ach_transfer_parameters/properties/company_discretionary_data
      sig { returns(T.nilable(String)) }
      attr_reader :company_discretionary_data

      sig { params(company_discretionary_data: String).void }
      attr_writer :company_discretionary_data

      # #/components/schemas/create_an_ach_transfer_parameters/properties/company_entry_description
      sig { returns(T.nilable(String)) }
      attr_reader :company_entry_description

      sig { params(company_entry_description: String).void }
      attr_writer :company_entry_description

      # #/components/schemas/create_an_ach_transfer_parameters/properties/company_name
      sig { returns(T.nilable(String)) }
      attr_reader :company_name

      sig { params(company_name: String).void }
      attr_writer :company_name

      # #/components/schemas/create_an_ach_transfer_parameters/properties/destination_account_holder
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::OrSymbol)) }
      attr_reader :destination_account_holder

      sig do
        params(
          destination_account_holder: Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::OrSymbol
        )
          .void
      end
      attr_writer :destination_account_holder

      # #/components/schemas/create_an_ach_transfer_parameters/properties/external_account_id
      sig { returns(T.nilable(String)) }
      attr_reader :external_account_id

      sig { params(external_account_id: String).void }
      attr_writer :external_account_id

      # #/components/schemas/create_an_ach_transfer_parameters/properties/funding
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Funding::OrSymbol)) }
      attr_reader :funding

      sig { params(funding: Increase::Models::ACHTransferCreateParams::Funding::OrSymbol).void }
      attr_writer :funding

      # #/components/schemas/create_an_ach_transfer_parameters/properties/individual_id
      sig { returns(T.nilable(String)) }
      attr_reader :individual_id

      sig { params(individual_id: String).void }
      attr_writer :individual_id

      # #/components/schemas/create_an_ach_transfer_parameters/properties/individual_name
      sig { returns(T.nilable(String)) }
      attr_reader :individual_name

      sig { params(individual_name: String).void }
      attr_writer :individual_name

      # #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate)) }
      attr_reader :preferred_effective_date

      sig do
        params(
          preferred_effective_date: T.any(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :preferred_effective_date

      # #/components/schemas/create_an_ach_transfer_parameters/properties/require_approval
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_approval

      sig { params(require_approval: T::Boolean).void }
      attr_writer :require_approval

      # #/components/schemas/create_an_ach_transfer_parameters/properties/routing_number
      sig { returns(T.nilable(String)) }
      attr_reader :routing_number

      sig { params(routing_number: String).void }
      attr_writer :routing_number

      # #/components/schemas/create_an_ach_transfer_parameters/properties/standard_entry_class_code
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::OrSymbol)) }
      attr_reader :standard_entry_class_code

      sig do
        params(
          standard_entry_class_code: Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::OrSymbol
        )
          .void
      end
      attr_writer :standard_entry_class_code

      # #/components/schemas/create_an_ach_transfer_parameters/properties/transaction_timing
      sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::TransactionTiming::OrSymbol)) }
      attr_reader :transaction_timing

      sig { params(transaction_timing: Increase::Models::ACHTransferCreateParams::TransactionTiming::OrSymbol).void }
      attr_writer :transaction_timing

      sig do
        params(
          account_id: String,
          amount: Integer,
          statement_descriptor: String,
          account_number: String,
          addenda: T.any(Increase::Models::ACHTransferCreateParams::Addenda, Increase::Internal::AnyHash),
          company_descriptive_date: String,
          company_discretionary_data: String,
          company_entry_description: String,
          company_name: String,
          destination_account_holder: Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::OrSymbol,
          external_account_id: String,
          funding: Increase::Models::ACHTransferCreateParams::Funding::OrSymbol,
          individual_id: String,
          individual_name: String,
          preferred_effective_date: T.any(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate, Increase::Internal::AnyHash),
          require_approval: T::Boolean,
          routing_number: String,
          standard_entry_class_code: Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::OrSymbol,
          transaction_timing: Increase::Models::ACHTransferCreateParams::TransactionTiming::OrSymbol,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
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
      ); end
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
      def to_hash; end

      class Addenda < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/category
        sig { returns(Increase::Models::ACHTransferCreateParams::Addenda::Category::OrSymbol) }
        attr_accessor :category

        # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/freeform
        sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda::Freeform)) }
        attr_reader :freeform

        sig do
          params(
            freeform: T.any(Increase::Models::ACHTransferCreateParams::Addenda::Freeform, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :freeform

        # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice
        sig { returns(T.nilable(Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice)) }
        attr_reader :payment_order_remittance_advice

        sig do
          params(
            payment_order_remittance_advice: T.any(
              Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice,
              Increase::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :payment_order_remittance_advice

        # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda
        sig do
          params(
            category: Increase::Models::ACHTransferCreateParams::Addenda::Category::OrSymbol,
            freeform: T.any(Increase::Models::ACHTransferCreateParams::Addenda::Freeform, Increase::Internal::AnyHash),
            payment_order_remittance_advice: T.any(
              Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice,
              Increase::Internal::AnyHash
            )
          )
            .returns(T.attached_class)
        end
        def self.new(category:, freeform: nil, payment_order_remittance_advice: nil); end

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
        def to_hash; end

        # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/category
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::Addenda::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::ACHTransferCreateParams::Addenda::Category::TaggedSymbol) }

          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = T.let(:freeform, Increase::Models::ACHTransferCreateParams::Addenda::Category::TaggedSymbol)

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE =
            T.let(
              :payment_order_remittance_advice,
              Increase::Models::ACHTransferCreateParams::Addenda::Category::TaggedSymbol
            )

          sig { override.returns(T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Category::TaggedSymbol]) }
          def self.values; end
        end

        class Freeform < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/freeform/properties/entries
          sig { returns(T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry]) }
          attr_accessor :entries

          # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/freeform
          sig do
            params(
              entries: T::Array[T.any(Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry, Increase::Internal::AnyHash)]
            )
              .returns(T.attached_class)
          end
          def self.new(entries:); end

          sig { override.returns({entries: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry]}) }
          def to_hash; end

          class Entry < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/freeform/properties/entries/items/properties/payment_related_information
            sig { returns(String) }
            attr_accessor :payment_related_information

            # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/freeform/properties/entries/items
            sig { params(payment_related_information: String).returns(T.attached_class) }
            def self.new(payment_related_information:); end

            sig { override.returns({payment_related_information: String}) }
            def to_hash; end
          end
        end

        class PaymentOrderRemittanceAdvice < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice/properties/invoices
          sig do
            returns(
              T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]
            )
          end
          attr_accessor :invoices

          # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice
          sig do
            params(
              invoices: T::Array[
                T.any(
                  Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice,
                  Increase::Internal::AnyHash
                )
              ]
            )
              .returns(T.attached_class)
          end
          def self.new(invoices:); end

          sig do
            override
              .returns(
                {
                  invoices: T::Array[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]
                }
              )
          end
          def to_hash; end

          class Invoice < Increase::Internal::Type::BaseModel
            # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice/properties/invoices/items/properties/invoice_number
            sig { returns(String) }
            attr_accessor :invoice_number

            # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice/properties/invoices/items/properties/paid_amount
            sig { returns(Integer) }
            attr_accessor :paid_amount

            # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice/properties/invoices/items
            sig { params(invoice_number: String, paid_amount: Integer).returns(T.attached_class) }
            def self.new(invoice_number:, paid_amount:); end

            sig { override.returns({invoice_number: String, paid_amount: Integer}) }
            def to_hash; end
          end
        end
      end

      # #/components/schemas/create_an_ach_transfer_parameters/properties/destination_account_holder
      module DestinationAccountHolder
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::TaggedSymbol) }

        # The External Account is owned by a business.
        BUSINESS =
          T.let(:business, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::TaggedSymbol)

        # The External Account is owned by an individual.
        INDIVIDUAL =
          T.let(:individual, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::TaggedSymbol)

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN =
          T.let(:unknown, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::TaggedSymbol)

        sig do
          override
            .returns(T::Array[Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::TaggedSymbol])
        end
        def self.values; end
      end

      # #/components/schemas/create_an_ach_transfer_parameters/properties/funding
      module Funding
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::Funding) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ACHTransferCreateParams::Funding::TaggedSymbol) }

        # A checking account.
        CHECKING = T.let(:checking, Increase::Models::ACHTransferCreateParams::Funding::TaggedSymbol)

        # A savings account.
        SAVINGS = T.let(:savings, Increase::Models::ACHTransferCreateParams::Funding::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::ACHTransferCreateParams::Funding::TaggedSymbol]) }
        def self.values; end
      end

      class PreferredEffectiveDate < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date/properties/date
        sig { returns(T.nilable(Date)) }
        attr_reader :date

        sig { params(date: Date).void }
        attr_writer :date

        # #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date/properties/settlement_schedule
        sig do
          returns(
            T.nilable(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::OrSymbol)
          )
        end
        attr_reader :settlement_schedule

        sig do
          params(
            settlement_schedule: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::OrSymbol
          )
            .void
        end
        attr_writer :settlement_schedule

        # #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date
        sig do
          params(
            date: Date,
            settlement_schedule: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(date: nil, settlement_schedule: nil); end

        sig do
          override
            .returns(
              {
                date: Date,
                settlement_schedule: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::OrSymbol
              }
            )
        end
        def to_hash; end

        # #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date/properties/settlement_schedule
        module SettlementSchedule
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
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

          sig do
            override
              .returns(
                T::Array[Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end

      # #/components/schemas/create_an_ach_transfer_parameters/properties/standard_entry_class_code
      module StandardEntryClassCode
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::StandardEntryClassCode) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol) }

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

        sig do
          override.returns(T::Array[Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::TaggedSymbol])
        end
        def self.values; end
      end

      # #/components/schemas/create_an_ach_transfer_parameters/properties/transaction_timing
      module TransactionTiming
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ACHTransferCreateParams::TransactionTiming) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ACHTransferCreateParams::TransactionTiming::TaggedSymbol) }

        # A Transaction will be created immediately.
        SYNCHRONOUS =
          T.let(:synchronous, Increase::Models::ACHTransferCreateParams::TransactionTiming::TaggedSymbol)

        # A Transaction will be created when the funds settle at the Federal Reserve.
        ASYNCHRONOUS =
          T.let(:asynchronous, Increase::Models::ACHTransferCreateParams::TransactionTiming::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::ACHTransferCreateParams::TransactionTiming::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
