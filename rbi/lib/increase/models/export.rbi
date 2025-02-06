# typed: strong

module Increase
  module Models
    class Export < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Symbol) }
      attr_accessor :category

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :file_download_url

      sig { returns(T.nilable(String)) }
      attr_accessor :file_id

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          category: Symbol,
          created_at: Time,
          file_download_url: T.nilable(String),
          file_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          status: Symbol,
          type: Symbol
        ).void
      end
      def initialize(
        id:,
        category:,
        created_at:,
        file_download_url:,
        file_id:,
        idempotency_key:,
        status:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            category: Symbol,
            created_at: Time,
            file_download_url: T.nilable(String),
            file_id: T.nilable(String),
            idempotency_key: T.nilable(String),
            status: Symbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Category < Increase::Enum
        abstract!

        # Export an Open Financial Exchange (OFX) file of transactions and balances for a given time range and Account.
        ACCOUNT_STATEMENT_OFX = :account_statement_ofx

        # Export a CSV of all transactions for a given time range.
        TRANSACTION_CSV = :transaction_csv

        # Export a CSV of account balances for the dates in a given range.
        BALANCE_CSV = :balance_csv

        # Export a CSV of bookkeeping account balances for the dates in a given range.
        BOOKKEEPING_ACCOUNT_BALANCE_CSV = :bookkeeping_account_balance_csv

        # Export a CSV of entities with a given status.
        ENTITY_CSV = :entity_csv

        # Export a CSV of vendors added to the third-party risk management dashboard.
        VENDOR_CSV = :vendor_csv

        # Certain dashboard tables are available as CSV exports. This export cannot be created via the API.
        DASHBOARD_TABLE_CSV = :dashboard_table_csv

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Increase::Enum
        abstract!

        # Increase is generating the export.
        PENDING = :pending

        # The export has been successfully generated.
        COMPLETE = :complete

        # The export failed to generate. Increase will reach out to you to resolve the issue.
        FAILED = :failed

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        EXPORT = :export

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
