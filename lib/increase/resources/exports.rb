# frozen_string_literal: true

module Increase
  module Resources
    class Exports
      # @api private
      private def initialize_resources; end

      # Create an Export
      #
      # @overload create(category:, account_statement_ofx: nil, balance_csv: nil, bookkeeping_account_balance_csv: nil, entity_csv: nil, transaction_csv: nil, vendor_csv: nil, request_options: {})
      #
      # @param category [Symbol, Increase::Models::ExportCreateParams::Category]
      # @param account_statement_ofx [Increase::Models::ExportCreateParams::AccountStatementOfx]
      # @param balance_csv [Increase::Models::ExportCreateParams::BalanceCsv]
      # @param bookkeeping_account_balance_csv [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv]
      # @param entity_csv [Increase::Models::ExportCreateParams::EntityCsv]
      # @param transaction_csv [Increase::Models::ExportCreateParams::TransactionCsv]
      # @param vendor_csv [Object]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Export]
      #
      # @see Increase::Models::ExportCreateParams
      def create(params)
        parsed, options = Increase::Models::ExportCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "exports",
          body: parsed,
          model: Increase::Models::Export,
          options: options
        )
      end

      # Retrieve an Export
      #
      # @overload retrieve(export_id, request_options: {})
      #
      # @param export_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Export]
      #
      # @see Increase::Models::ExportRetrieveParams
      def retrieve(export_id, params = {})
        @client.request(
          method: :get,
          path: ["exports/%1$s", export_id],
          model: Increase::Models::Export,
          options: params[:request_options]
        )
      end

      # List Exports
      #
      # @overload list(category: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param category [Increase::Models::ExportListParams::Category]
      # @param created_at [Increase::Models::ExportListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::ExportListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::Export>]
      #
      # @see Increase::Models::ExportListParams
      def list(params = {})
        parsed, options = Increase::Models::ExportListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "exports",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::Export,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
