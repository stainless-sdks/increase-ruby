# frozen_string_literal: true

module Increase
  module Resources
    class Exports
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Create an Export
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, Increase::Models::ExportCreateParams::Category] :category The type of Export to create.
      #   @option params [Increase::Models::ExportCreateParams::AccountStatementOfx, nil] :account_statement_ofx Options for the created export. Required if `category` is equal to
      #     `account_statement_ofx`.
      #   @option params [Increase::Models::ExportCreateParams::BalanceCsv, nil] :balance_csv Options for the created export. Required if `category` is equal to
      #     `balance_csv`.
      #   @option params [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv, nil] :bookkeeping_account_balance_csv Options for the created export. Required if `category` is equal to
      #     `bookkeeping_account_balance_csv`.
      #   @option params [Increase::Models::ExportCreateParams::EntityCsv, nil] :entity_csv Options for the created export. Required if `category` is equal to `entity_csv`.
      #   @option params [Increase::Models::ExportCreateParams::TransactionCsv, nil] :transaction_csv Options for the created export. Required if `category` is equal to
      #     `transaction_csv`.
      #   @option params [Object, nil] :vendor_csv Options for the created export. Required if `category` is equal to `vendor_csv`.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/exports",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: Increase::Models::Export
        }
        @client.request(req, opts)
      end

      # Retrieve an Export
      #
      # @param export_id [String] The identifier of the Export to retrieve.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      def retrieve(export_id, opts = {})
        req = {
          method: :get,
          path: "/exports/#{export_id}",
          model: Increase::Models::Export
        }
        @client.request(req, opts)
      end

      # List Exports
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Increase::Models::ExportListParams::Category, nil] :category
      #   @option params [Increase::Models::ExportListParams::CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #   @option params [Increase::Models::ExportListParams::Status, nil] :status
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Export>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/exports",
          query: params,
          page: Increase::Page,
          model: Increase::Models::Export
        }
        @client.request(req, opts)
      end
    end
  end
end
