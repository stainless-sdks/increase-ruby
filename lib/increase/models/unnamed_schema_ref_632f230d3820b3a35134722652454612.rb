# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef632f230d3820b3a35134722652454612 < BaseModel
      # @!attribute [rw] id
      #   The Card Refund identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] card_payment_id
      #   The ID of the Card Payment this transaction belongs to.
      #   @return [String]
      required :card_payment_id, String

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] merchant_acceptor_id
      #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
      #   @return [String]
      required :merchant_acceptor_id, String

      # @!attribute [rw] merchant_category_code
      #   The 4-digit MCC describing the merchant's business.
      #   @return [String]
      required :merchant_category_code, String

      # @!attribute [rw] merchant_city
      #   The city the merchant resides in.
      #   @return [String]
      required :merchant_city, String

      # @!attribute [rw] merchant_country
      #   The country the merchant resides in.
      #   @return [String]
      required :merchant_country, String

      # @!attribute [rw] merchant_name
      #   The name of the merchant.
      #   @return [String]
      required :merchant_name, String

      # @!attribute [rw] merchant_state
      #   The state the merchant resides in.
      #   @return [String]
      required :merchant_state, String

      # @!attribute [rw] network_identifiers
      #   Network-specific identifiers for this refund.
      #   @return [Increase::Models::UnnamedSchemaRefBd145cfbb61bff565c9c591f45b4b8fa]
      required :network_identifiers, -> { Increase::Models::UnnamedSchemaRefBd145cfbb61bff565c9c591f45b4b8fa }

      # @!attribute [rw] purchase_details
      #   Additional details about the card purchase, such as tax and industry-specific fields.
      #   @return [Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7]
      required :purchase_details, -> { Increase::Models::UnnamedSchemaRef75134f1f3b8bcdca2a29e313daa6b6b7 }

      # @!attribute [rw] transaction_id
      #   The identifier of the Transaction associated with this Transaction.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `card_refund`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:card_refund)
    end
  end
end
