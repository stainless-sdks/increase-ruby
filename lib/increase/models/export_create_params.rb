# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Exports#create
    class ExportCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute category
      #   #/components/schemas/create_an_export_parameters/properties/category
      #
      #   @return [Symbol, Increase::Models::ExportCreateParams::Category]
      required :category, enum: -> { Increase::Models::ExportCreateParams::Category }

      # @!attribute [r] account_statement_ofx
      #   #/components/schemas/create_an_export_parameters/properties/account_statement_ofx
      #
      #   @return [Increase::Models::ExportCreateParams::AccountStatementOfx, nil]
      optional :account_statement_ofx, -> { Increase::Models::ExportCreateParams::AccountStatementOfx }

      # @!parse
      #   # @return [Increase::Models::ExportCreateParams::AccountStatementOfx]
      #   attr_writer :account_statement_ofx

      # @!attribute [r] balance_csv
      #   #/components/schemas/create_an_export_parameters/properties/balance_csv
      #
      #   @return [Increase::Models::ExportCreateParams::BalanceCsv, nil]
      optional :balance_csv, -> { Increase::Models::ExportCreateParams::BalanceCsv }

      # @!parse
      #   # @return [Increase::Models::ExportCreateParams::BalanceCsv]
      #   attr_writer :balance_csv

      # @!attribute [r] bookkeeping_account_balance_csv
      #   #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv
      #
      #   @return [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv, nil]
      optional :bookkeeping_account_balance_csv,
               -> { Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv }

      # @!parse
      #   # @return [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv]
      #   attr_writer :bookkeeping_account_balance_csv

      # @!attribute [r] entity_csv
      #   #/components/schemas/create_an_export_parameters/properties/entity_csv
      #
      #   @return [Increase::Models::ExportCreateParams::EntityCsv, nil]
      optional :entity_csv, -> { Increase::Models::ExportCreateParams::EntityCsv }

      # @!parse
      #   # @return [Increase::Models::ExportCreateParams::EntityCsv]
      #   attr_writer :entity_csv

      # @!attribute [r] transaction_csv
      #   #/components/schemas/create_an_export_parameters/properties/transaction_csv
      #
      #   @return [Increase::Models::ExportCreateParams::TransactionCsv, nil]
      optional :transaction_csv, -> { Increase::Models::ExportCreateParams::TransactionCsv }

      # @!parse
      #   # @return [Increase::Models::ExportCreateParams::TransactionCsv]
      #   attr_writer :transaction_csv

      # @!attribute [r] vendor_csv
      #   #/components/schemas/create_an_export_parameters/properties/vendor_csv
      #
      #   @return [Object, nil]
      optional :vendor_csv, Increase::Internal::Type::Unknown

      # @!parse
      #   # @return [Object]
      #   attr_writer :vendor_csv

      # @!parse
      #   # @param category [Symbol, Increase::Models::ExportCreateParams::Category]
      #   # @param account_statement_ofx [Increase::Models::ExportCreateParams::AccountStatementOfx]
      #   # @param balance_csv [Increase::Models::ExportCreateParams::BalanceCsv]
      #   # @param bookkeeping_account_balance_csv [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv]
      #   # @param entity_csv [Increase::Models::ExportCreateParams::EntityCsv]
      #   # @param transaction_csv [Increase::Models::ExportCreateParams::TransactionCsv]
      #   # @param vendor_csv [Object]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     category:,
      #     account_statement_ofx: nil,
      #     balance_csv: nil,
      #     bookkeeping_account_balance_csv: nil,
      #     entity_csv: nil,
      #     transaction_csv: nil,
      #     vendor_csv: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/create_an_export_parameters/properties/category
      module Category
        extend Increase::Internal::Type::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class AccountStatementOfx < Increase::Internal::Type::BaseModel
        # @!attribute account_id
        #   #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute [r] created_at
        #   #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at
        #
        #   @return [Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt, nil]
        optional :created_at, -> { Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt }

        # @!parse
        #   # @return [Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt]
        #   attr_writer :created_at

        # @!parse
        #   # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx
        #   #
        #   # @param account_id [String]
        #   # @param created_at [Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt]
        #   #
        #   def initialize(account_id:, created_at: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::ExportCreateParams::AccountStatementOfx#created_at
        class CreatedAt < Increase::Internal::Type::BaseModel
          # @!attribute [r] after
          #   #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at/properties/after
          #
          #   @return [Time, nil]
          optional :after, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :after

          # @!attribute [r] before
          #   #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at/properties/before
          #
          #   @return [Time, nil]
          optional :before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :before

          # @!attribute [r] on_or_after
          #   #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at/properties/on_or_after
          #
          #   @return [Time, nil]
          optional :on_or_after, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :on_or_after

          # @!attribute [r] on_or_before
          #   #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at/properties/on_or_before
          #
          #   @return [Time, nil]
          optional :on_or_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :on_or_before

          # @!parse
          #   # #/components/schemas/create_an_export_parameters/properties/account_statement_ofx/properties/created_at
          #   #
          #   # @param after [Time]
          #   # @param before [Time]
          #   # @param on_or_after [Time]
          #   # @param on_or_before [Time]
          #   #
          #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      class BalanceCsv < Increase::Internal::Type::BaseModel
        # @!attribute [r] account_id
        #   #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/account_id
        #
        #   @return [String, nil]
        optional :account_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :account_id

        # @!attribute [r] created_at
        #   #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at
        #
        #   @return [Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt, nil]
        optional :created_at, -> { Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt }

        # @!parse
        #   # @return [Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt]
        #   attr_writer :created_at

        # @!attribute [r] program_id
        #   #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/program_id
        #
        #   @return [String, nil]
        optional :program_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :program_id

        # @!parse
        #   # #/components/schemas/create_an_export_parameters/properties/balance_csv
        #   #
        #   # @param account_id [String]
        #   # @param created_at [Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt]
        #   # @param program_id [String]
        #   #
        #   def initialize(account_id: nil, created_at: nil, program_id: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::ExportCreateParams::BalanceCsv#created_at
        class CreatedAt < Increase::Internal::Type::BaseModel
          # @!attribute [r] after
          #   #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at/properties/after
          #
          #   @return [Time, nil]
          optional :after, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :after

          # @!attribute [r] before
          #   #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at/properties/before
          #
          #   @return [Time, nil]
          optional :before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :before

          # @!attribute [r] on_or_after
          #   #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at/properties/on_or_after
          #
          #   @return [Time, nil]
          optional :on_or_after, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :on_or_after

          # @!attribute [r] on_or_before
          #   #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at/properties/on_or_before
          #
          #   @return [Time, nil]
          optional :on_or_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :on_or_before

          # @!parse
          #   # #/components/schemas/create_an_export_parameters/properties/balance_csv/properties/created_at
          #   #
          #   # @param after [Time]
          #   # @param before [Time]
          #   # @param on_or_after [Time]
          #   # @param on_or_before [Time]
          #   #
          #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      class BookkeepingAccountBalanceCsv < Increase::Internal::Type::BaseModel
        # @!attribute [r] bookkeeping_account_id
        #   #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/bookkeeping_account_id
        #
        #   @return [String, nil]
        optional :bookkeeping_account_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :bookkeeping_account_id

        # @!attribute [r] created_at
        #   #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at
        #
        #   @return [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt, nil]
        optional :created_at, -> { Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt }

        # @!parse
        #   # @return [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt]
        #   attr_writer :created_at

        # @!parse
        #   # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv
        #   #
        #   # @param bookkeeping_account_id [String]
        #   # @param created_at [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt]
        #   #
        #   def initialize(bookkeeping_account_id: nil, created_at: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv#created_at
        class CreatedAt < Increase::Internal::Type::BaseModel
          # @!attribute [r] after
          #   #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at/properties/after
          #
          #   @return [Time, nil]
          optional :after, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :after

          # @!attribute [r] before
          #   #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at/properties/before
          #
          #   @return [Time, nil]
          optional :before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :before

          # @!attribute [r] on_or_after
          #   #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at/properties/on_or_after
          #
          #   @return [Time, nil]
          optional :on_or_after, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :on_or_after

          # @!attribute [r] on_or_before
          #   #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at/properties/on_or_before
          #
          #   @return [Time, nil]
          optional :on_or_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :on_or_before

          # @!parse
          #   # #/components/schemas/create_an_export_parameters/properties/bookkeeping_account_balance_csv/properties/created_at
          #   #
          #   # @param after [Time]
          #   # @param before [Time]
          #   # @param on_or_after [Time]
          #   # @param on_or_before [Time]
          #   #
          #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      class EntityCsv < Increase::Internal::Type::BaseModel
        # @!attribute [r] status
        #   #/components/schemas/create_an_export_parameters/properties/entity_csv/properties/status
        #
        #   @return [Increase::Models::ExportCreateParams::EntityCsv::Status, nil]
        optional :status, -> { Increase::Models::ExportCreateParams::EntityCsv::Status }

        # @!parse
        #   # @return [Increase::Models::ExportCreateParams::EntityCsv::Status]
        #   attr_writer :status

        # @!parse
        #   # #/components/schemas/create_an_export_parameters/properties/entity_csv
        #   #
        #   # @param status [Increase::Models::ExportCreateParams::EntityCsv::Status]
        #   #
        #   def initialize(status: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::ExportCreateParams::EntityCsv#status
        class Status < Increase::Internal::Type::BaseModel
          # @!attribute in_
          #   #/components/schemas/create_an_export_parameters/properties/entity_csv/properties/status/properties/in
          #
          #   @return [Array<Symbol, Increase::Models::ExportCreateParams::EntityCsv::Status::In>]
          required :in_,
                   -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::ExportCreateParams::EntityCsv::Status::In] },
                   api_name: :in

          # @!parse
          #   # #/components/schemas/create_an_export_parameters/properties/entity_csv/properties/status
          #   #
          #   # @param in_ [Array<Symbol, Increase::Models::ExportCreateParams::EntityCsv::Status::In>]
          #   #
          #   def initialize(in_:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/create_an_export_parameters/properties/entity_csv/properties/status/properties/in/items
          module In
            extend Increase::Internal::Type::Enum

            # The entity is active.
            ACTIVE = :active

            # The entity is archived, and can no longer be used to create accounts.
            ARCHIVED = :archived

            # The entity is temporarily disabled and cannot be used for financial activity.
            DISABLED = :disabled

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end

      class TransactionCsv < Increase::Internal::Type::BaseModel
        # @!attribute [r] account_id
        #   #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/account_id
        #
        #   @return [String, nil]
        optional :account_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :account_id

        # @!attribute [r] created_at
        #   #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at
        #
        #   @return [Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt, nil]
        optional :created_at, -> { Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt }

        # @!parse
        #   # @return [Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt]
        #   attr_writer :created_at

        # @!attribute [r] program_id
        #   #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/program_id
        #
        #   @return [String, nil]
        optional :program_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :program_id

        # @!parse
        #   # #/components/schemas/create_an_export_parameters/properties/transaction_csv
        #   #
        #   # @param account_id [String]
        #   # @param created_at [Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt]
        #   # @param program_id [String]
        #   #
        #   def initialize(account_id: nil, created_at: nil, program_id: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::ExportCreateParams::TransactionCsv#created_at
        class CreatedAt < Increase::Internal::Type::BaseModel
          # @!attribute [r] after
          #   #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at/properties/after
          #
          #   @return [Time, nil]
          optional :after, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :after

          # @!attribute [r] before
          #   #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at/properties/before
          #
          #   @return [Time, nil]
          optional :before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :before

          # @!attribute [r] on_or_after
          #   #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at/properties/on_or_after
          #
          #   @return [Time, nil]
          optional :on_or_after, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :on_or_after

          # @!attribute [r] on_or_before
          #   #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at/properties/on_or_before
          #
          #   @return [Time, nil]
          optional :on_or_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :on_or_before

          # @!parse
          #   # #/components/schemas/create_an_export_parameters/properties/transaction_csv/properties/created_at
          #   #
          #   # @param after [Time]
          #   # @param before [Time]
          #   # @param on_or_after [Time]
          #   # @param on_or_before [Time]
          #   #
          #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
