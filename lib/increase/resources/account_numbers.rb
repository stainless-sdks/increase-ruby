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

      # List Account Numbers
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Account Numbers to those belonging to the specified Account.
      # @option params [Symbol] :ach_debit_status The ACH Debit status to retrieve Account Numbers for.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Symbol] :status The status to retrieve Account Numbers for.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::AccountNumber>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/account_numbers"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::AccountNumber
        @client.request(req, opts)
      end
    end
  end
end
