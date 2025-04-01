# frozen_string_literal: true

module Increase
  module Resources
    class Accounts
      # Create an Account
      #
      # @param params [Increase::Models::AccountCreateParams, Hash{Symbol=>Object}] .
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
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Account]
      def create(params)
        parsed, options = Increase::Models::AccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "accounts",
          body: parsed,
          model: Increase::Models::Account,
          options: options
        )
      end

      # Retrieve an Account
      #
      # @param account_id [String] The identifier of the Account to retrieve.
      #
      # @param params [Increase::Models::AccountRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Account]
      def retrieve(account_id, params = {})
        @client.request(
          method: :get,
          path: ["accounts/%1$s", account_id],
          model: Increase::Models::Account,
          options: params[:request_options]
        )
      end

      # Update an Account
      #
      # @param account_id [String] The identifier of the Account to update.
      #
      # @param params [Increase::Models::AccountUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :name The new name of the Account.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Account]
      def update(account_id, params = {})
        parsed, options = Increase::Models::AccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["accounts/%1$s", account_id],
          body: parsed,
          model: Increase::Models::Account,
          options: options
        )
      end

      # List Accounts
      #
      # @param params [Increase::Models::AccountListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Increase::Models::AccountListParams::Status] :status
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::Account>]
      def list(params = {})
        parsed, options = Increase::Models::AccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "accounts",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Account,
          options: options
        )
      end

      # Retrieve the current and available balances for an account in minor units of the
      #   account's currency. Learn more about [account balances](/documentation/balance).
      #
      # @param account_id [String] The identifier of the Account to retrieve.
      #
      # @param params [Increase::Models::AccountBalanceParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time] :at_time The moment to query the balance at. If not set, returns the current balances.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::BalanceLookup]
      def balance(account_id, params = {})
        parsed, options = Increase::Models::AccountBalanceParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["accounts/%1$s/balance", account_id],
          query: parsed,
          model: Increase::Models::BalanceLookup,
          options: options
        )
      end

      # Close an Account
      #
      # @param account_id [String] The identifier of the Account to close. The account must have a zero balance.
      #
      # @param params [Increase::Models::AccountCloseParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Account]
      def close(account_id, params = {})
        @client.request(
          method: :post,
          path: ["accounts/%1$s/close", account_id],
          model: Increase::Models::Account,
          options: params[:request_options]
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
