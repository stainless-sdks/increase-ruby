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
        req = {}
        req[:method] = :post
        req[:path] = "/accounts"
        req[:body] = params
        req[:model] = Increase::Models::Account
        @client.request(req, opts)
      end

      # Retrieve an Account
      #
      # @param account_id [String] The identifier of the Account to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def retrieve(account_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/accounts/#{account_id}"
        req[:model] = Increase::Models::Account
        @client.request(req, opts)
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
        req = {}
        req[:method] = :patch
        req[:path] = "/accounts/#{account_id}"
        req[:body] = params
        req[:model] = Increase::Models::Account
        @client.request(req, opts)
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
        req = {}
        req[:method] = :get
        req[:path] = "/accounts/#{account_id}/balance"
        req[:query] = params
        req[:model] = Increase::Models::BalanceLookup
        @client.request(req, opts)
      end

      # Close an Account
      #
      # @param account_id [String] The identifier of the Account to close. The account must have a zero balance.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def close(account_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/accounts/#{account_id}/close"
        req[:model] = Increase::Models::Account
        @client.request(req, opts)
      end
    end
  end
end
