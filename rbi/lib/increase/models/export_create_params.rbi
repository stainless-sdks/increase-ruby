# typed: strong

module Increase
  module Models
    class ExportCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_an_export_parameters/properties/category
      sig { returns(Increase::Models::ExportCreateParams::Category::OrSymbol) }
      attr_accessor :category

      # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx
      sig { returns(T.nilable(Increase::Models::ExportCreateParams::AccountStatementOfx)) }
      attr_reader :account_statement_ofx

      sig do
        params(
          account_statement_ofx: T.any(Increase::Models::ExportCreateParams::AccountStatementOfx, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :account_statement_ofx

      # #/components/schemas/create_an_export_parameters/properties/balance_csv
      sig { returns(T.nilable(Increase::Models::ExportCreateParams::BalanceCsv)) }
      attr_reader :balance_csv

      sig do
        params(balance_csv: T.any(Increase::Models::ExportCreateParams::BalanceCsv, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :balance_csv

      # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv
      sig { returns(T.nilable(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv)) }
      attr_reader :bookkeeping_account_balance_csv

      sig do
        params(
          bookkeeping_account_balance_csv: T.any(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :bookkeeping_account_balance_csv

      # #/components/schemas/create_an_export_parameters/properties/entity_csv
      sig { returns(T.nilable(Increase::Models::ExportCreateParams::EntityCsv)) }
      attr_reader :entity_csv

      sig do
        params(entity_csv: T.any(Increase::Models::ExportCreateParams::EntityCsv, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :entity_csv

      # #/components/schemas/create_an_export_parameters/properties/transaction_csv
      sig { returns(T.nilable(Increase::Models::ExportCreateParams::TransactionCsv)) }
      attr_reader :transaction_csv

      sig do
        params(
          transaction_csv: T.any(Increase::Models::ExportCreateParams::TransactionCsv, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :transaction_csv

      # #/components/schemas/create_an_export_parameters/properties/vendor_csv
      sig { returns(T.nilable(T.anything)) }
      attr_reader :vendor_csv

      sig { params(vendor_csv: T.anything).void }
      attr_writer :vendor_csv

      sig do
        params(
          category: Increase::Models::ExportCreateParams::Category::OrSymbol,
          account_statement_ofx: T.any(Increase::Models::ExportCreateParams::AccountStatementOfx, Increase::Internal::AnyHash),
          balance_csv: T.any(Increase::Models::ExportCreateParams::BalanceCsv, Increase::Internal::AnyHash),
          bookkeeping_account_balance_csv: T.any(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv, Increase::Internal::AnyHash),
          entity_csv: T.any(Increase::Models::ExportCreateParams::EntityCsv, Increase::Internal::AnyHash),
          transaction_csv: T.any(Increase::Models::ExportCreateParams::TransactionCsv, Increase::Internal::AnyHash),
          vendor_csv: T.anything,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
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
      ); end
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
      def to_hash; end

      # #/components/schemas/create_an_export_parameters/properties/category
      module Category
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExportCreateParams::Category) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ExportCreateParams::Category::TaggedSymbol) }

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

        sig { override.returns(T::Array[Increase::Models::ExportCreateParams::Category::TaggedSymbol]) }
        def self.values; end
      end

      class AccountStatementOfx < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/account_id
        sig { returns(String) }
        attr_accessor :account_id

        # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt)) }
        attr_reader :created_at

        sig do
          params(
            created_at: T.any(Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :created_at

        # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx
        sig do
          params(
            account_id: String,
            created_at: T.any(Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt, Increase::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(account_id:, created_at: nil); end

        sig do
          override
            .returns(
              {account_id: String, created_at: Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt}
            )
        end
        def to_hash; end

        class CreatedAt < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at/properties/after
          sig { returns(T.nilable(Time)) }
          attr_reader :after

          sig { params(after: Time).void }
          attr_writer :after

          # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at/properties/before
          sig { returns(T.nilable(Time)) }
          attr_reader :before

          sig { params(before: Time).void }
          attr_writer :before

          # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at/properties/on_or_after
          sig { returns(T.nilable(Time)) }
          attr_reader :on_or_after

          sig { params(on_or_after: Time).void }
          attr_writer :on_or_after

          # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at/properties/on_or_before
          sig { returns(T.nilable(Time)) }
          attr_reader :on_or_before

          sig { params(on_or_before: Time).void }
          attr_writer :on_or_before

          # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at
          sig do
            params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
          end
          def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil); end

          sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
          def to_hash; end
        end
      end

      class BalanceCsv < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/account_id
        sig { returns(T.nilable(String)) }
        attr_reader :account_id

        sig { params(account_id: String).void }
        attr_writer :account_id

        # #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt)) }
        attr_reader :created_at

        sig do
          params(
            created_at: T.any(Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :created_at

        # #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/program_id
        sig { returns(T.nilable(String)) }
        attr_reader :program_id

        sig { params(program_id: String).void }
        attr_writer :program_id

        # #/components/schemas/create_an_export_parameters/properties/balance_csv
        sig do
          params(
            account_id: String,
            created_at: T.any(Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt, Increase::Internal::AnyHash),
            program_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(account_id: nil, created_at: nil, program_id: nil); end

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
        def to_hash; end

        class CreatedAt < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at/properties/after
          sig { returns(T.nilable(Time)) }
          attr_reader :after

          sig { params(after: Time).void }
          attr_writer :after

          # #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at/properties/before
          sig { returns(T.nilable(Time)) }
          attr_reader :before

          sig { params(before: Time).void }
          attr_writer :before

          # #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at/properties/on_or_after
          sig { returns(T.nilable(Time)) }
          attr_reader :on_or_after

          sig { params(on_or_after: Time).void }
          attr_writer :on_or_after

          # #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at/properties/on_or_before
          sig { returns(T.nilable(Time)) }
          attr_reader :on_or_before

          sig { params(on_or_before: Time).void }
          attr_writer :on_or_before

          # #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at
          sig do
            params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
          end
          def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil); end

          sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
          def to_hash; end
        end
      end

      class BookkeepingAccountBalanceCsv < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/bookkeeping_account_id
        sig { returns(T.nilable(String)) }
        attr_reader :bookkeeping_account_id

        sig { params(bookkeeping_account_id: String).void }
        attr_writer :bookkeeping_account_id

        # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt)) }
        attr_reader :created_at

        sig do
          params(
            created_at: T.any(
              Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt,
              Increase::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :created_at

        # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv
        sig do
          params(
            bookkeeping_account_id: String,
            created_at: T.any(
              Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt,
              Increase::Internal::AnyHash
            )
          )
            .returns(T.attached_class)
        end
        def self.new(bookkeeping_account_id: nil, created_at: nil); end

        sig do
          override
            .returns(
              {
                bookkeeping_account_id: String,
                created_at: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt
              }
            )
        end
        def to_hash; end

        class CreatedAt < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at/properties/after
          sig { returns(T.nilable(Time)) }
          attr_reader :after

          sig { params(after: Time).void }
          attr_writer :after

          # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at/properties/before
          sig { returns(T.nilable(Time)) }
          attr_reader :before

          sig { params(before: Time).void }
          attr_writer :before

          # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at/properties/on_or_after
          sig { returns(T.nilable(Time)) }
          attr_reader :on_or_after

          sig { params(on_or_after: Time).void }
          attr_writer :on_or_after

          # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at/properties/on_or_before
          sig { returns(T.nilable(Time)) }
          attr_reader :on_or_before

          sig { params(on_or_before: Time).void }
          attr_writer :on_or_before

          # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at
          sig do
            params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
          end
          def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil); end

          sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
          def to_hash; end
        end
      end

      class EntityCsv < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_export_parameters/properties/entity_csv/properties/status
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::EntityCsv::Status)) }
        attr_reader :status

        sig do
          params(
            status: T.any(Increase::Models::ExportCreateParams::EntityCsv::Status, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :status

        # #/components/schemas/create_an_export_parameters/properties/entity_csv
        sig do
          params(
            status: T.any(Increase::Models::ExportCreateParams::EntityCsv::Status, Increase::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(status: nil); end

        sig { override.returns({status: Increase::Models::ExportCreateParams::EntityCsv::Status}) }
        def to_hash; end

        class Status < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_export_parameters/properties/entity_csv/properties/status/properties/in
          sig { returns(T::Array[Increase::Models::ExportCreateParams::EntityCsv::Status::In::OrSymbol]) }
          attr_accessor :in_

          # #/components/schemas/create_an_export_parameters/properties/entity_csv/properties/status
          sig do
            params(in_: T::Array[Increase::Models::ExportCreateParams::EntityCsv::Status::In::OrSymbol])
              .returns(T.attached_class)
          end
          def self.new(in_:); end

          sig { override.returns({in_: T::Array[Increase::Models::ExportCreateParams::EntityCsv::Status::In::OrSymbol]}) }
          def to_hash; end

          # #/components/schemas/create_an_export_parameters/properties/entity_csv/properties/status/properties/in/items
          module In
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::ExportCreateParams::EntityCsv::Status::In) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::ExportCreateParams::EntityCsv::Status::In::TaggedSymbol) }

            # The entity is active.
            ACTIVE = T.let(:active, Increase::Models::ExportCreateParams::EntityCsv::Status::In::TaggedSymbol)

            # The entity is archived, and can no longer be used to create accounts.
            ARCHIVED = T.let(:archived, Increase::Models::ExportCreateParams::EntityCsv::Status::In::TaggedSymbol)

            # The entity is temporarily disabled and cannot be used for financial activity.
            DISABLED = T.let(:disabled, Increase::Models::ExportCreateParams::EntityCsv::Status::In::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::ExportCreateParams::EntityCsv::Status::In::TaggedSymbol]) }
            def self.values; end
          end
        end
      end

      class TransactionCsv < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/account_id
        sig { returns(T.nilable(String)) }
        attr_reader :account_id

        sig { params(account_id: String).void }
        attr_writer :account_id

        # #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at
        sig { returns(T.nilable(Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt)) }
        attr_reader :created_at

        sig do
          params(
            created_at: T.any(Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :created_at

        # #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/program_id
        sig { returns(T.nilable(String)) }
        attr_reader :program_id

        sig { params(program_id: String).void }
        attr_writer :program_id

        # #/components/schemas/create_an_export_parameters/properties/transaction_csv
        sig do
          params(
            account_id: String,
            created_at: T.any(Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt, Increase::Internal::AnyHash),
            program_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(account_id: nil, created_at: nil, program_id: nil); end

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
        def to_hash; end

        class CreatedAt < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at/properties/after
          sig { returns(T.nilable(Time)) }
          attr_reader :after

          sig { params(after: Time).void }
          attr_writer :after

          # #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at/properties/before
          sig { returns(T.nilable(Time)) }
          attr_reader :before

          sig { params(before: Time).void }
          attr_writer :before

          # #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at/properties/on_or_after
          sig { returns(T.nilable(Time)) }
          attr_reader :on_or_after

          sig { params(on_or_after: Time).void }
          attr_writer :on_or_after

          # #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at/properties/on_or_before
          sig { returns(T.nilable(Time)) }
          attr_reader :on_or_before

          sig { params(on_or_before: Time).void }
          attr_writer :on_or_before

          # #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at
          sig do
            params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
          end
          def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil); end

          sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
          def to_hash; end
        end
      end
    end
  end
end
