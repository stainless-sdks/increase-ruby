# frozen_string_literal: true

module Increase
  module Resources
    class Accounts
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
        request[:body] = params
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
        request[:body] = params
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
        request[:query] = params
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
