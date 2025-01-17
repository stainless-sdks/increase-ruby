# frozen_string_literal: true

module Increase
  module Models
    class ACHTransferCreateParams < Increase::BaseModel
      # @!attribute account_id
      #   The Increase identifier for the account that will send the transfer.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   The transfer amount in USD cents. A positive amount originates a credit transfer pushing funds to the receiving account. A negative amount originates a debit transfer pulling funds from the receiving account.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute statement_descriptor
      #   A description you choose to give the transfer. This will be saved with the transfer details, displayed in the dashboard, and returned by the API. If `individual_name` and `company_name` are not explicitly set by this API, the `statement_descriptor` will be sent in those fields to the receiving bank to help the customer recognize the transfer. You are highly encouraged to pass `individual_name` and `company_name` instead of relying on this fallback.
      #
      #   @return [String]
      required :statement_descriptor, String

      # @!attribute account_number
      #   The account number for the destination account.
      #
      #   @return [String]
      optional :account_number, String

      # @!attribute addenda
      #   Additional information that will be sent to the recipient. This is included in the transfer data sent to the receiving bank.
      #
      #   @return [Increase::Models::ACHTransferCreateParams::Addenda]
      optional :addenda, -> { Increase::Models::ACHTransferCreateParams::Addenda }

      # @!attribute company_descriptive_date
      #   The description of the date of the transfer, usually in the format `YYMMDD`. This is included in the transfer data sent to the receiving bank.
      #
      #   @return [String]
      optional :company_descriptive_date, String

      # @!attribute company_discretionary_data
      #   The data you choose to associate with the transfer. This is included in the transfer data sent to the receiving bank.
      #
      #   @return [String]
      optional :company_discretionary_data, String

      # @!attribute company_entry_description
      #   A description of the transfer. This is included in the transfer data sent to the receiving bank.
      #
      #   @return [String]
      optional :company_entry_description, String

      # @!attribute company_name
      #   The name by which the recipient knows you. This is included in the transfer data sent to the receiving bank.
      #
      #   @return [String]
      optional :company_name, String

      # @!attribute destination_account_holder
      #   The type of entity that owns the account to which the ACH Transfer is being sent.
      #
      #   @return [Symbol, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder]
      optional :destination_account_holder,
               enum: -> { Increase::Models::ACHTransferCreateParams::DestinationAccountHolder }

      # @!attribute external_account_id
      #   The ID of an External Account to initiate a transfer to. If this parameter is provided, `account_number`, `routing_number`, and `funding` must be absent.
      #
      #   @return [String]
      optional :external_account_id, String

      # @!attribute funding
      #   The type of the account to which the transfer will be sent.
      #
      #   @return [Symbol, Increase::Models::ACHTransferCreateParams::Funding]
      optional :funding, enum: -> { Increase::Models::ACHTransferCreateParams::Funding }

      # @!attribute individual_id
      #   Your identifier for the transfer recipient.
      #
      #   @return [String]
      optional :individual_id, String

      # @!attribute individual_name
      #   The name of the transfer recipient. This value is informational and not verified by the recipient's bank.
      #
      #   @return [String]
      optional :individual_name, String

      # @!attribute preferred_effective_date
      #   Configuration for how the effective date of the transfer will be set. This determines same-day vs future-dated settlement timing. If not set, defaults to a `settlement_schedule` of `same_day`. If set, exactly one of the child attributes must be set.
      #
      #   @return [Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate]
      optional :preferred_effective_date,
               -> { Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate }

      # @!attribute require_approval
      #   Whether the transfer requires explicit approval via the dashboard or API.
      #
      #   @return [Boolean]
      optional :require_approval, Increase::BooleanModel

      # @!attribute routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the destination account.
      #
      #   @return [String]
      optional :routing_number, String

      # @!attribute standard_entry_class_code
      #   The Standard Entry Class (SEC) code to use for the transfer.
      #
      #   @return [Symbol, Increase::Models::ACHTransferCreateParams::StandardEntryClassCode]
      optional :standard_entry_class_code,
               enum: -> { Increase::Models::ACHTransferCreateParams::StandardEntryClassCode }

      # @!attribute transaction_timing
      #   The timing of the transaction.
      #
      #   @return [Symbol, Increase::Models::ACHTransferCreateParams::TransactionTiming]
      optional :transaction_timing, enum: -> { Increase::Models::ACHTransferCreateParams::TransactionTiming }

      # @!parse
      #   # @param account_id [String] The Increase identifier for the account that will send the transfer.
      #   #
      #   # @param amount [Integer] The transfer amount in USD cents. A positive amount originates a credit transfer
      #   #   pushing funds to the receiving account. A negative amount originates a debit
      #   #   transfer pulling funds from the receiving account.
      #   #
      #   # @param statement_descriptor [String] A description you choose to give the transfer. This will be saved with the
      #   #   transfer details, displayed in the dashboard, and returned by the API. If
      #   #   `individual_name` and `company_name` are not explicitly set by this API, the
      #   #   `statement_descriptor` will be sent in those fields to the receiving bank to
      #   #   help the customer recognize the transfer. You are highly encouraged to pass
      #   #   `individual_name` and `company_name` instead of relying on this fallback.
      #   #
      #   # @param account_number [String] The account number for the destination account.
      #   #
      #   # @param addenda [Increase::Models::ACHTransferCreateParams::Addenda] Additional information that will be sent to the recipient. This is included in
      #   #   the transfer data sent to the receiving bank.
      #   #
      #   # @param company_descriptive_date [String] The description of the date of the transfer, usually in the format `YYMMDD`.
      #   #   This is included in the transfer data sent to the receiving bank.
      #   #
      #   # @param company_discretionary_data [String] The data you choose to associate with the transfer. This is included in the
      #   #   transfer data sent to the receiving bank.
      #   #
      #   # @param company_entry_description [String] A description of the transfer. This is included in the transfer data sent to the
      #   #   receiving bank.
      #   #
      #   # @param company_name [String] The name by which the recipient knows you. This is included in the transfer data
      #   #   sent to the receiving bank.
      #   #
      #   # @param destination_account_holder [String] The type of entity that owns the account to which the ACH Transfer is being
      #   #   sent.
      #   #
      #   # @param external_account_id [String] The ID of an External Account to initiate a transfer to. If this parameter is
      #   #   provided, `account_number`, `routing_number`, and `funding` must be absent.
      #   #
      #   # @param funding [String] The type of the account to which the transfer will be sent.
      #   #
      #   # @param individual_id [String] Your identifier for the transfer recipient.
      #   #
      #   # @param individual_name [String] The name of the transfer recipient. This value is informational and not verified
      #   #   by the recipient's bank.
      #   #
      #   # @param preferred_effective_date [Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate] Configuration for how the effective date of the transfer will be set. This
      #   #   determines same-day vs future-dated settlement timing. If not set, defaults to a
      #   #   `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
      #   #   must be set.
      #   #
      #   # @param require_approval [Boolean] Whether the transfer requires explicit approval via the dashboard or API.
      #   #
      #   # @param routing_number [String] The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   #   destination account.
      #   #
      #   # @param standard_entry_class_code [String] The Standard Entry Class (SEC) code to use for the transfer.
      #   #
      #   # @param transaction_timing [String] The timing of the transaction.
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
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # addenda => {
      #   category: enum: Increase::Models::ACHTransferCreateParams::Addenda::Category,
      #   freeform: Increase::Models::ACHTransferCreateParams::Addenda::Freeform,
      #   payment_order_remittance_advice: Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice
      # }
      # ```
      class Addenda < Increase::BaseModel
        # @!attribute category
        #   The type of addenda to pass with the transfer.
        #
        #   @return [Symbol, Increase::Models::ACHTransferCreateParams::Addenda::Category]
        required :category, enum: -> { Increase::Models::ACHTransferCreateParams::Addenda::Category }

        # @!attribute freeform
        #   Unstructured `payment_related_information` passed through with the transfer.
        #
        #   @return [Increase::Models::ACHTransferCreateParams::Addenda::Freeform]
        optional :freeform, -> { Increase::Models::ACHTransferCreateParams::Addenda::Freeform }

        # @!attribute payment_order_remittance_advice
        #   Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
        #
        #   @return [Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice]
        optional :payment_order_remittance_advice,
                 -> { Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice }

        # @!parse
        #   # Additional information that will be sent to the recipient. This is included in
        #   #   the transfer data sent to the receiving bank.
        #   #
        #   # @param category [String] The type of addenda to pass with the transfer.
        #   #
        #   # @param freeform [Increase::Models::ACHTransferCreateParams::Addenda::Freeform] Unstructured `payment_related_information` passed through with the transfer.
        #   #
        #   # @param payment_order_remittance_advice [Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice] Structured ASC X12 820 remittance advice records. Please reach out to
        #   #   [support@increase.com](mailto:support@increase.com) for more information.
        #   #
        #   def initialize(category:, freeform: nil, payment_order_remittance_advice: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # The type of addenda to pass with the transfer.
        #
        # @example
        # ```ruby
        # case category
        # in :freeform
        #   # ...
        # in :payment_order_remittance_advice
        #   # ...
        # end
        # ```
        class Category < Increase::Enum
          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = :freeform

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE = :payment_order_remittance_advice

          finalize!
        end

        # @example
        # ```ruby
        # freeform => {
        #   entries: -> { Increase::ArrayOf[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry] === _1 }
        # }
        # ```
        class Freeform < Increase::BaseModel
          # @!attribute entries
          #   Each entry represents an addendum sent with the transfer. Please reach out to [support@increase.com](mailto:support@increase.com) to send more than one addendum.
          #
          #   @return [Array<Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry>]
          required :entries,
                   -> {
                     Increase::ArrayOf[Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry]
                   }

          # @!parse
          #   # Unstructured `payment_related_information` passed through with the transfer.
          #   #
          #   # @param entries [Array<Increase::Models::ACHTransferCreateParams::Addenda::Freeform::Entry>] Each entry represents an addendum sent with the transfer. Please reach out to
          #   #   [support@increase.com](mailto:support@increase.com) to send more than one
          #   #   addendum.
          #   #
          #   def initialize(entries:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # entry => {
          #   payment_related_information: String
          # }
          # ```
          class Entry < Increase::BaseModel
            # @!attribute payment_related_information
            #   The payment related information passed in the addendum.
            #
            #   @return [String]
            required :payment_related_information, String

            # @!parse
            #   # @param payment_related_information [String] The payment related information passed in the addendum.
            #   #
            #   def initialize(payment_related_information:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end
        end

        # @example
        # ```ruby
        # payment_order_remittance_advice => {
        #   invoices: -> { Increase::ArrayOf[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice] === _1 }
        # }
        # ```
        class PaymentOrderRemittanceAdvice < Increase::BaseModel
          # @!attribute invoices
          #   ASC X12 RMR records for this specific transfer.
          #
          #   @return [Array<Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice>]
          required :invoices,
                   -> {
                     Increase::ArrayOf[Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice]
                   }

          # @!parse
          #   # Structured ASC X12 820 remittance advice records. Please reach out to
          #   #   [support@increase.com](mailto:support@increase.com) for more information.
          #   #
          #   # @param invoices [Array<Increase::Models::ACHTransferCreateParams::Addenda::PaymentOrderRemittanceAdvice::Invoice>] ASC X12 RMR records for this specific transfer.
          #   #
          #   def initialize(invoices:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # invoice => {
          #   invoice_number: String,
          #   paid_amount: Integer
          # }
          # ```
          class Invoice < Increase::BaseModel
            # @!attribute invoice_number
            #   The invoice number for this reference, determined in advance with the receiver.
            #
            #   @return [String]
            required :invoice_number, String

            # @!attribute paid_amount
            #   The amount that was paid for this invoice in the minor unit of its currency. For dollars, for example, this is cents.
            #
            #   @return [Integer]
            required :paid_amount, Integer

            # @!parse
            #   # @param invoice_number [String] The invoice number for this reference, determined in advance with the receiver.
            #   #
            #   # @param paid_amount [Integer] The amount that was paid for this invoice in the minor unit of its currency. For
            #   #   dollars, for example, this is cents.
            #   #
            #   def initialize(invoice_number:, paid_amount:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end
        end
      end

      # The type of entity that owns the account to which the ACH Transfer is being sent.
      #
      # @example
      # ```ruby
      # case destination_account_holder
      # in :business
      #   # ...
      # in :individual
      #   # ...
      # in :unknown
      #   # ...
      # end
      # ```
      class DestinationAccountHolder < Increase::Enum
        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        finalize!
      end

      # The type of the account to which the transfer will be sent.
      #
      # @example
      # ```ruby
      # case funding
      # in :checking
      #   # ...
      # in :savings
      #   # ...
      # end
      # ```
      class Funding < Increase::Enum
        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        finalize!
      end

      # @example
      # ```ruby
      # preferred_effective_date => {
      #   date: Date,
      #   settlement_schedule: enum: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule
      # }
      # ```
      class PreferredEffectiveDate < Increase::BaseModel
        # @!attribute date
        #   A specific date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format to use as the effective date when submitting this transfer.
        #
        #   @return [Date]
        optional :date, Date

        # @!attribute settlement_schedule
        #   A schedule by which Increase will choose an effective date for the transfer.
        #
        #   @return [Symbol, Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule]
        optional :settlement_schedule,
                 enum: -> {
                   Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate::SettlementSchedule
                 }

        # @!parse
        #   # Configuration for how the effective date of the transfer will be set. This
        #   #   determines same-day vs future-dated settlement timing. If not set, defaults to a
        #   #   `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
        #   #   must be set.
        #   #
        #   # @param date [String] A specific date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format to
        #   #   use as the effective date when submitting this transfer.
        #   #
        #   # @param settlement_schedule [String] A schedule by which Increase will choose an effective date for the transfer.
        #   #
        #   def initialize(date: nil, settlement_schedule: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # A schedule by which Increase will choose an effective date for the transfer.
        #
        # @example
        # ```ruby
        # case settlement_schedule
        # in :same_day
        #   # ...
        # in :future_dated
        #   # ...
        # end
        # ```
        class SettlementSchedule < Increase::Enum
          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted. This is necessary, but not sufficient for the transfer to be settled same-day: it must also be submitted before the last same-day cutoff and be less than or equal to $1,000.000.00.
          SAME_DAY = :same_day

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED = :future_dated

          finalize!
        end
      end

      # The Standard Entry Class (SEC) code to use for the transfer.
      #
      # @example
      # ```ruby
      # case standard_entry_class_code
      # in :corporate_credit_or_debit
      #   # ...
      # in :corporate_trade_exchange
      #   # ...
      # in :prearranged_payments_and_deposit
      #   # ...
      # in :internet_initiated
      #   # ...
      # end
      # ```
      class StandardEntryClassCode < Increase::Enum
        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated

        finalize!
      end

      # The timing of the transaction.
      #
      # @example
      # ```ruby
      # case transaction_timing
      # in :synchronous
      #   # ...
      # in :asynchronous
      #   # ...
      # end
      # ```
      class TransactionTiming < Increase::Enum
        # A Transaction will be created immediately.
        SYNCHRONOUS = :synchronous

        # A Transaction will be created when the funds settle at the Federal Reserve.
        ASYNCHRONOUS = :asynchronous

        finalize!
      end
    end
  end
end
