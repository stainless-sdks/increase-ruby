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
      # @option params [String] :addendum Additional information that will be sent to the recipient.
      # @option params [String] :company_descriptive_date The description of the date of the transfer.
      # @option params [String] :company_discretionary_data The data you choose to associate with the transfer.
      # @option params [String] :company_entry_description The description of the transfer you wish to be shown to the recipient.
      # @option params [String] :company_name The name by which the recipient knows you.
      # @option params [Symbol] :credit_debit_indicator Whether the Prenotification is for a future debit or credit.
      # @option params [String] :effective_date The transfer effective date in
      #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
      # @option params [String] :individual_id Your identifier for the transfer recipient.
      # @option params [String] :individual_name The name of the transfer recipient. This value is information and not verified
      #   by the recipient's bank.
      # @option params [Symbol] :standard_entry_class_code The Standard Entry Class (SEC) code to use for the ACH Prenotification.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
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
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
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
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
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
    end
  end
end
