# typed: strong

module Increase
  module Models
    class ExportListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::ExportListParams::Category)) }
      attr_reader :category

      sig { params(category: Increase::Models::ExportListParams::Category).void }
      attr_writer :category

      sig { returns(T.nilable(Increase::Models::ExportListParams::CreatedAt)) }
      attr_reader :created_at

      sig { params(created_at: Increase::Models::ExportListParams::CreatedAt).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::Models::ExportListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::Models::ExportListParams::Status).void }
      attr_writer :status

      sig do
        params(
          category: Increase::Models::ExportListParams::Category,
          created_at: Increase::Models::ExportListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::ExportListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
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
        override.returns(
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
        attr_reader :in_

        sig { params(in_: T::Array[Symbol]).void }
        attr_writer :in_

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
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

        sig { params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).void }
        def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
      end

      class Status < Increase::BaseModel
        sig { returns(T.nilable(T::Array[Symbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Symbol]).void }
        attr_writer :in_

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
