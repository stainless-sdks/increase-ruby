# typed: strong

module Increase
  module Models
    class ExportCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      sig { returns(T.nilable(Increase::Models::ExportCreateParams::AccountStatementOfx)) }
      def account_statement_ofx
      end

      sig do
        params(_: Increase::Models::ExportCreateParams::AccountStatementOfx)
          .returns(Increase::Models::ExportCreateParams::AccountStatementOfx)
      end
      def account_statement_ofx=(_)
      end

      sig { returns(T.nilable(Increase::Models::ExportCreateParams::BalanceCsv)) }
      def balance_csv
      end

      sig do
        params(_: Increase::Models::ExportCreateParams::BalanceCsv)
          .returns(Increase::Models::ExportCreateParams::BalanceCsv)
      end
      def balance_csv=(_)
      end

      sig { returns(T.nilable(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv)) }
      def bookkeeping_account_balance_csv
      end

      sig do
        params(_: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv)
          .returns(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv)
      end
      def bookkeeping_account_balance_csv=(_)
      end

      sig { returns(T.nilable(Increase::Models::ExportCreateParams::EntityCsv)) }
      def entity_csv
      end

      sig do
        params(_: Increase::Models::ExportCreateParams::EntityCsv)
          .returns(Increase::Models::ExportCreateParams::EntityCsv)
      end
      def entity_csv=(_)
      end

      sig { returns(T.nilable(Increase::Models::ExportCreateParams::TransactionCsv)) }
      def transaction_csv
      end

      sig do
        params(_: Increase::Models::ExportCreateParams::TransactionCsv)
          .returns(Increase::Models::ExportCreateParams::TransactionCsv)
      end
      def transaction_csv=(_)
      end

      sig { returns(T.nilable(T.anything)) }
      def vendor_csv
      end

      sig { params(_: T.anything).returns(T.anything) }
      def vendor_csv=(_)
      end

      sig do
        params(
          category: Symbol,
          account_statement_ofx: Increase::Models::ExportCreateParams::AccountStatementOfx,
          balance_csv: Increase::Models::ExportCreateParams::BalanceCsv,
          bookkeeping_account_balance_csv: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv,
          entity_csv: Increase::Models::ExportCreateParams::EntityCsv,
          transaction_csv: Increase::Models::ExportCreateParams::TransactionCsv,
          vendor_csv: T.anything,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
            {
              category: Symbol,
              account_statement_ofx: Increase::Models::ExportCreateParams::AccountStatementOfx,
              balance_csv: Increase::Models::ExportCreateParams::BalanceCsv,
              bookkeeping_account_balance_csv: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv,
              entity_csv: Increase::Models::ExportCreateParams::EntityCsv,
              transaction_csv: Increase::Models::ExportCreateParams::TransactionCsv,
              vendor_csv: T.anything,
              request_options: Increase::RequestOptions
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class AccountStatementOfx < Increase::BaseModel
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        sig { returns(T.nilable(Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt)) }
        def created_at
        end

        sig do
          params(_: Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt)
            .returns(Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt)
        end
        def created_at=(_)
        end

        sig do
          params(
            account_id: String,
            created_at: Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt
          )
            .returns(T.attached_class)
        end
        def self.new(account_id:, created_at: nil)
        end

        sig do
          override
            .returns(
              {account_id: String, created_at: Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt}
            )
        end
        def to_hash
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

          sig do
            params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
          end
          def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
          end

          sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
          def to_hash
          end
        end
      end

      class BalanceCsv < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        sig { returns(T.nilable(Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt)) }
        def created_at
        end

        sig do
          params(_: Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt)
            .returns(Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt)
        end
        def created_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def program_id
        end

        sig { params(_: String).returns(String) }
        def program_id=(_)
        end

        sig do
          params(
            account_id: String,
            created_at: Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt,
            program_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(account_id: nil, created_at: nil, program_id: nil)
        end

        sig do
          override
            .returns(
              {
                account_id: String,
                created_at: Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt,
                program_id: String
              }
            )
        end
        def to_hash
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

          sig do
            params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
          end
          def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
          end

          sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
          def to_hash
          end
        end
      end

      class BookkeepingAccountBalanceCsv < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        def bookkeeping_account_id
        end

        sig { params(_: String).returns(String) }
        def bookkeeping_account_id=(_)
        end

        sig { returns(T.nilable(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt)) }
        def created_at
        end

        sig do
          params(_: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt)
            .returns(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt)
        end
        def created_at=(_)
        end

        sig do
          params(
            bookkeeping_account_id: String,
            created_at: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt
          )
            .returns(T.attached_class)
        end
        def self.new(bookkeeping_account_id: nil, created_at: nil)
        end

        sig do
          override
            .returns(
              {
                bookkeeping_account_id: String,
                created_at: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt
              }
            )
        end
        def to_hash
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

          sig do
            params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
          end
          def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
          end

          sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
          def to_hash
          end
        end
      end

      class EntityCsv < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::EntityCsv::Status)) }
        def status
        end

        sig do
          params(_: Increase::Models::ExportCreateParams::EntityCsv::Status)
            .returns(Increase::Models::ExportCreateParams::EntityCsv::Status)
        end
        def status=(_)
        end

        sig { params(status: Increase::Models::ExportCreateParams::EntityCsv::Status).returns(T.attached_class) }
        def self.new(status: nil)
        end

        sig { override.returns({status: Increase::Models::ExportCreateParams::EntityCsv::Status}) }
        def to_hash
        end

        class Status < Increase::BaseModel
          sig { returns(T::Array[Symbol]) }
          def in_
          end

          sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
          def in_=(_)
          end

          sig { params(in_: T::Array[Symbol]).returns(T.attached_class) }
          def self.new(in_:)
          end

          sig { override.returns({in_: T::Array[Symbol]}) }
          def to_hash
          end

          class In < Increase::Enum
            abstract!

            # The entity is active.
            ACTIVE = :active

            # The entity is archived, and can no longer be used to create accounts.
            ARCHIVED = :archived

            # The entity is temporarily disabled and cannot be used for financial activity.
            DISABLED = :disabled

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end

      class TransactionCsv < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        sig { returns(T.nilable(Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt)) }
        def created_at
        end

        sig do
          params(_: Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt)
            .returns(Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt)
        end
        def created_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def program_id
        end

        sig { params(_: String).returns(String) }
        def program_id=(_)
        end

        sig do
          params(
            account_id: String,
            created_at: Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt,
            program_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(account_id: nil, created_at: nil, program_id: nil)
        end

        sig do
          override
            .returns(
              {
                account_id: String,
                created_at: Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt,
                program_id: String
              }
            )
        end
        def to_hash
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

          sig do
            params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
          end
          def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
          end

          sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
          def to_hash
          end
        end
      end
    end
  end
end
