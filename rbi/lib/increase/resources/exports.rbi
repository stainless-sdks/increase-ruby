# typed: strong

module Increase
  module Resources
    class Exports
      # Create an Export
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
        # The type of Export to create.
        category:,
        # Options for the created export. Required if `category` is equal to
        #   `account_statement_ofx`.
        account_statement_ofx: nil,
        # Options for the created export. Required if `category` is equal to
        #   `balance_csv`.
        balance_csv: nil,
        # Options for the created export. Required if `category` is equal to
        #   `bookkeeping_account_balance_csv`.
        bookkeeping_account_balance_csv: nil,
        # Options for the created export. Required if `category` is equal to `entity_csv`.
        entity_csv: nil,
        # Options for the created export. Required if `category` is equal to
        #   `transaction_csv`.
        transaction_csv: nil,
        # Options for the created export. Required if `category` is equal to `vendor_csv`.
        vendor_csv: nil,
        request_options: {}
      )
      end

      # Retrieve an Export
      sig do
        params(
          export_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Export)
      end
      def retrieve(
        # The identifier of the Export to retrieve.
        export_id,
        request_options: {}
      )
      end

      # List Exports
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
        # Return the page of entries after this one.
        cursor: nil,
        # Filter records to the one with the specified `idempotency_key` you chose for
        #   that object. This value is unique across Increase and is used to ensure that a
        #   request is only processed once. Learn more about
        #   [idempotency](https://increase.com/documentation/idempotency-keys).
        idempotency_key: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
        #   objects.
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
