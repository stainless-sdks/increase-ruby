# frozen_string_literal: true

module Increase
  module Models
    class AccountTransfer
      class Approval
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] approved_at
        required :approved_at, String

        # @!attribute [rw] approved_by
        required :approved_by, String
      end

      class Cancellation
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] canceled_at
        required :canceled_at, String

        # @!attribute [rw] canceled_by
        required :canceled_by, String
      end

      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] approval
      required :approval, -> { Increase::Models::AccountTransfer::Approval }

      # @!attribute [rw] cancellation
      required :cancellation, -> { Increase::Models::AccountTransfer::Cancellation }

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] destination_account_id
      required :destination_account_id, String

      # @!attribute [rw] destination_transaction_id
      required :destination_transaction_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] network
      required :network, Increase::Enum.new([:account])

      # @!attribute [rw] pending_transaction_id
      required :pending_transaction_id, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:pending_approval, :canceled, :complete])

      # @!attribute [rw] transaction_id
      required :transaction_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:account_transfer])
    end
  end
end
