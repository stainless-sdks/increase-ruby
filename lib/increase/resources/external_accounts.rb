# frozen_string_literal: true

module Increase
  module Resources
    class ExternalAccounts
      def initialize(client:)
        @client = client
      end

      # Create an External Account
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_number The account number for the destination account.
      # @option params [String] :description The name you choose for the Account.
      # @option params [String] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      # @option params [Symbol] :account_holder The type of entity that owns the External Account.
      # @option params [Symbol] :funding The type of the destination account. Defaults to `checking`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ExternalAccount]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/external_accounts"
        body_params = [:account_number, :description, :routing_number, :account_holder, :funding]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::ExternalAccount
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve an External Account
      #
      # @param external_account_id [String] The identifier of the External Account.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ExternalAccount]
      def retrieve(external_account_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/external_accounts/#{external_account_id}"
        request[:model] = Increase::Models::ExternalAccount
        request.merge!(opts)
        @client.request(request)
      end

      # Update an External Account
      #
      # @param external_account_id [String] The external account identifier.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :account_holder The type of entity that owns the External Account.
      # @option params [String] :description The description you choose to give the external account.
      # @option params [Symbol] :funding The funding type of the External Account.
      # @option params [Symbol] :status The status of the External Account.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ExternalAccount]
      def update(external_account_id, params = {}, opts = {})
        request = {}
        request[:method] = :patch
        request[:path] = "/external_accounts/#{external_account_id}"
        body_params = [:account_holder, :description, :funding, :status]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::ExternalAccount
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
