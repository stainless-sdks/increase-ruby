# frozen_string_literal: true

module Increase
  module Resources
    class Exports
      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Create an Export
      #
      # @param params [Increase::Models::ExportCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Symbol, Increase::Models::ExportCreateParams::Category] :category The type of Export to create.
      #
      #   @option params [Increase::Models::ExportCreateParams::AccountStatementOfx] :account_statement_ofx Options for the created export. Required if `category` is equal to
      #     `account_statement_ofx`.
      #
      #   @option params [Increase::Models::ExportCreateParams::BalanceCsv] :balance_csv Options for the created export. Required if `category` is equal to
      #     `balance_csv`.
      #
      #   @option params [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv] :bookkeeping_account_balance_csv Options for the created export. Required if `category` is equal to
      #     `bookkeeping_account_balance_csv`.
      #
      #   @option params [Increase::Models::ExportCreateParams::EntityCsv] :entity_csv Options for the created export. Required if `category` is equal to `entity_csv`.
      #
      #   @option params [Increase::Models::ExportCreateParams::TransactionCsv] :transaction_csv Options for the created export. Required if `category` is equal to
      #     `transaction_csv`.
      #
      #   @option params [Object] :vendor_csv Options for the created export. Required if `category` is equal to `vendor_csv`.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      #
      def create(params = {}, opts = {})
        parsed = Increase::Models::ExportCreateParams.dump(params)
        req = {
          method: :post,
          path: "exports",
          body: parsed,
          model: Increase::Models::Export
        }
        @client.request(req, opts)
      end

      # Retrieve an Export
      #
      # @param export_id [String] The identifier of the Export to retrieve.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      #
      def retrieve(export_id, opts = {})
        req = {
          method: :get,
          path: ["exports/%0s", export_id],
          model: Increase::Models::Export
        }
        @client.request(req, opts)
      end

      # List Exports
      #
      # @param params [Increase::Models::ExportListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [Increase::Models::ExportListParams::Category] :category
      #
      #   @option params [Increase::Models::ExportListParams::CreatedAt] :created_at
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
      #   @option params [Increase::Models::ExportListParams::Status] :status
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Export>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::ExportListParams.dump(params)
        req = {
          method: :get,
          path: "exports",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Export
        }
        @client.request(req, opts)
      end
    end
  end
end
