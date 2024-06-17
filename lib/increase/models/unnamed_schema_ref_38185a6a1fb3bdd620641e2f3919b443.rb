# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef38185a6a1fb3bdd620641e2f3919b443 < BaseModel
      # @!attribute [rw] id
      #   The Card Decline identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] actioner
      #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
      #   @return [Symbol]
      required :actioner, Increase::Enum.new(:user, :increase, :network)

      # @!attribute [rw] amount
      #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
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

      # @!attribute [rw] digital_wallet_token_id
      #   If the authorization was made via a Digital Wallet Token (such as an Apple Pay purchase), the identifier of the token that was used.
      #   @return [String]
      required :digital_wallet_token_id, String

      # @!attribute [rw] merchant_acceptor_id
      #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
      #   @return [String]
      required :merchant_acceptor_id, String

      # @!attribute [rw] merchant_category_code
      #   The Merchant Category Code (commonly abbreviated as MCC) of the merchant the card is transacting with.
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

      # @!attribute [rw] merchant_descriptor
      #   The merchant descriptor of the merchant the card is transacting with.
      #   @return [String]
      required :merchant_descriptor, String

      # @!attribute [rw] merchant_state
      #   The state the merchant resides in.
      #   @return [String]
      required :merchant_state, String

      # @!attribute [rw] network_details
      #   Fields specific to the `network`.
      #   @return [Increase::Models::UnnamedSchemaRefD0a57d7eb12023d4b4462ea03d5e65dc]
      required :network_details, -> { Increase::Models::UnnamedSchemaRefD0a57d7eb12023d4b4462ea03d5e65dc }

      # @!attribute [rw] network_identifiers
      #   Network-specific identifiers for a specific request or transaction.
      #   @return [Increase::Models::UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393]
      required :network_identifiers, -> { Increase::Models::UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393 }

      # @!attribute [rw] network_risk_score
      #   The risk score generated by the card network. For Visa this is the Visa Advanced Authorization risk score, from 0 to 99, where 99 is the riskiest.
      #   @return [Integer]
      required :network_risk_score, Integer

      # @!attribute [rw] physical_card_id
      #   If the authorization was made in-person with a physical card, the Physical Card that was used.
      #   @return [String]
      required :physical_card_id, String

      # @!attribute [rw] presentment_amount
      #   The declined amount in the minor unit of the transaction's presentment currency.
      #   @return [Integer]
      required :presentment_amount, Integer

      # @!attribute [rw] presentment_currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's presentment currency.
      #   @return [String]
      required :presentment_currency, String

      # @!attribute [rw] processing_category
      #   The processing category describes the intent behind the authorization, such as whether it was used for bill payments or an automatic fuel dispenser.
      #   @return [Symbol]
      required :processing_category,
               Increase::Enum.new(
                 :account_funding,
                 :automatic_fuel_dispenser,
                 :bill_payment,
                 :purchase,
                 :quasi_cash,
                 :refund
               )

      # @!attribute [rw] real_time_decision_id
      #   The identifier of the Real-Time Decision sent to approve or decline this transaction.
      #   @return [String]
      required :real_time_decision_id, String

      # @!attribute [rw] reason
      #   Why the transaction was declined.
      #   @return [Symbol]
      required :reason,
               Increase::Enum.new(
                 :card_not_active,
                 :physical_card_not_active,
                 :entity_not_active,
                 :group_locked,
                 :insufficient_funds,
                 :cvv2_mismatch,
                 :transaction_not_allowed,
                 :breaches_limit,
                 :webhook_declined,
                 :webhook_timed_out,
                 :declined_by_stand_in_processing,
                 :invalid_physical_card,
                 :missing_original_authorization,
                 :suspected_fraud
               )

      # @!attribute [rw] verification
      #   Fields related to verification of cardholder-provided values.
      #   @return [Increase::Models::UnnamedSchemaRef895b1a0d84a5e8bb20deea91ed5ba88e]
      required :verification, -> { Increase::Models::UnnamedSchemaRef895b1a0d84a5e8bb20deea91ed5ba88e }
    end
  end
end
