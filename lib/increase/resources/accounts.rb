# frozen_string_literal: true

module Increase
  module Resources
    class AccountsResource
      def initialize(client:)
        @client = client
      end

      # Create an Account
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :name The name you choose for the Account.
      # @option params [String] :entity_id The identifier for the Entity that will own the Account.
      # @option params [String] :informational_entity_id The identifier of an Entity that, while not owning the Account, is associated
      #   with its activity. Its relationship to your group must be `informational`.
      # @option params [String] :program_id The identifier for the Program that this Account falls under. Required if you
      #   operate more than one Program.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/accounts"
        body_params = [:name, :entity_id, :informational_entity_id, :program_id]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::Account
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve an Account
      #
      # @param account_id [String] The identifier of the Account to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def retrieve(account_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/accounts/#{account_id}"
        request[:model] = Increase::Models::Account
        request.merge!(opts)
        @client.request(request)
      end

      # Update an Account
      #
      # @param account_id [String] The identifier of the Account to update.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :name The new name of the Account.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def update(account_id, params = {}, opts = {})
        request = {}
        request[:method] = :patch
        request[:path] = "/accounts/#{account_id}"
        body_params = [:name]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::Account
        request.merge!(opts)
        @client.request(request)
      end

      # List Accounts
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :entity_id Filter Accounts for those belonging to the specified Entity.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [String] :informational_entity_id Filter Accounts for those belonging to the specified Entity as informational.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Symbol] :status Filter Accounts for those with the specified status.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/accounts"
        query_params = [
          :created_at,
          :cursor,
          :entity_id,
          :idempotency_key,
          :informational_entity_id,
          :limit,
          :status
        ]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::Account
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve an Account Balance
      #
      # @param account_id [String] The identifier of the Account to retrieve.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :at_time The moment to query the balance at. If not set, returns the current balances.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BalanceLookup]
      def balance(account_id, params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/accounts/#{account_id}/balance"
        query_params = [:at_time]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::BalanceLookup
        request.merge!(opts)
        @client.request(request)
      end

      # Close an Account
      #
      # @param account_id [String] The identifier of the Account to close. The account must have a zero balance.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def close(account_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/accounts/#{account_id}/close"
        request[:model] = Increase::Models::Account
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
