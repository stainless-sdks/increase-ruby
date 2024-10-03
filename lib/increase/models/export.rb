# frozen_string_literal: true

module Increase
  module Models
    class Export < BaseModel
      # @!attribute [rw] id
      #   The Export identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] category
      #   The category of the Export. We may add additional possible values for this enum over time; your application should be able to handle that gracefully.
      #   @return [Symbol, Increase::Models::Export::Category]
      required :category, enum: -> { Increase::Models::Export::Category }

      # @!attribute [rw] created_at
      #   The time the Export was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] file_download_url
      #   A URL at which the Export's file can be downloaded. This will be present when the Export's status transitions to `complete`.
      #   @return [String]
      required :file_download_url, String

      # @!attribute [rw] file_id
      #   The File containing the contents of the Export. This will be present when the Export's status transitions to `complete`.
      #   @return [String]
      required :file_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] status
      #   The status of the Export.
      #   @return [Symbol, Increase::Models::Export::Status]
      required :status, enum: -> { Increase::Models::Export::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `export`.
      #   @return [Symbol, Increase::Models::Export::Type]
      required :type, enum: -> { Increase::Models::Export::Type }

      # The category of the Export. We may add additional possible values for this enum over time; your application should be able to handle that gracefully.
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

      # The status of the Export.
      class Status < Increase::Enum
        # Increase is generating the export.
        PENDING = :pending

        # The export has been successfully generated.
        COMPLETE = :complete

        # The export failed to generate. Increase will reach out to you to resolve the issue.
        FAILED = :failed
      end

      # A constant representing the object's type. For this resource it will always be `export`.
      class Type < Increase::Enum
        EXPORT = :export
      end
    end
  end
end
