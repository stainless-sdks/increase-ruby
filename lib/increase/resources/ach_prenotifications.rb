# frozen_string_literal: true

module Increase
  module Resources
    class ACHPrenotifications
      def initialize(client:)
        @client = client
      end

      # Create an ACH Prenotification
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The Increase identifier for the account that will send the transfer.
      # @option params [String] :account_number The account number for the destination account.
      # @option params [String] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      # @option params [String, nil] :addendum Additional information that will be sent to the recipient.
      # @option params [String, nil] :company_descriptive_date The description of the date of the transfer.
      # @option params [String, nil] :company_discretionary_data The data you choose to associate with the transfer.
      # @option params [String, nil] :company_entry_description The description of the transfer you wish to be shown to the recipient.
      # @option params [String, nil] :company_name The name by which the recipient knows you.
      # @option params [Symbol, CreditDebitIndicator, nil] :credit_debit_indicator Whether the Prenotification is for a future debit or credit.
      # @option params [Date, nil] :effective_date The transfer effective date in
      #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
      # @option params [String, nil] :individual_id Your identifier for the transfer recipient.
      # @option params [String, nil] :individual_name The name of the transfer recipient. This value is information and not verified
      #   by the recipient's bank.
      # @option params [Symbol, StandardEntryClassCode, nil] :standard_entry_class_code The Standard Entry Class (SEC) code to use for the ACH Prenotification.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHPrenotification]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/ach_prenotifications"
        req[:body] = params
        req[:model] = Increase::Models::ACHPrenotification
        @client.request(req, opts)
      end

      # Retrieve an ACH Prenotification
      #
      # @param ach_prenotification_id [String] The identifier of the ACH Prenotification to retrieve.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHPrenotification]
      def retrieve(ach_prenotification_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/ach_prenotifications/#{ach_prenotification_id}"
        req[:model] = Increase::Models::ACHPrenotification
        @client.request(req, opts)
      end

      # List ACH Prenotifications
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::ACHPrenotification>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/ach_prenotifications"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::ACHPrenotification
        @client.request(req, opts)
      end

      # Whether the Prenotification is for a future debit or credit.
      class CreditDebitIndicator < Increase::Enum
        # The Prenotification is for an anticipated credit.
        CREDIT = :credit

        # The Prenotification is for an anticipated debit.
        DEBIT = :debit
      end

      # The Standard Entry Class (SEC) code to use for the ACH Prenotification.
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
