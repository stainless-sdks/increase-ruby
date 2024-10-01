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
      # @option params [Symbol, Category] :category The type of Export to create.
      # @option params [AccountStatementOfx, nil] :account_statement_ofx Options for the created export. Required if `category` is equal to
      #   `account_statement_ofx`.
      # @option params [BalanceCsv, nil] :balance_csv Options for the created export. Required if `category` is equal to
      #   `balance_csv`.
      # @option params [BookkeepingAccountBalanceCsv, nil] :bookkeeping_account_balance_csv Options for the created export. Required if `category` is equal to
      #   `bookkeeping_account_balance_csv`.
      # @option params [EntityCsv, nil] :entity_csv Options for the created export. Required if `category` is equal to `entity_csv`.
      # @option params [TransactionCsv, nil] :transaction_csv Options for the created export. Required if `category` is equal to
      #   `transaction_csv`.
      # @option params [Object, nil] :vendor_csv Options for the created export. Required if `category` is equal to `vendor_csv`.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
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
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      def retrieve(export_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/exports/#{export_id}"
        req[:model] = Increase::Models::Export
        @client.request(req, opts)
      end

      # List Exports
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Category, nil] :category
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Status, nil] :status
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Export>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/exports"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::Export
        @client.request(req, opts)
      end
    end
  end
end
