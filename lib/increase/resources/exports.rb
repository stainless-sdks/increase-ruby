# frozen_string_literal: true

module Increase
  module Resources
    class Exports
      def initialize(client:)
        @client = client
      end

      # Create an Export
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :category The type of Export to create.
      # @option params [AccountStatementOfx] :account_statement_ofx Options for the created export. Required if `category` is equal to
      #   `account_statement_ofx`.
      # @option params [BalanceCsv] :balance_csv Options for the created export. Required if `category` is equal to
      #   `balance_csv`.
      # @option params [BookkeepingAccountBalanceCsv] :bookkeeping_account_balance_csv Options for the created export. Required if `category` is equal to
      #   `bookkeeping_account_balance_csv`.
      # @option params [EntityCsv] :entity_csv Options for the created export. Required if `category` is equal to `entity_csv`.
      # @option params [TransactionCsv] :transaction_csv Options for the created export. Required if `category` is equal to
      #   `transaction_csv`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/exports"
        req[:body] = params
        req[:model] = Increase::Models::Export
        @client.request(req, opts)
      end

      # Retrieve an Export
      #
      # @param export_id [String] The identifier of the Export to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      def retrieve(export_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/exports/#{export_id}"
        req[:model] = Increase::Models::Export
        @client.request(req, opts)
      end
    end
  end
end
