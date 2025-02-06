# typed: strong

module Increase
  module Models
    class ExportCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Symbol) }
      attr_accessor :category

      sig { returns(T.nilable(Increase::Models::ExportCreateParams::AccountStatementOfx)) }
      attr_reader :account_statement_ofx

      sig { params(account_statement_ofx: Increase::Models::ExportCreateParams::AccountStatementOfx).void }
      attr_writer :account_statement_ofx

      sig { returns(T.nilable(Increase::Models::ExportCreateParams::BalanceCsv)) }
      attr_reader :balance_csv

      sig { params(balance_csv: Increase::Models::ExportCreateParams::BalanceCsv).void }
      attr_writer :balance_csv

      sig { returns(T.nilable(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv)) }
      attr_reader :bookkeeping_account_balance_csv

      sig do
        params(
          bookkeeping_account_balance_csv: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv
        ).void
      end
      attr_writer :bookkeeping_account_balance_csv

      sig { returns(T.nilable(Increase::Models::ExportCreateParams::EntityCsv)) }
      attr_reader :entity_csv

      sig { params(entity_csv: Increase::Models::ExportCreateParams::EntityCsv).void }
      attr_writer :entity_csv

      sig { returns(T.nilable(Increase::Models::ExportCreateParams::TransactionCsv)) }
      attr_reader :transaction_csv

      sig { params(transaction_csv: Increase::Models::ExportCreateParams::TransactionCsv).void }
      attr_writer :transaction_csv

      sig { returns(T.nilable(T.anything)) }
      attr_reader :vendor_csv

      sig { params(vendor_csv: T.anything).void }
      attr_writer :vendor_csv

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
        ).void
      end
      def initialize(
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
        override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class AccountStatementOfx < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :account_id

        sig { returns(T.nilable(Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt)) }
        attr_reader :created_at

        sig { params(created_at: Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt).void }
        attr_writer :created_at

        sig do
          params(
            account_id: String,
            created_at: Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt
          ).void
        end
        def initialize(account_id:, created_at: nil)
        end

        sig do
          override.returns(
            {
              account_id: String,
              created_at: Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt
            }
          )
        end
        def to_hash
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
      end

      class BalanceCsv < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :account_id

        sig { params(account_id: String).void }
        attr_writer :account_id

        sig { returns(T.nilable(Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt)) }
        attr_reader :created_at

        sig { params(created_at: Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :program_id

        sig { params(program_id: String).void }
        attr_writer :program_id

        sig do
          params(
            account_id: String,
            created_at: Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt,
            program_id: String
          ).void
        end
        def initialize(account_id: nil, created_at: nil, program_id: nil)
        end

        sig do
          override.returns(
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
      end

      class BookkeepingAccountBalanceCsv < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :bookkeeping_account_id

        sig { params(bookkeeping_account_id: String).void }
        attr_writer :bookkeeping_account_id

        sig do
          returns(T.nilable(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt))
        end
        attr_reader :created_at

        sig do
          params(created_at: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt).void
        end
        attr_writer :created_at

        sig do
          params(
            bookkeeping_account_id: String,
            created_at: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt
          ).void
        end
        def initialize(bookkeeping_account_id: nil, created_at: nil)
        end

        sig do
          override.returns(
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
      end

      class EntityCsv < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::EntityCsv::Status)) }
        attr_reader :status

        sig { params(status: Increase::Models::ExportCreateParams::EntityCsv::Status).void }
        attr_writer :status

        sig { params(status: Increase::Models::ExportCreateParams::EntityCsv::Status).void }
        def initialize(status: nil)
        end

        sig { override.returns({status: Increase::Models::ExportCreateParams::EntityCsv::Status}) }
        def to_hash
        end

        class Status < Increase::BaseModel
          sig { returns(T::Array[Symbol]) }
          attr_accessor :in_

          sig { params(in_: T::Array[Symbol]).void }
          def initialize(in_:)
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class TransactionCsv < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :account_id

        sig { params(account_id: String).void }
        attr_writer :account_id

        sig { returns(T.nilable(Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt)) }
        attr_reader :created_at

        sig { params(created_at: Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :program_id

        sig { params(program_id: String).void }
        attr_writer :program_id

        sig do
          params(
            account_id: String,
            created_at: Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt,
            program_id: String
          ).void
        end
        def initialize(account_id: nil, created_at: nil, program_id: nil)
        end

        sig do
          override.returns(
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
      end
    end
  end
end
