# frozen_string_literal: true

module Increase
  module Models
    class ExportCreateParams < Increase::BaseModel
      # @!attribute category
      #   The type of Export to create.
      #
      #   @return [Symbol, Increase::Models::ExportCreateParams::Category]
      required :category, enum: -> { Increase::Models::ExportCreateParams::Category }

      # @!attribute account_statement_ofx
      #   Options for the created export. Required if `category` is equal to `account_statement_ofx`.
      #
      #   @return [Increase::Models::ExportCreateParams::AccountStatementOfx]
      optional :account_statement_ofx, -> { Increase::Models::ExportCreateParams::AccountStatementOfx }

      # @!attribute balance_csv
      #   Options for the created export. Required if `category` is equal to `balance_csv`.
      #
      #   @return [Increase::Models::ExportCreateParams::BalanceCsv]
      optional :balance_csv, -> { Increase::Models::ExportCreateParams::BalanceCsv }

      # @!attribute bookkeeping_account_balance_csv
      #   Options for the created export. Required if `category` is equal to `bookkeeping_account_balance_csv`.
      #
      #   @return [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv]
      optional :bookkeeping_account_balance_csv,
               -> { Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv }

      # @!attribute entity_csv
      #   Options for the created export. Required if `category` is equal to `entity_csv`.
      #
      #   @return [Increase::Models::ExportCreateParams::EntityCsv]
      optional :entity_csv, -> { Increase::Models::ExportCreateParams::EntityCsv }

      # @!attribute transaction_csv
      #   Options for the created export. Required if `category` is equal to `transaction_csv`.
      #
      #   @return [Increase::Models::ExportCreateParams::TransactionCsv]
      optional :transaction_csv, -> { Increase::Models::ExportCreateParams::TransactionCsv }

      # @!attribute vendor_csv
      #   Options for the created export. Required if `category` is equal to `vendor_csv`.
      #
      #   @return [Object]
      optional :vendor_csv, Increase::Unknown

      # @!parse
      #   # @param category [String] The type of Export to create.
      #   #
      #   # @param account_statement_ofx [Increase::Models::ExportCreateParams::AccountStatementOfx] Options for the created export. Required if `category` is equal to
      #   #   `account_statement_ofx`.
      #   #
      #   # @param balance_csv [Increase::Models::ExportCreateParams::BalanceCsv] Options for the created export. Required if `category` is equal to
      #   #   `balance_csv`.
      #   #
      #   # @param bookkeeping_account_balance_csv [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv] Options for the created export. Required if `category` is equal to
      #   #   `bookkeeping_account_balance_csv`.
      #   #
      #   # @param entity_csv [Increase::Models::ExportCreateParams::EntityCsv] Options for the created export. Required if `category` is equal to `entity_csv`.
      #   #
      #   # @param transaction_csv [Increase::Models::ExportCreateParams::TransactionCsv] Options for the created export. Required if `category` is equal to
      #   #   `transaction_csv`.
      #   #
      #   # @param vendor_csv [Object] Options for the created export. Required if `category` is equal to `vendor_csv`.
      #   #
      #   def initialize(
      #     category:,
      #     account_statement_ofx: nil,
      #     balance_csv: nil,
      #     bookkeeping_account_balance_csv: nil,
      #     entity_csv: nil,
      #     transaction_csv: nil,
      #     vendor_csv: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The type of Export to create.
      #
      # @example
      # ```ruby
      # case category
      # in :account_statement_ofx
      #   # ...
      # in :transaction_csv
      #   # ...
      # in :balance_csv
      #   # ...
      # in :bookkeeping_account_balance_csv
      #   # ...
      # in :entity_csv
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Category < Increase::Enum
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
      end

      # @example
      # ```ruby
      # account_statement_ofx => {
      #   account_id: String,
      #   created_at: Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt
      # }
      # ```
      class AccountStatementOfx < Increase::BaseModel
        # @!attribute account_id
        #   The Account to create a statement for.
        #
        #   @return [String]
        required :account_id, String

        # @!attribute created_at
        #   Filter results by time range on the `created_at` attribute.
        #
        #   @return [Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt]
        optional :created_at, -> { Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt }

        # @!parse
        #   # Options for the created export. Required if `category` is equal to
        #   #   `account_statement_ofx`.
        #   #
        #   # @param account_id [String] The Account to create a statement for.
        #   #
        #   # @param created_at [Increase::Models::ExportCreateParams::AccountStatementOfx::CreatedAt] Filter results by time range on the `created_at` attribute.
        #   #
        #   def initialize(account_id:, created_at: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # created_at => {
        #   after: Time,
        #   before: Time,
        #   on_or_after: Time,
        #   on_or_before: Time
        # }
        # ```
        class CreatedAt < Increase::BaseModel
          # @!attribute after
          #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :after, Time

          # @!attribute before
          #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :before, Time

          # @!attribute on_or_after
          #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :on_or_after, Time

          # @!attribute on_or_before
          #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :on_or_before, Time

          # @!parse
          #   # Filter results by time range on the `created_at` attribute.
          #   #
          #   # @param after [String] Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   #   timestamp.
          #   #
          #   # @param before [String] Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   #   timestamp.
          #   #
          #   # @param on_or_after [String] Return results on or after this
          #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   #
          #   # @param on_or_before [String] Return results on or before this
          #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   #
          #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # balance_csv => {
      #   account_id: String,
      #   created_at: Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt,
      #   program_id: String
      # }
      # ```
      class BalanceCsv < Increase::BaseModel
        # @!attribute account_id
        #   Filter exported Transactions to the specified Account.
        #
        #   @return [String]
        optional :account_id, String

        # @!attribute created_at
        #   Filter results by time range on the `created_at` attribute.
        #
        #   @return [Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt]
        optional :created_at, -> { Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt }

        # @!attribute program_id
        #   Filter exported Transactions to the specified Program.
        #
        #   @return [String]
        optional :program_id, String

        # @!parse
        #   # Options for the created export. Required if `category` is equal to
        #   #   `balance_csv`.
        #   #
        #   # @param account_id [String] Filter exported Transactions to the specified Account.
        #   #
        #   # @param created_at [Increase::Models::ExportCreateParams::BalanceCsv::CreatedAt] Filter results by time range on the `created_at` attribute.
        #   #
        #   # @param program_id [String] Filter exported Transactions to the specified Program.
        #   #
        #   def initialize(account_id: nil, created_at: nil, program_id: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # created_at => {
        #   after: Time,
        #   before: Time,
        #   on_or_after: Time,
        #   on_or_before: Time
        # }
        # ```
        class CreatedAt < Increase::BaseModel
          # @!attribute after
          #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :after, Time

          # @!attribute before
          #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :before, Time

          # @!attribute on_or_after
          #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :on_or_after, Time

          # @!attribute on_or_before
          #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :on_or_before, Time

          # @!parse
          #   # Filter results by time range on the `created_at` attribute.
          #   #
          #   # @param after [String] Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   #   timestamp.
          #   #
          #   # @param before [String] Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   #   timestamp.
          #   #
          #   # @param on_or_after [String] Return results on or after this
          #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   #
          #   # @param on_or_before [String] Return results on or before this
          #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   #
          #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # bookkeeping_account_balance_csv => {
      #   bookkeeping_account_id: String,
      #   created_at: Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt
      # }
      # ```
      class BookkeepingAccountBalanceCsv < Increase::BaseModel
        # @!attribute bookkeeping_account_id
        #   Filter exported Transactions to the specified Bookkeeping Account.
        #
        #   @return [String]
        optional :bookkeeping_account_id, String

        # @!attribute created_at
        #   Filter results by time range on the `created_at` attribute.
        #
        #   @return [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt]
        optional :created_at,
                 -> {
                   Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt
                 }

        # @!parse
        #   # Options for the created export. Required if `category` is equal to
        #   #   `bookkeeping_account_balance_csv`.
        #   #
        #   # @param bookkeeping_account_id [String] Filter exported Transactions to the specified Bookkeeping Account.
        #   #
        #   # @param created_at [Increase::Models::ExportCreateParams::BookkeepingAccountBalanceCsv::CreatedAt] Filter results by time range on the `created_at` attribute.
        #   #
        #   def initialize(bookkeeping_account_id: nil, created_at: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # created_at => {
        #   after: Time,
        #   before: Time,
        #   on_or_after: Time,
        #   on_or_before: Time
        # }
        # ```
        class CreatedAt < Increase::BaseModel
          # @!attribute after
          #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :after, Time

          # @!attribute before
          #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :before, Time

          # @!attribute on_or_after
          #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :on_or_after, Time

          # @!attribute on_or_before
          #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :on_or_before, Time

          # @!parse
          #   # Filter results by time range on the `created_at` attribute.
          #   #
          #   # @param after [String] Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   #   timestamp.
          #   #
          #   # @param before [String] Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   #   timestamp.
          #   #
          #   # @param on_or_after [String] Return results on or after this
          #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   #
          #   # @param on_or_before [String] Return results on or before this
          #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   #
          #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # entity_csv => {
      #   status: Increase::Models::ExportCreateParams::EntityCsv::Status
      # }
      # ```
      class EntityCsv < Increase::BaseModel
        # @!attribute status
        #   Entity statuses to filter by.
        #
        #   @return [Increase::Models::ExportCreateParams::EntityCsv::Status]
        optional :status, -> { Increase::Models::ExportCreateParams::EntityCsv::Status }

        # @!parse
        #   # Options for the created export. Required if `category` is equal to `entity_csv`.
        #   #
        #   # @param status [Increase::Models::ExportCreateParams::EntityCsv::Status] Entity statuses to filter by.
        #   #
        #   def initialize(status: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # status => {
        #   in_: -> { Increase::ArrayOf[enum: Increase::Models::ExportCreateParams::EntityCsv::Status::In] === _1 }
        # }
        # ```
        class Status < Increase::BaseModel
          # @!attribute in_
          #   Entity statuses to filter by. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
          #
          #   @return [Array<Symbol, Increase::Models::ExportCreateParams::EntityCsv::Status::In>]
          required :in_,
                   -> {
                     Increase::ArrayOf[enum: Increase::Models::ExportCreateParams::EntityCsv::Status::In]
                   },
                   api_name: :in

          # @!parse
          #   # Entity statuses to filter by.
          #   #
          #   # @param in_ [Array<String>] Entity statuses to filter by. For GET requests, this should be encoded as a
          #   #   comma-delimited string, such as `?in=one,two,three`.
          #   #
          #   def initialize(in_:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # case in
          # in :active
          #   # ...
          # in :archived
          #   # ...
          # in :disabled
          #   # ...
          # end
          # ```
          class In < Increase::Enum
            # The entity is active.
            ACTIVE = :active

            # The entity is archived, and can no longer be used to create accounts.
            ARCHIVED = :archived

            # The entity is temporarily disabled and cannot be used for financial activity.
            DISABLED = :disabled

            finalize!
          end
        end
      end

      # @example
      # ```ruby
      # transaction_csv => {
      #   account_id: String,
      #   created_at: Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt,
      #   program_id: String
      # }
      # ```
      class TransactionCsv < Increase::BaseModel
        # @!attribute account_id
        #   Filter exported Transactions to the specified Account.
        #
        #   @return [String]
        optional :account_id, String

        # @!attribute created_at
        #   Filter results by time range on the `created_at` attribute.
        #
        #   @return [Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt]
        optional :created_at, -> { Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt }

        # @!attribute program_id
        #   Filter exported Transactions to the specified Program.
        #
        #   @return [String]
        optional :program_id, String

        # @!parse
        #   # Options for the created export. Required if `category` is equal to
        #   #   `transaction_csv`.
        #   #
        #   # @param account_id [String] Filter exported Transactions to the specified Account.
        #   #
        #   # @param created_at [Increase::Models::ExportCreateParams::TransactionCsv::CreatedAt] Filter results by time range on the `created_at` attribute.
        #   #
        #   # @param program_id [String] Filter exported Transactions to the specified Program.
        #   #
        #   def initialize(account_id: nil, created_at: nil, program_id: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # created_at => {
        #   after: Time,
        #   before: Time,
        #   on_or_after: Time,
        #   on_or_before: Time
        # }
        # ```
        class CreatedAt < Increase::BaseModel
          # @!attribute after
          #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :after, Time

          # @!attribute before
          #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :before, Time

          # @!attribute on_or_after
          #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :on_or_after, Time

          # @!attribute on_or_before
          #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #
          #   @return [Time]
          optional :on_or_before, Time

          # @!parse
          #   # Filter results by time range on the `created_at` attribute.
          #   #
          #   # @param after [String] Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   #   timestamp.
          #   #
          #   # @param before [String] Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
          #   #   timestamp.
          #   #
          #   # @param on_or_after [String] Return results on or after this
          #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   #
          #   # @param on_or_before [String] Return results on or before this
          #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   #
          #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end
    end
  end
end
