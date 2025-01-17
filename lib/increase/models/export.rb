# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # export => {
    #   id: String,
    #   category: enum: Increase::Models::Export::Category,
    #   created_at: Time,
    #   file_download_url: String,
    #   file_id: String,
    #   **_
    # }
    # ```
    class Export < Increase::BaseModel
      # @!attribute id
      #   The Export identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute category
      #   The category of the Export. We may add additional possible values for this enum over time; your application should be able to handle that gracefully.
      #
      #   @return [Symbol, Increase::Models::Export::Category]
      required :category, enum: -> { Increase::Models::Export::Category }

      # @!attribute created_at
      #   The time the Export was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute file_download_url
      #   A URL at which the Export's file can be downloaded. This will be present when the Export's status transitions to `complete`.
      #
      #   @return [String, nil]
      required :file_download_url, String

      # @!attribute file_id
      #   The File containing the contents of the Export. This will be present when the Export's status transitions to `complete`.
      #
      #   @return [String, nil]
      required :file_id, String

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String

      # @!attribute status
      #   The status of the Export.
      #
      #   @return [Symbol, Increase::Models::Export::Status]
      required :status, enum: -> { Increase::Models::Export::Status }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `export`.
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
      #   # @param id [String] The Export identifier.
      #   #
      #   # @param category [String] The category of the Export. We may add additional possible values for this enum
      #   #   over time; your application should be able to handle that gracefully.
      #   #
      #   # @param created_at [String] The time the Export was created.
      #   #
      #   # @param file_download_url [String, nil] A URL at which the Export's file can be downloaded. This will be present when
      #   #   the Export's status transitions to `complete`.
      #   #
      #   # @param file_id [String, nil] The File containing the contents of the Export. This will be present when the
      #   #   Export's status transitions to `complete`.
      #   #
      #   # @param idempotency_key [String, nil] The idempotency key you chose for this object. This value is unique across
      #   #   Increase and is used to ensure that a request is only processed once. Learn more
      #   #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param status [String] The status of the Export.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `export`.
      #   #
      #   def initialize(id:, category:, created_at:, file_download_url:, file_id:, idempotency_key:, status:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The category of the Export. We may add additional possible values for this enum over time; your application should be able to handle that gracefully.
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

        # Certain dashboard tables are available as CSV exports. This export cannot be created via the API.
        DASHBOARD_TABLE_CSV = :dashboard_table_csv

        finalize!
      end

      # The status of the Export.
      #
      # @example
      # ```ruby
      # case status
      # in :pending
      #   # ...
      # in :complete
      #   # ...
      # in :failed
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # Increase is generating the export.
        PENDING = :pending

        # The export has been successfully generated.
        COMPLETE = :complete

        # The export failed to generate. Increase will reach out to you to resolve the issue.
        FAILED = :failed

        finalize!
      end

      # A constant representing the object's type. For this resource it will always be `export`.
      #
      # @example
      # ```ruby
      # case type
      # in :export
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        EXPORT = :export

        finalize!
      end
    end
  end
end
