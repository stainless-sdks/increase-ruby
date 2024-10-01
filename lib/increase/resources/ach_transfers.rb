# frozen_string_literal: true

module Increase
  module Resources
    class ACHTransfers
      def initialize(client:)
        @client = client
      end

      # Create an ACH Transfer
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The Increase identifier for the account that will send the transfer.
      # @option params [Integer] :amount The transfer amount in cents. A positive amount originates a credit transfer
      #   pushing funds to the receiving account. A negative amount originates a debit
      #   transfer pulling funds from the receiving account.
      # @option params [String] :statement_descriptor A description you choose to give the transfer. This will be saved with the
      #   transfer details, displayed in the dashboard, and returned by the API. If
      #   `individual_name` and `company_name` are not explicitly set by this API, the
      #   `statement_descriptor` will be sent in those fields to the receiving bank to
      #   help the customer recognize the transfer. You are highly encouraged to pass
      #   `individual_name` and `company_name` instead of relying on this fallback.
      # @option params [String, nil] :account_number The account number for the destination account.
      # @option params [Addenda, nil] :addenda Additional information that will be sent to the recipient. This is included in
      #   the transfer data sent to the receiving bank.
      # @option params [String, nil] :company_descriptive_date The description of the date of the transfer, usually in the format `YYMMDD`.
      #   This is included in the transfer data sent to the receiving bank.
      # @option params [String, nil] :company_discretionary_data The data you choose to associate with the transfer. This is included in the
      #   transfer data sent to the receiving bank.
      # @option params [String, nil] :company_entry_description A description of the transfer. This is included in the transfer data sent to the
      #   receiving bank.
      # @option params [String, nil] :company_name The name by which the recipient knows you. This is included in the transfer data
      #   sent to the receiving bank.
      # @option params [Symbol, DestinationAccountHolder, nil] :destination_account_holder The type of entity that owns the account to which the ACH Transfer is being
      #   sent.
      # @option params [String, nil] :external_account_id The ID of an External Account to initiate a transfer to. If this parameter is
      #   provided, `account_number`, `routing_number`, and `funding` must be absent.
      # @option params [Symbol, Funding, nil] :funding The type of the account to which the transfer will be sent.
      # @option params [String, nil] :individual_id Your identifier for the transfer recipient.
      # @option params [String, nil] :individual_name The name of the transfer recipient. This value is informational and not verified
      #   by the recipient's bank.
      # @option params [PreferredEffectiveDate, nil] :preferred_effective_date Configuration for how the effective date of the transfer will be set. This
      #   determines same-day vs future-dated settlement timing. If not set, defaults to a
      #   `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
      #   must be set.
      # @option params [Boolean, nil] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      # @option params [String, nil] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      # @option params [Symbol, StandardEntryClassCode, nil] :standard_entry_class_code The Standard Entry Class (SEC) code to use for the transfer.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/ach_transfers"
        req[:body] = params
        req[:model] = Increase::Models::ACHTransfer
        @client.request(req, opts)
      end

      # Retrieve an ACH Transfer
      #
      # @param ach_transfer_id [String] The identifier of the ACH Transfer.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def retrieve(ach_transfer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/ach_transfers/#{ach_transfer_id}"
        req[:model] = Increase::Models::ACHTransfer
        @client.request(req, opts)
      end

      # List ACH Transfers
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter ACH Transfers to those that originated from the specified Account.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :external_account_id Filter ACH Transfers to those made to the specified External Account.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::ACHTransfer>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/ach_transfers"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::ACHTransfer
        @client.request(req, opts)
      end

      # Approves an ACH Transfer in a pending_approval state.
      #
      # @param ach_transfer_id [String] The identifier of the ACH Transfer to approve.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def approve(ach_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/ach_transfers/#{ach_transfer_id}/approve"
        req[:model] = Increase::Models::ACHTransfer
        @client.request(req, opts)
      end

      # Cancels an ACH Transfer in a pending_approval state.
      #
      # @param ach_transfer_id [String] The identifier of the pending ACH Transfer to cancel.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def cancel(ach_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/ach_transfers/#{ach_transfer_id}/cancel"
        req[:model] = Increase::Models::ACHTransfer
        @client.request(req, opts)
      end

      class Addenda < BaseModel
        # @!attribute [rw] category
        #   The type of addenda to pass with the transfer.
        #   @return [Symbol, Addenda::Category]
        required :category, enum: -> { Addenda::Category }

        # @!attribute [rw] freeform
        #   Unstructured `payment_related_information` passed through with the transfer.
        #   @return [Addenda::Freeform]
        optional :freeform, -> { Addenda::Freeform }

        # @!attribute [rw] payment_order_remittance_advice
        #   Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
        #   @return [Addenda::PaymentOrderRemittanceAdvice]
        optional :payment_order_remittance_advice, -> { Addenda::PaymentOrderRemittanceAdvice }

        # The type of addenda to pass with the transfer.
        class Category < Increase::Enum
          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = :freeform

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE = :payment_order_remittance_advice
        end

        class Freeform < BaseModel
          # @!attribute [rw] entries
          #   Each entry represents an addendum sent with the transfer. Please reach out to [support@increase.com](mailto:support@increase.com) to send more than one addendum.
          #   @return [Array<Addenda::Freeform::Entry>]
          required :entries, Increase::ArrayOf.new(-> { Addenda::Freeform::Entry })

          class Entry < BaseModel
            # @!attribute [rw] payment_related_information
            #   The payment related information passed in the addendum.
            #   @return [String]
            required :payment_related_information, String
          end
        end

        class PaymentOrderRemittanceAdvice < BaseModel
          # @!attribute [rw] invoices
          #   ASC X12 RMR records for this specific transfer.
          #   @return [Array<Addenda::PaymentOrderRemittanceAdvice::Invoice>]
          required :invoices, Increase::ArrayOf.new(-> { Addenda::PaymentOrderRemittanceAdvice::Invoice })

          class Invoice < BaseModel
            # @!attribute [rw] invoice_number
            #   The invoice number for this reference, determined in advance with the receiver.
            #   @return [String]
            required :invoice_number, String

            # @!attribute [rw] paid_amount
            #   The amount that was paid for this invoice in the minor unit of its currency. For dollars, for example, this is cents.
            #   @return [Integer]
            required :paid_amount, Integer
          end
        end
      end

      # The type of entity that owns the account to which the ACH Transfer is being sent.
      class DestinationAccountHolder < Increase::Enum
        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown
      end

      # The type of the account to which the transfer will be sent.
      class Funding < Increase::Enum
        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings
      end

      class PreferredEffectiveDate < BaseModel
        # @!attribute [rw] date
        #   A specific date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format to use as the effective date when submitting this transfer.
        #   @return [Date]
        optional :date, Date

        # @!attribute [rw] settlement_schedule
        #   A schedule by which Increase will choose an effective date for the transfer.
        #   @return [Symbol, PreferredEffectiveDate::SettlementSchedule]
        optional :settlement_schedule, enum: -> { PreferredEffectiveDate::SettlementSchedule }

        # A schedule by which Increase will choose an effective date for the transfer.
        class SettlementSchedule < Increase::Enum
          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted. This is necessary, but not sufficient for the transfer to be settled same-day: it must also be submitted before the last same-day cutoff and be less than or equal to $1,000.000.00.
          SAME_DAY = :same_day

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED = :future_dated
        end
      end

      # The Standard Entry Class (SEC) code to use for the transfer.
      class StandardEntryClassCode < Increase::Enum
        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated
      end

      class CreatedAt < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end
    end
  end
end
