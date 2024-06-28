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
      #   @return [Symbol]
      required :category,
               Increase::Enum.new(
                 :account_statement_ofx,
                 :transaction_csv,
                 :balance_csv,
                 :bookkeeping_account_balance_csv,
                 :entity_csv,
                 :vendor_csv
               )

      # @!attribute [rw] created_at
      #   The time the Export was created.
      #   @return [String]
      required :created_at, String

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
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending, :complete, :failed)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `export`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:export)
    end
  end
end
