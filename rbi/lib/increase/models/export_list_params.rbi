# typed: strong

module Increase
  module Models
    class ExportListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::ExportListParams::Category)) }
      def category
      end

      sig do
        params(_: Increase::Models::ExportListParams::Category)
          .returns(Increase::Models::ExportListParams::Category)
      end
      def category=(_)
      end

      sig { returns(T.nilable(Increase::Models::ExportListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: Increase::Models::ExportListParams::CreatedAt)
          .returns(Increase::Models::ExportListParams::CreatedAt)
      end
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(Increase::Models::ExportListParams::Status)) }
      def status
      end

      sig { params(_: Increase::Models::ExportListParams::Status).returns(Increase::Models::ExportListParams::Status) }
      def status=(_)
      end

      sig do
        params(
          category: Increase::Models::ExportListParams::Category,
          created_at: Increase::Models::ExportListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::ExportListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        category: nil,
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              category: Increase::Models::ExportListParams::Category,
              created_at: Increase::Models::ExportListParams::CreatedAt,
              cursor: String,
              idempotency_key: String,
              limit: Integer,
              status: Increase::Models::ExportListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Category < Increase::BaseModel
        sig { returns(T.nilable(T::Array[Symbol])) }
        def in_
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def in_=(_)
        end

        sig { params(in_: T::Array[Symbol]).void }
        def initialize(in_: nil)
        end

        sig { override.returns({in_: T::Array[Symbol]}) }
        def to_hash
        end

        class In < Increase::Enum
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
      end

      class CreatedAt < Increase::BaseModel
        sig { returns(T.nilable(Time)) }
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_before
        end

        sig { params(_: Time).returns(Time) }
        def on_or_before=(_)
        end

        sig { params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).void }
        def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
      end

      class Status < Increase::BaseModel
        sig { returns(T.nilable(T::Array[Symbol])) }
        def in_
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def in_=(_)
        end

        sig { params(in_: T::Array[Symbol]).void }
        def initialize(in_: nil)
        end

        sig { override.returns({in_: T::Array[Symbol]}) }
        def to_hash
        end

        class In < Increase::Enum
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
      end
    end
  end
end
