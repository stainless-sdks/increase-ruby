# typed: strong

module Increase
  module Models
    class Export < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def file_download_url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def file_download_url=(_)
      end

      sig { returns(T.nilable(String)) }
      def file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

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
        )
          .void
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
        override
          .returns(
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        EXPORT = :export

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
