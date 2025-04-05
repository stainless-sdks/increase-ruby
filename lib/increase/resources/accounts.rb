# frozen_string_literal: true

module Increase
  module Resources
    class Accounts
      # Create an Account
      #
      # @overload create(name:, entity_id: nil, informational_entity_id: nil, program_id: nil, request_options: {})
      #
      # @param name [String]
      # @param entity_id [String]
      # @param informational_entity_id [String]
      # @param program_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Account]
      #
      # @see Increase::Models::AccountCreateParams
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
      # @overload retrieve(account_id, request_options: {})
      #
      # @param account_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Account]
      #
      # @see Increase::Models::AccountRetrieveParams
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
      # @overload update(account_id, name: nil, request_options: {})
      #
      # @param account_id [String]
      # @param name [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Account]
      #
      # @see Increase::Models::AccountUpdateParams
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
      # @overload list(created_at: nil, cursor: nil, entity_id: nil, idempotency_key: nil, informational_entity_id: nil, limit: nil, program_id: nil, status: nil, request_options: {})
      #
      # @param created_at [Increase::Models::AccountListParams::CreatedAt]
      # @param cursor [String]
      # @param entity_id [String]
      # @param idempotency_key [String]
      # @param informational_entity_id [String]
      # @param limit [Integer]
      # @param program_id [String]
      # @param status [Increase::Models::AccountListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::Account>]
      #
      # @see Increase::Models::AccountListParams
      def list(params = {})
        parsed, options = Increase::Models::AccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "accounts",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::Account,
          options: options
        )
      end

      # Retrieve the current and available balances for an account in minor units of the
      # account's currency. Learn more about [account balances](/documentation/balance).
      #
      # @overload balance(account_id, at_time: nil, request_options: {})
      #
      # @param account_id [String]
      # @param at_time [Time]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::BalanceLookup]
      #
      # @see Increase::Models::AccountBalanceParams
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
      # @overload close(account_id, request_options: {})
      #
      # @param account_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Account]
      #
      # @see Increase::Models::AccountCloseParams
      def close(account_id, params = {})
        @client.request(
          method: :post,
          path: ["accounts/%1$s/close", account_id],
          model: Increase::Models::Account,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
