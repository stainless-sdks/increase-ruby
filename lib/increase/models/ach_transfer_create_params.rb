# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::ACHTransfers#create
    class ACHTransferCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute statement_descriptor
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/statement_descriptor
      #
      #   @return [String]
      required :statement_descriptor, String

      # @!attribute [r] account_number
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/account_number
      #
      #   @return [String, nil]
      optional :account_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_number

      # @!attribute [r] addenda
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/addenda
      #
      #   @return [Increase::Models::ACHTransferCreateParams::Addenda, nil]
      optional :addenda, -> { Increase::Models::ACHTransferCreateParams::Addenda }

      # @!parse
      #   # @return [Increase::Models::ACHTransferCreateParams::Addenda]
      #   attr_writer :addenda

      # @!attribute [r] company_descriptive_date
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/company_descriptive_date
      #
      #   @return [String, nil]
      optional :company_descriptive_date, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company_descriptive_date

      # @!attribute [r] company_discretionary_data
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/company_discretionary_data
      #
      #   @return [String, nil]
      optional :company_discretionary_data, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company_discretionary_data

      # @!attribute [r] company_entry_description
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/company_entry_description
      #
      #   @return [String, nil]
      optional :company_entry_description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company_entry_description

      # @!attribute [r] company_name
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/company_name
      #
      #   @return [String, nil]
      optional :company_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :company_name

      # @!attribute [r] destination_account_holder
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/destination_account_holder
      #
      #   @return [Symbol, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder, nil]
      optional :destination_account_holder,
               enum: -> { Increase::Models::ACHTransferCreateParams::DestinationAccountHolder }

      # @!parse
      #   # @return [Symbol, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder]
      #   attr_writer :destination_account_holder

      # @!attribute [r] external_account_id
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/external_account_id
      #
      #   @return [String, nil]
      optional :external_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_account_id

      # @!attribute [r] funding
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/funding
      #
      #   @return [Symbol, Increase::Models::ACHTransferCreateParams::Funding, nil]
      optional :funding, enum: -> { Increase::Models::ACHTransferCreateParams::Funding }

      # @!parse
      #   # @return [Symbol, Increase::Models::ACHTransferCreateParams::Funding]
      #   attr_writer :funding

      # @!attribute [r] individual_id
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/individual_id
      #
      #   @return [String, nil]
      optional :individual_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :individual_id

      # @!attribute [r] individual_name
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/individual_name
      #
      #   @return [String, nil]
      optional :individual_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :individual_name

      # @!attribute [r] preferred_effective_date
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date
      #
      #   @return [Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate, nil]
      optional :preferred_effective_date,
               -> { Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate }

      # @!parse
      #   # @return [Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate]
      #   attr_writer :preferred_effective_date

      # @!attribute [r] require_approval
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/require_approval
      #
      #   @return [Boolean, nil]
      optional :require_approval, Increase::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :require_approval

      # @!attribute [r] routing_number
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/routing_number
      #
      #   @return [String, nil]
      optional :routing_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :routing_number

      # @!attribute [r] standard_entry_class_code
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/standard_entry_class_code
      #
      #   @return [Symbol, Increase::Models::ACHTransferCreateParams::StandardEntryClassCode, nil]
      optional :standard_entry_class_code,
               enum: -> { Increase::Models::ACHTransferCreateParams::StandardEntryClassCode }

      # @!parse
      #   # @return [Symbol, Increase::Models::ACHTransferCreateParams::StandardEntryClassCode]
      #   attr_writer :standard_entry_class_code

      # @!attribute [r] transaction_timing
      #   #/components/schemas/create_an_ach_transfer_parameters/properties/transaction_timing
      #
      #   @return [Symbol, Increase::Models::ACHTransferCreateParams::TransactionTiming, nil]
      optional :transaction_timing, enum: -> { Increase::Models::ACHTransferCreateParams::TransactionTiming }

      # @!parse
      #   # @return [Symbol, Increase::Models::ACHTransferCreateParams::TransactionTiming]
      #   attr_writer :transaction_timing

      # @!parse
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param statement_descriptor [String]
      #   # @param account_number [String]
      #   # @param addenda [Increase::Models::ACHTransferCreateParams::Addenda]
      #   # @param company_descriptive_date [String]
      #   # @param company_discretionary_data [String]
      #   # @param company_entry_description [String]
      #   # @param company_name [String]
      #   # @param destination_account_holder [Symbol, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder]
      #   # @param external_account_id [String]
      #   # @param funding [Symbol, Increase::Models::ACHTransferCreateParams::Funding]
      #   # @param individual_id [String]
      #   # @param individual_name [String]
      #   # @param preferred_effective_date [Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate]
      #   # @param require_approval [Boolean]
      #   # @param routing_number [String]
      #   # @param standard_entry_class_code [Symbol, Increase::Models::ACHTransferCreateParams::StandardEntryClassCode]
      #   # @param transaction_timing [Symbol, Increase::Models::ACHTransferCreateParams::TransactionTiming]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_id:,
      #     amount:,
      #     statement_descriptor:,
      #     account_number: nil,
      #     addenda: nil,
      #     company_descriptive_date: nil,
      #     company_discretionary_data: nil,
      #     company_entry_description: nil,
      #     company_name: nil,
      #     destination_account_holder: nil,
      #     external_account_id: nil,
      #     funding: nil,
      #     individual_id: nil,
      #     individual_name: nil,
      #     preferred_effective_date: nil,
      #     require_approval: nil,
      #     routing_number: nil,
      #     standard_entry_class_code: nil,
      #     transaction_timing: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Addenda < Increase::Internal::Type::BaseModel
        # @!attribute category
        #   #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/category
        #
        #   @return [Symbol, Increase::Models::ACHTransferCreateParams::Addenda::Category]
        required :category, enum: -> { Increase::Models::ACHTransferCreateParams::Addenda::Category }

        # @!attribute [r] freeform
        #   #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/freeform
        #
        #   @return [Increase::Models::ACHTransferCreateParams::Addenda::Freeform, nil]
        optional :freeform, -> { Increase::Models::ACHTransferCreateParams::Addenda::Freeform }

        # @!parse
        #   # @return [Increase::Models::ACHTransferCreateParams::Addenda::Freeform]
        #   attr_writer :freeform

        # @!attribute [r] payment_order_remittance_advice
        #   #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice
        #
        #   @return [Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice, nil]
        optional :payment_order_remittance_advice,
                 -> { Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice }

        # @!parse
        #   # @return [Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice]
        #   attr_writer :payment_order_remittance_advice

        # @!parse
        #   # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda
        #   #
        #   # @param category [Symbol, Increase::Models::ACHTransferCreateParams::Addenda::Category]
        #   # @param freeform [Increase::Models::ACHTransferCreateParams::Addenda::Freeform]
        #   # @param payment_order_remittance_advice [Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice]
        #   #
        #   def initialize(category:, freeform: nil, payment_order_remittance_advice: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/category
        #
        # @see Increase::Models::ACHTransferCreateParams::Addenda#category
        module Category
          extend Increase::Internal::Type::Enum

          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = :freeform

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE = :payment_order_remittance_advice

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::ACHTransferCreateParams::Addenda#freeform
        class Freeform < Increase::Internal::Type::BaseModel
          # @!attribute entries
          #   #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/freeform/properties/entries
          #
          #   @return [Array<Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry>]
          required :entries,
                   -> { Increase::Internal::Type::ArrayOf[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry] }

          # @!parse
          #   # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/freeform
          #   #
          #   # @param entries [Array<Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry>]
          #   #
          #   def initialize(entries:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          class Entry < Increase::Internal::Type::BaseModel
            # @!attribute payment_related_information
            #   #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/freeform/properties/entries/items/properties/payment_related_information
            #
            #   @return [String]
            required :payment_related_information, String

            # @!parse
            #   # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/freeform/properties/entries/items
            #   #
            #   # @param payment_related_information [String]
            #   #
            #   def initialize(payment_related_information:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end
        end

        # @see Increase::Models::ACHTransferCreateParams::Addenda#payment_order_remittance_advice
        class PaymentOrderRemittanceAdvice < Increase::Internal::Type::BaseModel
          # @!attribute invoices
          #   #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice/properties/invoices
          #
          #   @return [Array<Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice>]
          required :invoices,
                   -> { Increase::Internal::Type::ArrayOf[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice] }

          # @!parse
          #   # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice
          #   #
          #   # @param invoices [Array<Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice>]
          #   #
          #   def initialize(invoices:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          class Invoice < Increase::Internal::Type::BaseModel
            # @!attribute invoice_number
            #   #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice/properties/invoices/items/properties/invoice_number
            #
            #   @return [String]
            required :invoice_number, String

            # @!attribute paid_amount
            #   #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice/properties/invoices/items/properties/paid_amount
            #
            #   @return [Integer]
            required :paid_amount, Integer

            # @!parse
            #   # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda/properties/payment_order_remittance_advice/properties/invoices/items
            #   #
            #   # @param invoice_number [String]
            #   # @param paid_amount [Integer]
            #   #
            #   def initialize(invoice_number:, paid_amount:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end
        end
      end

      # #/components/schemas/create_an_ach_transfer_parameters/properties/destination_account_holder
      module DestinationAccountHolder
        extend Increase::Internal::Type::Enum

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/create_an_ach_transfer_parameters/properties/funding
      module Funding
        extend Increase::Internal::Type::Enum

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class PreferredEffectiveDate < Increase::Internal::Type::BaseModel
        # @!attribute [r] date
        #   #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date/properties/date
        #
        #   @return [Date, nil]
        optional :date, Date

        # @!parse
        #   # @return [Date]
        #   attr_writer :date

        # @!attribute [r] settlement_schedule
        #   #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date/properties/settlement_schedule
        #
        #   @return [Symbol, Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule, nil]
        optional :settlement_schedule,
                 enum: -> { Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule }

        # @!parse
        #   # @return [Symbol, Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule]
        #   attr_writer :settlement_schedule

        # @!parse
        #   # #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date
        #   #
        #   # @param date [Date]
        #   # @param settlement_schedule [Symbol, Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule]
        #   #
        #   def initialize(date: nil, settlement_schedule: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date/properties/settlement_schedule
        #
        # @see Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate#settlement_schedule
        module SettlementSchedule
          extend Increase::Internal::Type::Enum

          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted. This is necessary, but not sufficient for the transfer to be settled same-day: it must also be submitted before the last same-day cutoff and be less than or equal to $1,000.000.00.
          SAME_DAY = :same_day

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED = :future_dated

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/create_an_ach_transfer_parameters/properties/standard_entry_class_code
      module StandardEntryClassCode
        extend Increase::Internal::Type::Enum

        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/create_an_ach_transfer_parameters/properties/transaction_timing
      module TransactionTiming
        extend Increase::Internal::Type::Enum

        # A Transaction will be created immediately.
        SYNCHRONOUS = :synchronous

        # A Transaction will be created when the funds settle at the Federal Reserve.
        ASYNCHRONOUS = :asynchronous

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
