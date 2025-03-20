# typed: strong

module Increase
  module Models
    class ExportCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The type of Export to create.
      sig { returns(Increase::Models::ExportCreateParams::Category::OrSymbol) }
      def category
      end

      sig do
        params(_: Increase::Models::ExportCreateParams::Category::OrSymbol)
          .returns(Increase::Models::ExportCreateParams::Category::OrSymbol)
      end
      def category=(_)
      end

      # Options for the created export. Required if `category` is equal to
      #   `account_statement_ofx`.
      sig { returns(T.nilable(Increase::Models::ExportCreateParams::AccountStatementOfx)) }
      def account_statement_ofx
      end

      sig do
        params(_: T.any(Increase::Models::ExportCreateParams::AccountStatementOfx, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::ExportCreateParams::AccountStatementOfx, Increase::Util::AnyHash))
      end
      def account_statement_ofx=(_)
      end

      # Options for the created export. Required if `category` is equal to
      #   `balance_csv`.
      sig { returns(T.nilable(Increase::Models::ExportCreateParams::BalanceCsv)) }
      def balance_csv
      end

      sig do
        params(_: T.any(Increase::Models::ExportCreateParams::BalanceCsv, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::ExportCreateParams::BalanceCsv, Increase::Util::AnyHash))
      end
      def balance_csv=(_)
      end

      # Options for the created export. Required if `category` is equal to
      #   `bookkeeping_account_balance_csv`.
      sig { returns(T.nilable(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv)) }
      def bookkeeping_account_balance_csv
      end

      sig do
        params(
          _: T.any(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv, Increase::Util::AnyHash)
        )
          .returns(
            T.any(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv, Increase::Util::AnyHash)
          )
      end
      def bookkeeping_account_balance_csv=(_)
      end

      # Options for the created export. Required if `category` is equal to `entity_csv`.
      sig { returns(T.nilable(Increase::Models::ExportCreateParams::EntityCsv)) }
      def entity_csv
      end

      sig do
        params(_: T.any(Increase::Models::ExportCreateParams::EntityCsv, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::ExportCreateParams::EntityCsv, Increase::Util::AnyHash))
      end
      def entity_csv=(_)
      end

      # Options for the created export. Required if `category` is equal to
      #   `transaction_csv`.
      sig { returns(T.nilable(Increase::Models::ExportCreateParams::TransactionCsv)) }
      def transaction_csv
      end

      sig do
        params(_: T.any(Increase::Models::ExportCreateParams::TransactionCsv, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::ExportCreateParams::TransactionCsv, Increase::Util::AnyHash))
      end
      def transaction_csv=(_)
      end

      # Options for the created export. Required if `category` is equal to `vendor_csv`.
      sig { returns(T.nilable(T.anything)) }
      def vendor_csv
      end

      sig { params(_: T.anything).returns(T.anything) }
      def vendor_csv=(_)
      end

      sig do
        params(
          category: Increase::Models::ExportCreateParams::Category::OrSymbol,
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
              category: Increase::Models::ExportCreateParams::Category::OrSymbol,
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

      # The type of Export to create.
      module Category
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExportCreateParams::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ExportCreateParams::Category::TaggedSymbol) }

        # Export an Open Financial Exchange (OFX) file of transactions and balances for a given time range and Account.
        ACCOUNT_STATEMENT_OFX =
          T.let(:account_statement_ofx, Increase::Models::ExportCreateParams::Category::TaggedSymbol)

        # Export a CSV of all transactions for a given time range.
        TRANSACTION_CSV = T.let(:transaction_csv, Increase::Models::ExportCreateParams::Category::TaggedSymbol)

        # Export a CSV of account balances for the dates in a given range.
        BALANCE_CSV = T.let(:balance_csv, Increase::Models::ExportCreateParams::Category::TaggedSymbol)

        # Export a CSV of bookkeeping account balances for the dates in a given range.
        BOOKKEEPING_ACCOUNT_BALANCE_CSV =
          T.let(:bookkeeping_account_balance_csv, Increase::Models::ExportCreateParams::Category::TaggedSymbol)

        # Export a CSV of entities with a given status.
        ENTITY_CSV = T.let(:entity_csv, Increase::Models::ExportCreateParams::Category::TaggedSymbol)

        # Export a CSV of vendors added to the third-party risk management dashboard.
        VENDOR_CSV = T.let(:vendor_csv, Increase::Models::ExportCreateParams::Category::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExportCreateParams::Category::TaggedSymbol]) }
          def values
          end
        end
      end

      class AccountStatementOfx < Increase::BaseModel
        # The Account to create a statement for.
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        # Filter results by time range on the `created_at` attribute.
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt)) }
        def created_at
        end

        sig do
          params(
            _: T.any(Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt, Increase::Util::AnyHash)
          )
            .returns(
              T.any(Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt, Increase::Util::AnyHash)
            )
        end
        def created_at=(_)
        end

        # Options for the created export. Required if `category` is equal to
        #   `account_statement_ofx`.
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
          # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   timestamp.
          sig { returns(T.nilable(Time)) }
          def after
          end

          sig { params(_: Time).returns(Time) }
          def after=(_)
          end

          # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   timestamp.
          sig { returns(T.nilable(Time)) }
          def before
          end

          sig { params(_: Time).returns(Time) }
          def before=(_)
          end

          # Return results on or after this
          #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          sig { returns(T.nilable(Time)) }
          def on_or_after
          end

          sig { params(_: Time).returns(Time) }
          def on_or_after=(_)
          end

          # Return results on or before this
          #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          sig { returns(T.nilable(Time)) }
          def on_or_before
          end

          sig { params(_: Time).returns(Time) }
          def on_or_before=(_)
          end

          # Filter results by time range on the `created_at` attribute.
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
        # Filter exported Transactions to the specified Account.
        sig { returns(T.nilable(String)) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        # Filter results by time range on the `created_at` attribute.
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt)) }
        def created_at
        end

        sig do
          params(_: T.any(Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt, Increase::Util::AnyHash))
            .returns(T.any(Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt, Increase::Util::AnyHash))
        end
        def created_at=(_)
        end

        # Filter exported Transactions to the specified Program.
        sig { returns(T.nilable(String)) }
        def program_id
        end

        sig { params(_: String).returns(String) }
        def program_id=(_)
        end

        # Options for the created export. Required if `category` is equal to
        #   `balance_csv`.
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
          # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   timestamp.
          sig { returns(T.nilable(Time)) }
          def after
          end

          sig { params(_: Time).returns(Time) }
          def after=(_)
          end

          # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   timestamp.
          sig { returns(T.nilable(Time)) }
          def before
          end

          sig { params(_: Time).returns(Time) }
          def before=(_)
          end

          # Return results on or after this
          #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          sig { returns(T.nilable(Time)) }
          def on_or_after
          end

          sig { params(_: Time).returns(Time) }
          def on_or_after=(_)
          end

          # Return results on or before this
          #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          sig { returns(T.nilable(Time)) }
          def on_or_before
          end

          sig { params(_: Time).returns(Time) }
          def on_or_before=(_)
          end

          # Filter results by time range on the `created_at` attribute.
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
        # Filter exported Transactions to the specified Bookkeeping Account.
        sig { returns(T.nilable(String)) }
        def bookkeeping_account_id
        end

        sig { params(_: String).returns(String) }
        def bookkeeping_account_id=(_)
        end

        # Filter results by time range on the `created_at` attribute.
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt)) }
        def created_at
        end

        sig do
          params(
            _: T.any(
              Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt,
              Increase::Util::AnyHash
            )
          )
            .returns(
              T.any(
                Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt,
                Increase::Util::AnyHash
              )
            )
        end
        def created_at=(_)
        end

        # Options for the created export. Required if `category` is equal to
        #   `bookkeeping_account_balance_csv`.
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
          # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   timestamp.
          sig { returns(T.nilable(Time)) }
          def after
          end

          sig { params(_: Time).returns(Time) }
          def after=(_)
          end

          # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   timestamp.
          sig { returns(T.nilable(Time)) }
          def before
          end

          sig { params(_: Time).returns(Time) }
          def before=(_)
          end

          # Return results on or after this
          #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          sig { returns(T.nilable(Time)) }
          def on_or_after
          end

          sig { params(_: Time).returns(Time) }
          def on_or_after=(_)
          end

          # Return results on or before this
          #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          sig { returns(T.nilable(Time)) }
          def on_or_before
          end

          sig { params(_: Time).returns(Time) }
          def on_or_before=(_)
          end

          # Filter results by time range on the `created_at` attribute.
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
        # Entity statuses to filter by.
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::EntityCsv::Status)) }
        def status
        end

        sig do
          params(_: T.any(Increase::Models::ExportCreateParams::EntityCsv::Status, Increase::Util::AnyHash))
            .returns(T.any(Increase::Models::ExportCreateParams::EntityCsv::Status, Increase::Util::AnyHash))
        end
        def status=(_)
        end

        # Options for the created export. Required if `category` is equal to `entity_csv`.
        sig { params(status: Increase::Models::ExportCreateParams::EntityCsv::Status).returns(T.attached_class) }
        def self.new(status: nil)
        end

        sig { override.returns({status: Increase::Models::ExportCreateParams::EntityCsv::Status}) }
        def to_hash
        end

        class Status < Increase::BaseModel
          # Entity statuses to filter by. For GET requests, this should be encoded as a
          #   comma-delimited string, such as `?in=one,two,three`.
          sig { returns(T::Array[Increase::Models::ExportCreateParams::EntityCsv::Status::In::OrSymbol]) }
          def in_
          end

          sig do
            params(_: T::Array[Increase::Models::ExportCreateParams::EntityCsv::Status::In::OrSymbol])
              .returns(T::Array[Increase::Models::ExportCreateParams::EntityCsv::Status::In::OrSymbol])
          end
          def in_=(_)
          end

          # Entity statuses to filter by.
          sig do
            params(in_: T::Array[Increase::Models::ExportCreateParams::EntityCsv::Status::In::OrSymbol])
              .returns(T.attached_class)
          end
          def self.new(in_:)
          end

          sig { override.returns({in_: T::Array[Increase::Models::ExportCreateParams::EntityCsv::Status::In::OrSymbol]}) }
          def to_hash
          end

          module In
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::ExportCreateParams::EntityCsv::Status::In) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::ExportCreateParams::EntityCsv::Status::In::TaggedSymbol) }

            # The entity is active.
            ACTIVE = T.let(:active, Increase::Models::ExportCreateParams::EntityCsv::Status::In::TaggedSymbol)

            # The entity is archived, and can no longer be used to create accounts.
            ARCHIVED = T.let(:archived, Increase::Models::ExportCreateParams::EntityCsv::Status::In::TaggedSymbol)

            # The entity is temporarily disabled and cannot be used for financial activity.
            DISABLED = T.let(:disabled, Increase::Models::ExportCreateParams::EntityCsv::Status::In::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[Increase::Models::ExportCreateParams::EntityCsv::Status::In::TaggedSymbol]) }
              def values
              end
            end
          end
        end
      end

      class TransactionCsv < Increase::BaseModel
        # Filter exported Transactions to the specified Account.
        sig { returns(T.nilable(String)) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        # Filter results by time range on the `created_at` attribute.
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt)) }
        def created_at
        end

        sig do
          params(_: T.any(Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt, Increase::Util::AnyHash))
            .returns(T.any(Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt, Increase::Util::AnyHash))
        end
        def created_at=(_)
        end

        # Filter exported Transactions to the specified Program.
        sig { returns(T.nilable(String)) }
        def program_id
        end

        sig { params(_: String).returns(String) }
        def program_id=(_)
        end

        # Options for the created export. Required if `category` is equal to
        #   `transaction_csv`.
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
          # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   timestamp.
          sig { returns(T.nilable(Time)) }
          def after
          end

          sig { params(_: Time).returns(Time) }
          def after=(_)
          end

          # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   timestamp.
          sig { returns(T.nilable(Time)) }
          def before
          end

          sig { params(_: Time).returns(Time) }
          def before=(_)
          end

          # Return results on or after this
          #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          sig { returns(T.nilable(Time)) }
          def on_or_after
          end

          sig { params(_: Time).returns(Time) }
          def on_or_after=(_)
          end

          # Return results on or before this
          #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          sig { returns(T.nilable(Time)) }
          def on_or_before
          end

          sig { params(_: Time).returns(Time) }
          def on_or_before=(_)
          end

          # Filter results by time range on the `created_at` attribute.
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
