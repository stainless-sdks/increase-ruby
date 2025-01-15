# frozen_string_literal: true

module Increase
  module Resources
    class Accounts
      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Create an Account
      #
      # @param params [Increase::Models::AccountCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :name The name you choose for the Account.
      #
      #   @option params [String] :entity_id The identifier for the Entity that will own the Account.
      #
      #   @option params [String] :informational_entity_id The identifier of an Entity that, while not owning the Account, is associated
      #     with its activity. Its relationship to your group must be `informational`.
      #
      #   @option params [String] :program_id The identifier for the Program that this Account falls under. Required if you
      #     operate more than one Program.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      #
      def create(params = {}, opts = {})
        parsed = Increase::Models::AccountCreateParams.dump(params)
        req = {
          method: :post,
          path: "accounts",
          body: parsed,
          model: Increase::Models::Account
        }
        @client.request(req, opts)
      end

      # Retrieve an Account
      #
      # @param account_id [String] The identifier of the Account to retrieve.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      #
      def retrieve(account_id, opts = {})
        req = {
          method: :get,
          path: ["accounts/%0s", account_id],
          model: Increase::Models::Account
        }
        @client.request(req, opts)
      end

      # Update an Account
      #
      # @param account_id [String] The identifier of the Account to update.
      #
      # @param params [Increase::Models::AccountUpdateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :name The new name of the Account.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      #
      def update(account_id, params = {}, opts = {})
        parsed = Increase::Models::AccountUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["accounts/%0s", account_id],
          body: parsed,
          model: Increase::Models::Account
        }
        @client.request(req, opts)
      end

      # List Accounts
      #
      # @param params [Increase::Models::AccountListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Increase::Models::AccountListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :entity_id Filter Accounts for those belonging to the specified Entity.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [String] :informational_entity_id Filter Accounts for those belonging to the specified Entity as informational.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [String] :program_id Filter Accounts for those in a specific Program.
      #
      #   @option params [Symbol, Increase::Models::AccountListParams::Status] :status Filter Accounts for those with the specified status.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Account>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::AccountListParams.dump(params)
        req = {
          method: :get,
          path: "accounts",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Account
        }
        @client.request(req, opts)
      end

      # Retrieve an Account Balance
      #
      # @param account_id [String] The identifier of the Account to retrieve.
      #
      # @param params [Increase::Models::AccountBalanceParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Time] :at_time The moment to query the balance at. If not set, returns the current balances.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BalanceLookup]
      #
      def balance(account_id, params = {}, opts = {})
        parsed = Increase::Models::AccountBalanceParams.dump(params)
        req = {
          method: :get,
          path: ["accounts/%0s/balance", account_id],
          query: parsed,
          model: Increase::Models::BalanceLookup
        }
        @client.request(req, opts)
      end

      # Close an Account
      #
      # @param account_id [String] The identifier of the Account to close. The account must have a zero balance.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Account]
      #
      def close(account_id, opts = {})
        req = {
          method: :post,
          path: ["accounts/%0s/close", account_id],
          model: Increase::Models::Account
        }
        @client.request(req, opts)
      end
    end
  end
end
