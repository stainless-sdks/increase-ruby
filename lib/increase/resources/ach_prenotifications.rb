# frozen_string_literal: true

module Increase
  module Resources
    class ACHPrenotifications
      # Create an ACH Prenotification
      #
      # @param params [Increase::Models::ACHPrenotificationCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id The Increase identifier for the account that will send the transfer.
      #
      #   @option params [String] :account_number The account number for the destination account.
      #
      #   @option params [String] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #     destination account.
      #
      #   @option params [String] :addendum Additional information that will be sent to the recipient.
      #
      #   @option params [String] :company_descriptive_date The description of the date of the transfer.
      #
      #   @option params [String] :company_discretionary_data The data you choose to associate with the transfer.
      #
      #   @option params [String] :company_entry_description The description of the transfer you wish to be shown to the recipient.
      #
      #   @option params [String] :company_name The name by which the recipient knows you.
      #
      #   @option params [Symbol, Increase::Models::ACHPrenotificationCreateParams::CreditDebitIndicator] :credit_debit_indicator Whether the Prenotification is for a future debit or credit.
      #
      #   @option params [Date] :effective_date The transfer effective date in
      #     [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
      #
      #   @option params [String] :individual_id Your identifier for the transfer recipient.
      #
      #   @option params [String] :individual_name The name of the transfer recipient. This value is information and not verified
      #     by the recipient's bank.
      #
      #   @option params [Symbol, Increase::Models::ACHPrenotificationCreateParams::StandardEntryClassCode] :standard_entry_class_code The Standard Entry Class (SEC) code to use for the ACH Prenotification.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::ACHPrenotification]
      def create(params)
        parsed, options = Increase::Models::ACHPrenotificationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ach_prenotifications",
          body: parsed,
          model: Increase::Models::ACHPrenotification,
          options: options
        )
      end

      # Retrieve an ACH Prenotification
      #
      # @param ach_prenotification_id [String] The identifier of the ACH Prenotification to retrieve.
      #
      # @param params [Increase::Models::ACHPrenotificationRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::ACHPrenotification]
      def retrieve(ach_prenotification_id, params = {})
        @client.request(
          method: :get,
          path: ["ach_prenotifications/%1$s", ach_prenotification_id],
          model: Increase::Models::ACHPrenotification,
          options: params[:request_options]
        )
      end

      # List ACH Prenotifications
      #
      # @param params [Increase::Models::ACHPrenotificationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::ACHPrenotificationListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::ACHPrenotification>]
      def list(params = {})
        parsed, options = Increase::Models::ACHPrenotificationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "ach_prenotifications",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::ACHPrenotification,
          options: options
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
