# frozen_string_literal: true

module Increase
  module Models
    class InboundFundsHoldReleaseResponse < BaseModel
      # @!attribute [rw] id
      #   The Inbound Funds Hold identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   The held amount in the minor unit of the account's currency. For dollars, for example, this is cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] automatically_releases_at
      #   When the hold will be released automatically. Certain conditions may cause it to be released before this time.
      #   @return [String]
      required :automatically_releases_at, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] held_transaction_id
      #   The ID of the Transaction for which funds were held.
      #   @return [String]
      required :held_transaction_id, String

      # @!attribute [rw] pending_transaction_id
      #   The ID of the Pending Transaction representing the held funds.
      #   @return [String]
      required :pending_transaction_id, String

      # @!attribute [rw] released_at
      #   When the hold was released (if it has been released).
      #   @return [String]
      required :released_at, String

      # @!attribute [rw] status
      #   The status of the hold.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:held, :complete)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_funds_hold)
    end
  end
end
