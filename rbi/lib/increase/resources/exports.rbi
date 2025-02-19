# typed: strong

module Increase
  module Resources
    class Exports
      sig do
        params(
            category: Symbol,
            account_statement_ofx: Increase::Models::ExportCreateParams::AccountStatementOfx,
            balance_csv: Increase::Models::ExportCreateParams::BalanceCsv,
            bookkeeping_account_balance_csv: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv,
            entity_csv: Increase::Models::ExportCreateParams::EntityCsv,
            transaction_csv: Increase::Models::ExportCreateParams::TransactionCsv,
            vendor_csv: T.anything,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::Export)
      end
      def create(
        category:,
        account_statement_ofx: nil,
        balance_csv: nil,
        bookkeeping_account_balance_csv: nil,
        entity_csv: nil,
        transaction_csv: nil,
        vendor_csv: nil,
        request_options: {}
      )
      end

      sig do
        params(
            export_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::Export)
      end
      def retrieve(export_id, request_options: {})
      end

      sig do
        params(
            category: Increase::Models::ExportListParams::Category,
            created_at: Increase::Models::ExportListParams::CreatedAt,
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            status: Increase::Models::ExportListParams::Status,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Page[Increase::Models::Export])
      end
      def list(
        category: nil,
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
