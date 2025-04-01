# frozen_string_literal: true

module Increase
  module Models
    class Export < Increase::BaseModel
      # @!attribute id
      #   The Export identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute category
      #   The category of the Export. We may add additional possible values for this enum
      #     over time; your application should be able to handle that gracefully.
      #
      #   @return [Symbol, Increase::Models::Export::Category]
      required :category, enum: -> { Increase::Models::Export::Category }

      # @!attribute created_at
      #   The time the Export was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute file_download_url
      #   A URL at which the Export's file can be downloaded. This will be present when
      #     the Export's status transitions to `complete`.
      #
      #   @return [String, nil]
      required :file_download_url, String, nil?: true

      # @!attribute file_id
      #   The File containing the contents of the Export. This will be present when the
      #     Export's status transitions to `complete`.
      #
      #   @return [String, nil]
      required :file_id, String, nil?: true

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across
      #     Increase and is used to ensure that a request is only processed once. Learn more
      #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute status
      #   The status of the Export.
      #
      #   @return [Symbol, Increase::Models::Export::Status]
      required :status, enum: -> { Increase::Models::Export::Status }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `export`.
      #
      #   @return [Symbol, Increase::Models::Export::Type]
      required :type, enum: -> { Increase::Models::Export::Type }

      # @!parse
      #   # Exports are batch summaries of your Increase data. You can make them from the
      #   #   API or dashboard. Since they can take a while, they are generated
      #   #   asynchronously. We send a webhook when they are ready. For more information,
      #   #   please read our
      #   #   [Exports documentation](https://increase.com/documentation/exports).
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

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The category of the Export. We may add additional possible values for this enum
      #   over time; your application should be able to handle that gracefully.
      #
      # @see Increase::Models::Export#category
      module Category
        extend Increase::Enum

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

      # The status of the Export.
      #
      # @see Increase::Models::Export#status
      module Status
        extend Increase::Enum

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

      # A constant representing the object's type. For this resource it will always be
      #   `export`.
      #
      # @see Increase::Models::Export#type
      module Type
        extend Increase::Enum

        EXPORT = :export

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
