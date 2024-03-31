# frozen_string_literal: true

module Increase
  module Resources
    class AccountNumbers
      def initialize(client:)
        @client = client
      end

      # Create an Account Number
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The Account the Account Number should belong to.
      # @option params [String] :name The name you choose for the Account Number.
      # @option params [InboundACH] :inbound_ach Options related to how this Account Number should handle inbound ACH transfers.
      # @option params [InboundChecks] :inbound_checks Options related to how this Account Number should handle inbound check
      #   withdrawals.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountNumber]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/account_numbers"
        req[:body] = params
        req[:model] = Increase::Models::AccountNumber
        @client.request(req, opts)
      end

      # Retrieve an Account Number
      #
      # @param account_number_id [String] The identifier of the Account Number to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountNumber]
      def retrieve(account_number_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/account_numbers/#{account_number_id}"
        req[:model] = Increase::Models::AccountNumber
        @client.request(req, opts)
      end

      # Update an Account Number
      #
      # @param account_number_id [String] The identifier of the Account Number.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [InboundACH] :inbound_ach Options related to how this Account Number handles inbound ACH transfers.
      # @option params [InboundChecks] :inbound_checks Options related to how this Account Number should handle inbound check
      #   withdrawals.
      # @option params [String] :name The name you choose for the Account Number.
      # @option params [Symbol] :status This indicates if transfers can be made to the Account Number.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountNumber]
      def update(account_number_id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/account_numbers/#{account_number_id}"
        req[:body] = params
        req[:model] = Increase::Models::AccountNumber
        @client.request(req, opts)
      end
    end
  end
end
