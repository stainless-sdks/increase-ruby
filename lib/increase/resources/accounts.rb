# frozen_string_literal: true

module Increase
  module Resources
    class Accounts
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Create an Account
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [String] :name The name you choose for the Account.
      #   @option params [String, nil] :entity_id The identifier for the Entity that will own the Account.
      #   @option params [String, nil] :informational_entity_id The identifier of an Entity that, while not owning the Account, is associated
      #     with its activity. Its relationship to your group must be `informational`.
      #   @option params [String, nil] :program_id The identifier for the Program that this Account falls under. Required if you
      #     operate more than one Program.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/accounts",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Account
        }
        @client.request(req, opts)
      end

      # Retrieve an Account
      #
      # @param account_id [String] The identifier of the Account to retrieve.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def retrieve(account_id, opts = {})
        req = {
          method: :get,
          path: "/accounts/#{account_id}",
          model: Increase::Models::Account
        }
        @client.request(req, opts)
      end

      # Update an Account
      #
      # @param account_id [String] The identifier of the Account to update.
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [String, nil] :name The new name of the Account.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def update(account_id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/accounts/#{account_id}",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Account
        }
        @client.request(req, opts)
      end

      # List Accounts
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [String, nil] :entity_id Filter Accounts for those belonging to the specified Entity.
      #   @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @option params [String, nil] :informational_entity_id Filter Accounts for those belonging to the specified Entity as informational.
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #   @option params [String, nil] :program_id Filter Accounts for those in a specific Program.
      #   @option params [Symbol, Status, nil] :status Filter Accounts for those with the specified status.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Account>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/accounts",
          query: params,
          page: Increase::Page,
          model: Increase::Models::Account
        }
        @client.request(req, opts)
      end

      # Retrieve an Account Balance
      #
      # @param account_id [String] The identifier of the Account to retrieve.
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [Time, nil] :at_time The moment to query the balance at. If not set, returns the current balances.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BalanceLookup]
      def balance(account_id, params = {}, opts = {})
        req = {
          method: :get,
          path: "/accounts/#{account_id}/balance",
          query: params,
          model: Increase::Models::BalanceLookup
        }
        @client.request(req, opts)
      end

      # Close an Account
      #
      # @param account_id [String] The identifier of the Account to close. The account must have a zero balance.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      def close(account_id, opts = {})
        req = {
          method: :post,
          path: "/accounts/#{account_id}/close",
          model: Increase::Models::Account
        }
        @client.request(req, opts)
      end
    end
  end
end
