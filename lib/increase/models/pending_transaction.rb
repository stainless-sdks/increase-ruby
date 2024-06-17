# frozen_string_literal: true

module Increase
  module Models
    class PendingTransaction < BaseModel
      # @!attribute [rw] id
      #   The Pending Transaction identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the account this Pending Transaction belongs to.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] amount
      #   The Pending Transaction amount in the minor unit of its currency. For dollars, for example, this is cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] completed_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending Transaction was completed.
      #   @return [String]
      required :completed_at, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending Transaction occurred.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] description
      #   For a Pending Transaction related to a transfer, this is the description you provide. For a Pending Transaction related to a payment, this is the description the vendor provides.
      #   @return [String]
      required :description, String

      # @!attribute [rw] route_id
      #   The identifier for the route this Pending Transaction came through. Routes are things like cards and ACH details.
      #   @return [String]
      required :route_id, String

      # @!attribute [rw] route_type
      #   The type of the route this Declined Transaction came through.
      #   @return [Symbol]
      required :route_type, Increase::Enum.new(:account_number, :card)

      # @!attribute [rw] source
      #   This is an object giving more details on the network-level event that caused the Pending Transaction. For example, for a card transaction this lists the merchant's industry and location.
      #   @return [Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73]
      required :source, -> { Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73 }

      # @!attribute [rw] status
      #   Whether the Pending Transaction has been confirmed and has an associated Transaction.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending, :complete)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `pending_transaction`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:pending_transaction)
    end
  end
end
