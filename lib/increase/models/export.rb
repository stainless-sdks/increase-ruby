# frozen_string_literal: true

module Increase
  module Models
    class Export
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] category
      required :category,
               Increase::Enum.new(
                 [
                   :account_statement_ofx,
                   :transaction_csv,
                   :balance_csv,
                   :bookkeeping_account_balance_csv,
                   :entity_csv
                 ]
               )

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] file_download_url
      required :file_download_url, String

      # @!attribute [rw] file_id
      required :file_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:pending, :complete, :failed])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:export])
    end
  end
end
