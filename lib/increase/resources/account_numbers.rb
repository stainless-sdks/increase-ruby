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
      # @option params [Hash] :inbound_ach Options related to how this Account Number should handle inbound ACH transfers.
      # @option params [Hash] :inbound_checks Options related to how this Account Number should handle inbound check
      #   withdrawals.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountNumber]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/account_numbers"
        body_params = [:account_id, :name, :inbound_ach, :inbound_checks]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::AccountNumber
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve an Account Number
      #
      # @param account_number_id [String] The identifier of the Account Number to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountNumber]
      def retrieve(account_number_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/account_numbers/#{account_number_id}"
        request[:model] = Increase::Models::AccountNumber
        request.merge!(opts)
        @client.request(request)
      end

      # Update an Account Number
      #
      # @param account_number_id [String] The identifier of the Account Number.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :inbound_ach Options related to how this Account Number handles inbound ACH transfers.
      # @option params [Hash] :inbound_checks Options related to how this Account Number should handle inbound check
      #   withdrawals.
      # @option params [String] :name The name you choose for the Account Number.
      # @option params [Symbol] :status This indicates if transfers can be made to the Account Number.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountNumber]
      def update(account_number_id, params = {}, opts = {})
        request = {}
        request[:method] = :patch
        request[:path] = "/account_numbers/#{account_number_id}"
        body_params = [:inbound_ach, :inbound_checks, :name, :status]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::AccountNumber
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
