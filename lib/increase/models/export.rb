# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Exports#create
    class Export < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/export/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute category
      #   #/components/schemas/export/properties/category
      #
      #   @return [Symbol, Increase::Models::Export::Category]
      required :category, enum: -> { Increase::Models::Export::Category }

      # @!attribute created_at
      #   #/components/schemas/export/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute file_download_url
      #   #/components/schemas/export/properties/file_download_url
      #
      #   @return [String, nil]
      required :file_download_url, String, nil?: true

      # @!attribute file_id
      #   #/components/schemas/export/properties/file_id
      #
      #   @return [String, nil]
      required :file_id, String, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/export/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute status
      #   #/components/schemas/export/properties/status
      #
      #   @return [Symbol, Increase::Models::Export::Status]
      required :status, enum: -> { Increase::Models::Export::Status }

      # @!attribute type
      #   #/components/schemas/export/properties/type
      #
      #   @return [Symbol, Increase::Models::Export::Type]
      required :type, enum: -> { Increase::Models::Export::Type }

      # @!parse
      #   # #/components/schemas/export
      #   #
      #   # @param id [String]
      #   # @param category [Symbol, Increase::Models::Export::Category]
      #   # @param created_at [Time]
      #   # @param file_download_url [String, nil]
      #   # @param file_id [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param status [Symbol, Increase::Models::Export::Status]
      #   # @param type [Symbol, Increase::Models::Export::Type]
      #   #
      #   def initialize(id:, category:, created_at:, file_download_url:, file_id:, idempotency_key:, status:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/export/properties/category
      #
      # @see Increase::Models::Export#category
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

        # Certain dashboard tables are available as CSV exports. This export cannot be created via the API.
        DASHBOARD_TABLE_CSV = :dashboard_table_csv

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/export/properties/status
      #
      # @see Increase::Models::Export#status
      module Status
        extend Increase::Internal::Type::Enum

        # Increase is generating the export.
        PENDING = :pending

        # The export has been successfully generated.
        COMPLETE = :complete

        # The export failed to generate. Increase will reach out to you to resolve the issue.
        FAILED = :failed

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/export/properties/type
      #
      # @see Increase::Models::Export#type
      module Type
        extend Increase::Internal::Type::Enum

        EXPORT = :export

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
