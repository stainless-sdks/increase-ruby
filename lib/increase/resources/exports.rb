# frozen_string_literal: true

module Increase
  module Resources
    class Exports
      def initialize(client:)
        @client = client
      end

      # Create an Export
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Category] :category The type of Export to create.
      # @option params [AccountStatementOfx, nil] :account_statement_ofx Options for the created export. Required if `category` is equal to
      #   `account_statement_ofx`.
      # @option params [BalanceCsv, nil] :balance_csv Options for the created export. Required if `category` is equal to
      #   `balance_csv`.
      # @option params [BookkeepingAccountBalanceCsv, nil] :bookkeeping_account_balance_csv Options for the created export. Required if `category` is equal to
      #   `bookkeeping_account_balance_csv`.
      # @option params [EntityCsv, nil] :entity_csv Options for the created export. Required if `category` is equal to `entity_csv`.
      # @option params [TransactionCsv, nil] :transaction_csv Options for the created export. Required if `category` is equal to
      #   `transaction_csv`.
      # @option params [Object, nil] :vendor_csv Options for the created export. Required if `category` is equal to `vendor_csv`.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/exports"
        req[:body] = params
        req[:model] = Increase::Models::Export
        @client.request(req, opts)
      end

      # Retrieve an Export
      #
      # @param export_id [String] The identifier of the Export to retrieve.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      def retrieve(export_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/exports/#{export_id}"
        req[:model] = Increase::Models::Export
        @client.request(req, opts)
      end

      # List Exports
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Category, nil] :category
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Status, nil] :status
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Export>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/exports"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::Export
        @client.request(req, opts)
      end

      # The type of Export to create.
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
      end

      class AccountStatementOfx < BaseModel
        # @!attribute [rw] account_id
        #   The Account to create a statement for.
        #   @return [String]
        required :account_id, String

        # @!attribute [rw] created_at
        #   Filter results by time range on the `created_at` attribute.
        #   @return [AccountStatementOfx::CreatedAt]
        optional :created_at, -> { AccountStatementOfx::CreatedAt }

        class CreatedAt < BaseModel
          # @!attribute [rw] after
          #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :after, DateTime

          # @!attribute [rw] before
          #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :before, DateTime

          # @!attribute [rw] on_or_after
          #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :on_or_after, DateTime

          # @!attribute [rw] on_or_before
          #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :on_or_before, DateTime
        end
      end

      class BalanceCsv < BaseModel
        # @!attribute [rw] account_id
        #   Filter exported Transactions to the specified Account.
        #   @return [String]
        optional :account_id, String

        # @!attribute [rw] created_at
        #   Filter results by time range on the `created_at` attribute.
        #   @return [BalanceCsv::CreatedAt]
        optional :created_at, -> { BalanceCsv::CreatedAt }

        # @!attribute [rw] program_id
        #   Filter exported Transactions to the specified Program.
        #   @return [String]
        optional :program_id, String

        class CreatedAt < BaseModel
          # @!attribute [rw] after
          #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :after, DateTime

          # @!attribute [rw] before
          #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :before, DateTime

          # @!attribute [rw] on_or_after
          #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :on_or_after, DateTime

          # @!attribute [rw] on_or_before
          #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :on_or_before, DateTime
        end
      end

      class BookkeepingAccountBalanceCsv < BaseModel
        # @!attribute [rw] bookkeeping_account_id
        #   Filter exported Transactions to the specified Bookkeeping Account.
        #   @return [String]
        optional :bookkeeping_account_id, String

        # @!attribute [rw] created_at
        #   Filter results by time range on the `created_at` attribute.
        #   @return [BookkeepingAccountBalanceCsv::CreatedAt]
        optional :created_at, -> { BookkeepingAccountBalanceCsv::CreatedAt }

        class CreatedAt < BaseModel
          # @!attribute [rw] after
          #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :after, DateTime

          # @!attribute [rw] before
          #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :before, DateTime

          # @!attribute [rw] on_or_after
          #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :on_or_after, DateTime

          # @!attribute [rw] on_or_before
          #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :on_or_before, DateTime
        end
      end

      class EntityCsv < BaseModel
        # @!attribute [rw] status
        #   Entity statuses to filter by.
        #   @return [EntityCsv::Status]
        optional :status, -> { EntityCsv::Status }

        class Status < BaseModel
          # @!attribute [rw] in_
          #   Entity statuses to filter by. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
          #   @return [Array<Symbol, EntityCsv::Status::In>]
          required :in_, Increase::ArrayOf.new(enum: -> { EntityCsv::Status::In })

          class In < Increase::Enum
            # The entity is active.
            ACTIVE = :active

            # The entity is archived, and can no longer be used to create accounts.
            ARCHIVED = :archived

            # The entity is temporarily disabled and cannot be used for financial activity.
            DISABLED = :disabled
          end
        end
      end

      class TransactionCsv < BaseModel
        # @!attribute [rw] account_id
        #   Filter exported Transactions to the specified Account.
        #   @return [String]
        optional :account_id, String

        # @!attribute [rw] created_at
        #   Filter results by time range on the `created_at` attribute.
        #   @return [TransactionCsv::CreatedAt]
        optional :created_at, -> { TransactionCsv::CreatedAt }

        # @!attribute [rw] program_id
        #   Filter exported Transactions to the specified Program.
        #   @return [String]
        optional :program_id, String

        class CreatedAt < BaseModel
          # @!attribute [rw] after
          #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :after, DateTime

          # @!attribute [rw] before
          #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :before, DateTime

          # @!attribute [rw] on_or_after
          #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :on_or_after, DateTime

          # @!attribute [rw] on_or_before
          #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
          #   @return [DateTime]
          optional :on_or_before, DateTime
        end
      end

      class Category < BaseModel
        # @!attribute [rw] in_
        #   Filter Exports for those with the specified category or categories. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Category::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Category::In })

        class In < Increase::Enum
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
        end
      end

      class CreatedAt < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end

      class Status < BaseModel
        # @!attribute [rw] in_
        #   Filter Exports for those with the specified status or statuses. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Status::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Status::In })

        class In < Increase::Enum
          # Increase is generating the export.
          PENDING = :pending

          # The export has been successfully generated.
          COMPLETE = :complete

          # The export failed to generate. Increase will reach out to you to resolve the issue.
          FAILED = :failed
        end
      end
    end
  end
end
