# frozen_string_literal: true

module Increase
  module Models
    class CardPayment < BaseModel
      # @!attribute [rw] id
      #   The Card Payment identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the Account the Transaction belongs to.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] card_id
      #   The Card identifier for this payment.
      #   @return [String]
      required :card_id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Card Payment was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] elements
      #   The interactions related to this card payment.
      #   @return [Array<Increase::Models::CardPayment::Element>]
      required :elements, Increase::ArrayOf.new(-> { Increase::Models::CardPayment::Element })

      # @!attribute [rw] state
      #   The summarized state of this card payment.
      #   @return [Increase::Models::CardPayment::State]
      required :state, -> { Increase::Models::CardPayment::State }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `card_payment`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:card_payment)

      class Element < BaseModel
        # @!attribute [rw] card_authorization
        #   A Card Authorization object. This field will be present in the JSON response if and only if `category` is equal to `card_authorization`.
        #   @return [Increase::Models::UnnamedSchemaRef8b9d6b6c383dcd8b3ff661d45da975bd]
        required :card_authorization,
                 lambda {
                   Increase::Models::UnnamedSchemaRef8b9d6b6c383dcd8b3ff661d45da975bd
                 }

        # @!attribute [rw] card_authorization_expiration
        #   A Card Authorization Expiration object. This field will be present in the JSON response if and only if `category` is equal to `card_authorization_expiration`.
        #   @return [Increase::Models::CardPayment::Element::CardAuthorizationExpiration]
        required :card_authorization_expiration,
                 -> { Increase::Models::CardPayment::Element::CardAuthorizationExpiration }

        # @!attribute [rw] card_decline
        #   A Card Decline object. This field will be present in the JSON response if and only if `category` is equal to `card_decline`.
        #   @return [Increase::Models::UnnamedSchemaRef38185a6a1fb3bdd620641e2f3919b443]
        required :card_decline, -> { Increase::Models::UnnamedSchemaRef38185a6a1fb3bdd620641e2f3919b443 }

        # @!attribute [rw] card_fuel_confirmation
        #   A Card Fuel Confirmation object. This field will be present in the JSON response if and only if `category` is equal to `card_fuel_confirmation`.
        #   @return [Increase::Models::CardPayment::Element::CardFuelConfirmation]
        required :card_fuel_confirmation, -> { Increase::Models::CardPayment::Element::CardFuelConfirmation }

        # @!attribute [rw] card_increment
        #   A Card Increment object. This field will be present in the JSON response if and only if `category` is equal to `card_increment`.
        #   @return [Increase::Models::CardPayment::Element::CardIncrement]
        required :card_increment, -> { Increase::Models::CardPayment::Element::CardIncrement }

        # @!attribute [rw] card_refund
        #   A Card Refund object. This field will be present in the JSON response if and only if `category` is equal to `card_refund`.
        #   @return [Increase::Models::UnnamedSchemaRef632f230d3820b3a35134722652454612]
        required :card_refund, -> { Increase::Models::UnnamedSchemaRef632f230d3820b3a35134722652454612 }

        # @!attribute [rw] card_reversal
        #   A Card Reversal object. This field will be present in the JSON response if and only if `category` is equal to `card_reversal`.
        #   @return [Increase::Models::CardPayment::Element::CardReversal]
        required :card_reversal, -> { Increase::Models::CardPayment::Element::CardReversal }

        # @!attribute [rw] card_settlement
        #   A Card Settlement object. This field will be present in the JSON response if and only if `category` is equal to `card_settlement`.
        #   @return [Increase::Models::UnnamedSchemaRef447a61c8e208e7255229de863312f968]
        required :card_settlement, -> { Increase::Models::UnnamedSchemaRef447a61c8e208e7255229de863312f968 }

        # @!attribute [rw] card_validation
        #   A Card Validation object. This field will be present in the JSON response if and only if `category` is equal to `card_validation`.
        #   @return [Increase::Models::CardPayment::Element::CardValidation]
        required :card_validation, -> { Increase::Models::CardPayment::Element::CardValidation }

        # @!attribute [rw] category
        #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #   @return [Symbol]
        required :category,
                 Increase::Enum.new(
                   :card_authorization,
                   :card_validation,
                   :card_decline,
                   :card_reversal,
                   :card_authorization_expiration,
                   :card_increment,
                   :card_settlement,
                   :card_refund,
                   :card_fuel_confirmation,
                   :other
                 )

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the card payment element was created.
        #   @return [String]
        required :created_at, String

        class CardAuthorizationExpiration < BaseModel
          # @!attribute [rw] id
          #   The Card Authorization Expiration identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] card_authorization_id
          #   The identifier for the Card Authorization this reverses.
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] expired_amount
          #   The amount of this authorization expiration in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :expired_amount, Integer

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol]
          required :network, Increase::Enum.new(:visa)

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_authorization_expiration`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_authorization_expiration)
        end

        class CardFuelConfirmation < BaseModel
          # @!attribute [rw] id
          #   The Card Fuel Confirmation identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] card_authorization_id
          #   The identifier for the Card Authorization this updates.
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol]
          required :network, Increase::Enum.new(:visa)

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393]
          required :network_identifiers,
                   lambda {
                     Increase::Models::UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393
                   }

          # @!attribute [rw] pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Card Fuel Confirmation.
          #   @return [String]
          required :pending_transaction_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_fuel_confirmation`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_fuel_confirmation)

          # @!attribute [rw] updated_authorization_amount
          #   The updated authorization amount after this fuel confirmation, in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :updated_authorization_amount, Integer
        end

        class CardIncrement < BaseModel
          # @!attribute [rw] id
          #   The Card Increment identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol]
          required :actioner, Increase::Enum.new(:user, :increase, :network)

          # @!attribute [rw] amount
          #   The amount of this increment in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] card_authorization_id
          #   The identifier for the Card Authorization this increments.
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol]
          required :network, Increase::Enum.new(:visa)

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393]
          required :network_identifiers,
                   lambda {
                     Increase::Models::UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393
                   }

          # @!attribute [rw] network_risk_score
          #   The risk score generated by the card network. For Visa this is the Visa Advanced Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   @return [Integer]
          required :network_risk_score, Integer

          # @!attribute [rw] pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Card Increment.
          #   @return [String]
          required :pending_transaction_id, String

          # @!attribute [rw] real_time_decision_id
          #   The identifier of the Real-Time Decision sent to approve or decline this incremental authorization.
          #   @return [String]
          required :real_time_decision_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_increment`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_increment)

          # @!attribute [rw] updated_authorization_amount
          #   The updated authorization amount after this increment, in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :updated_authorization_amount, Integer
        end

        class CardReversal < BaseModel
          # @!attribute [rw] id
          #   The Card Reversal identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] card_authorization_id
          #   The identifier for the Card Authorization this reverses.
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol]
          required :network, Increase::Enum.new(:visa)

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393]
          required :network_identifiers,
                   lambda {
                     Increase::Models::UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393
                   }

          # @!attribute [rw] pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Card Reversal.
          #   @return [String]
          required :pending_transaction_id, String

          # @!attribute [rw] reversal_amount
          #   The amount of this reversal in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :reversal_amount, Integer

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_reversal`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_reversal)

          # @!attribute [rw] updated_authorization_amount
          #   The amount left pending on the Card Authorization in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :updated_authorization_amount, Integer
        end

        class CardValidation < BaseModel
          # @!attribute [rw] id
          #   The Card Validation identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol]
          required :actioner, Increase::Enum.new(:user, :increase, :network)

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

          # @!attribute [rw] network_details
          #   Fields specific to the `network`.
          #   @return [Increase::Models::UnnamedSchemaRefD0a57d7eb12023d4b4462ea03d5e65dc]
          required :network_details, -> { Increase::Models::UnnamedSchemaRefD0a57d7eb12023d4b4462ea03d5e65dc }

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393]
          required :network_identifiers,
                   lambda {
                     Increase::Models::UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393
                   }

          # @!attribute [rw] network_risk_score
          #   The risk score generated by the card network. For Visa this is the Visa Advanced Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   @return [Integer]
          required :network_risk_score, Integer

          # @!attribute [rw] physical_card_id
          #   If the authorization was made in-person with a physical card, the Physical Card that was used.
          #   @return [String]
          required :physical_card_id, String

          # @!attribute [rw] real_time_decision_id
          #   The identifier of the Real-Time Decision sent to approve or decline this transaction.
          #   @return [String]
          required :real_time_decision_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_validation`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_validation)

          # @!attribute [rw] verification
          #   Fields related to verification of cardholder-provided values.
          #   @return [Increase::Models::UnnamedSchemaRef895b1a0d84a5e8bb20deea91ed5ba88e]
          required :verification, -> { Increase::Models::UnnamedSchemaRef895b1a0d84a5e8bb20deea91ed5ba88e }
        end
      end

      class State < BaseModel
        # @!attribute [rw] authorized_amount
        #   The total authorized amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :authorized_amount, Integer

        # @!attribute [rw] fuel_confirmed_amount
        #   The total amount from fuel confirmations in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :fuel_confirmed_amount, Integer

        # @!attribute [rw] incremented_amount
        #   The total incrementally updated authorized amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :incremented_amount, Integer

        # @!attribute [rw] reversed_amount
        #   The total reversed amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :reversed_amount, Integer

        # @!attribute [rw] settled_amount
        #   The total settled or refunded amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :settled_amount, Integer
      end
    end
  end
end
