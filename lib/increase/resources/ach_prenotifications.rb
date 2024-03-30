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
        request = {}
        request[:method] = :post
        request[:path] = "/ach_prenotifications"
        request[:body] = params
        request[:model] = Increase::Models::ACHPrenotification
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve an ACH Prenotification
      #
      # @param ach_prenotification_id [String] The identifier of the ACH Prenotification to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHPrenotification]
      def retrieve(ach_prenotification_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/ach_prenotifications/#{ach_prenotification_id}"
        request[:model] = Increase::Models::ACHPrenotification
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
