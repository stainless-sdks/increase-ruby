# frozen_string_literal: true

module Increase
  module Models
    class InboundFundsHoldReleaseResponse
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] automatically_releases_at
      required :automatically_releases_at, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

      # @!attribute [rw] held_transaction_id
      required :held_transaction_id, String

      # @!attribute [rw] pending_transaction_id
      required :pending_transaction_id, String

      # @!attribute [rw] released_at
      required :released_at, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:held, :complete])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:inbound_funds_hold])
    end
  end
end
