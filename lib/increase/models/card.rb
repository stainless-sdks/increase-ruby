# frozen_string_literal: true

module Increase
  module Models
    class Card < BaseModel
      # @!attribute [rw] id
      #   The card identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the account this card belongs to.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] billing_address
      #   The Card's billing address.
      #   @return [Increase::Models::Card::BillingAddress]
      required :billing_address, -> { Increase::Models::Card::BillingAddress }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] description
      #   The card's description for display purposes.
      #   @return [String]
      required :description, String

      # @!attribute [rw] digital_wallet
      #   The contact information used in the two-factor steps for digital wallet card creation. At least one field must be present to complete the digital wallet steps.
      #   @return [Increase::Models::Card::DigitalWallet]
      required :digital_wallet, -> { Increase::Models::Card::DigitalWallet }

      # @!attribute [rw] entity_id
      #   The identifier for the entity associated with this card.
      #   @return [String]
      required :entity_id, String

      # @!attribute [rw] expiration_month
      #   The month the card expires in M format (e.g., August is 8).
      #   @return [Integer]
      required :expiration_month, Integer

      # @!attribute [rw] expiration_year
      #   The year the card expires in YYYY format (e.g., 2025).
      #   @return [Integer]
      required :expiration_year, Integer

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] last4
      #   The last 4 digits of the Card's Primary Account Number.
      #   @return [String]
      required :last4, String

      # @!attribute [rw] status
      #   This indicates if payments can be made with the card.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:active, :disabled, :canceled)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `card`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:card)

      class BillingAddress < BaseModel
        # @!attribute [rw] city
        #   The city of the billing address.
        #   @return [String]
        required :city, String

        # @!attribute [rw] line1
        #   The first line of the billing address.
        #   @return [String]
        required :line1, String

        # @!attribute [rw] line2
        #   The second line of the billing address.
        #   @return [String]
        required :line2, String

        # @!attribute [rw] postal_code
        #   The postal code of the billing address.
        #   @return [String]
        required :postal_code, String

        # @!attribute [rw] state
        #   The US state of the billing address.
        #   @return [String]
        required :state, String
      end

      class DigitalWallet < BaseModel
        # @!attribute [rw] digital_card_profile_id
        #   The digital card profile assigned to this digital card. Card profiles may also be assigned at the program level.
        #   @return [String]
        required :digital_card_profile_id, String

        # @!attribute [rw] email
        #   An email address that can be used to verify the cardholder via one-time passcode over email.
        #   @return [String]
        required :email, String

        # @!attribute [rw] phone
        #   A phone number that can be used to verify the cardholder via one-time passcode over SMS.
        #   @return [String]
        required :phone, String
      end
    end
  end
end
