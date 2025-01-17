# frozen_string_literal: true

module Increase
  module Resources
    class BookkeepingAccounts
      # Create a Bookkeeping Account
      #
      # @param params [Increase::Models::BookkeepingAccountCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :name The name you choose for the account.
      #
      #   @option params [String] :account_id The entity, if `compliance_category` is `commingled_cash`.
      #
      #   @option params [Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory] :compliance_category The account compliance category.
      #
      #   @option params [String] :entity_id The entity, if `compliance_category` is `customer_balance`.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BookkeepingAccount]
      #
      def create(params = {}, opts = {})
        parsed = Increase::Models::BookkeepingAccountCreateParams.dump(params)
        req = {
          method: :post,
          path: "bookkeeping_accounts",
          body: parsed,
          model: Increase::Models::BookkeepingAccount
        }
        @client.request(req, opts)
      end

      # Update a Bookkeeping Account
      #
      # @param bookkeeping_account_id [String] The bookkeeping account you would like to update.
      #
      # @param params [Increase::Models::BookkeepingAccountUpdateParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :name The name you choose for the account.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BookkeepingAccount]
      #
      def update(bookkeeping_account_id, params = {}, opts = {})
        parsed = Increase::Models::BookkeepingAccountUpdateParams.dump(params)
        req = {
          method: :patch,
          path: ["bookkeeping_accounts/%0s", bookkeeping_account_id],
          body: parsed,
          model: Increase::Models::BookkeepingAccount
        }
        @client.request(req, opts)
      end

      # List Bookkeeping Accounts
      #
      # @param params [Increase::Models::BookkeepingAccountListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::BookkeepingAccount>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::BookkeepingAccountListParams.dump(params)
        req = {
          method: :get,
          path: "bookkeeping_accounts",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::BookkeepingAccount
        }
        @client.request(req, opts)
      end

      # Retrieve a Bookkeeping Account Balance
      #
      # @param bookkeeping_account_id [String] The identifier of the Bookkeeping Account to retrieve.
      #
      # @param params [Increase::Models::BookkeepingAccountBalanceParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [Time] :at_time The moment to query the balance at. If not set, returns the current balances.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BookkeepingBalanceLookup]
      #
      def balance(bookkeeping_account_id, params = {}, opts = {})
        parsed = Increase::Models::BookkeepingAccountBalanceParams.dump(params)
        req = {
          method: :get,
          path: ["bookkeeping_accounts/%0s/balance", bookkeeping_account_id],
          query: parsed,
          model: Increase::Models::BookkeepingBalanceLookup
        }
        @client.request(req, opts)
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
