# typed: strong

module Increase
  module Resources
    class Exports
      # Create an Export
      sig do
        params(
          category: Increase::Models::ExportCreateParams::Category::OrSymbol,
          account_statement_ofx: T.any(Increase::Models::ExportCreateParams::AccountStatementOfx, Increase::Internal::AnyHash),
          balance_csv: T.any(Increase::Models::ExportCreateParams::BalanceCsv, Increase::Internal::AnyHash),
          bookkeeping_account_balance_csv: T.any(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv, Increase::Internal::AnyHash),
          entity_csv: T.any(Increase::Models::ExportCreateParams::EntityCsv, Increase::Internal::AnyHash),
          transaction_csv: T.any(Increase::Models::ExportCreateParams::TransactionCsv, Increase::Internal::AnyHash),
          vendor_csv: T.anything,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Export)
      end
      def create(
        # #/components/schemas/create_an_export_parameters/properties/category
        category:,
        # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx
        account_statement_ofx: nil,
        # #/components/schemas/create_an_export_parameters/properties/balance_csv
        balance_csv: nil,
        # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv
        bookkeeping_account_balance_csv: nil,
        # #/components/schemas/create_an_export_parameters/properties/entity_csv
        entity_csv: nil,
        # #/components/schemas/create_an_export_parameters/properties/transaction_csv
        transaction_csv: nil,
        # #/components/schemas/create_an_export_parameters/properties/vendor_csv
        vendor_csv: nil,
        request_options: {}
      ); end
      # Retrieve an Export
      sig do
        params(
          export_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Export)
      end
      def retrieve(
        # #/paths//exports/{export_id}/get/parameters/0/schema
        export_id,
        request_options: {}
      ); end
      # List Exports
      sig do
        params(
          category: T.any(Increase::Models::ExportListParams::Category, Increase::Internal::AnyHash),
          created_at: T.any(Increase::Models::ExportListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::ExportListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::Export])
      end
      def list(
        category: nil,
        created_at: nil,
        # #/paths//exports/get/parameters/0/schema
        cursor: nil,
        # #/paths//exports/get/parameters/8/schema
        idempotency_key: nil,
        # #/paths//exports/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
