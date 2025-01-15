# frozen_string_literal: true

module Increase
  module Models
    # @example
    #
    # ```ruby
    # card => {
    #   id: String,
    #   account_id: String,
    #   billing_address: Increase::Models::Card::BillingAddress,
    #   created_at: Time,
    #   description: String,
    #   **_
    # }
    # ```
    class Card < Increase::BaseModel
      # @!attribute id
      #   The card identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The identifier for the account this card belongs to.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute billing_address
      #   The Card's billing address.
      #
      #   @return [Increase::Models::Card::BillingAddress]
      required :billing_address, -> { Increase::Models::Card::BillingAddress }

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The card's description for display purposes.
      #
      #   @return [String, nil]
      required :description, String

      # @!attribute digital_wallet
      #   The contact information used in the two-factor steps for digital wallet card creation. At least one field must be present to complete the digital wallet steps.
      #
      #   @return [Increase::Models::Card::DigitalWallet, nil]
      required :digital_wallet, -> { Increase::Models::Card::DigitalWallet }

      # @!attribute entity_id
      #   The identifier for the entity associated with this card.
      #
      #   @return [String, nil]
      required :entity_id, String

      # @!attribute expiration_month
      #   The month the card expires in M format (e.g., August is 8).
      #
      #   @return [Integer]
      required :expiration_month, Integer

      # @!attribute expiration_year
      #   The year the card expires in YYYY format (e.g., 2025).
      #
      #   @return [Integer]
      required :expiration_year, Integer

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String

      # @!attribute last4
      #   The last 4 digits of the Card's Primary Account Number.
      #
      #   @return [String]
      required :last4, String

      # @!attribute status
      #   This indicates if payments can be made with the card.
      #
      #   @return [Symbol, Increase::Models::Card::Status]
      required :status, enum: -> { Increase::Models::Card::Status }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `card`.
      #
      #   @return [Symbol, Increase::Models::Card::Type]
      required :type, enum: -> { Increase::Models::Card::Type }

      # @!parse
      #   # Cards are commercial credit cards. They'll immediately work for online purchases
      #   #   after you create them. All cards maintain a credit limit of 100% of the
      #   #   Account’s available balance at the time of transaction. Funds are deducted from
      #   #   the Account upon transaction settlement.
      #   #
      #   # @param id [String] The card identifier.
      #   #
      #   # @param account_id [String] The identifier for the account this card belongs to.
      #   #
      #   # @param billing_address [Increase::Models::Card::BillingAddress] The Card's billing address.
      #   #
      #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #   the Card was created.
      #   #
      #   # @param description [String, nil] The card's description for display purposes.
      #   #
      #   # @param digital_wallet [Increase::Models::Card::DigitalWallet, nil] The contact information used in the two-factor steps for digital wallet card
      #   #   creation. At least one field must be present to complete the digital wallet
      #   #   steps.
      #   #
      #   # @param entity_id [String, nil] The identifier for the entity associated with this card.
      #   #
      #   # @param expiration_month [Integer] The month the card expires in M format (e.g., August is 8).
      #   #
      #   # @param expiration_year [Integer] The year the card expires in YYYY format (e.g., 2025).
      #   #
      #   # @param idempotency_key [String, nil] The idempotency key you chose for this object. This value is unique across
      #   #   Increase and is used to ensure that a request is only processed once. Learn more
      #   #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param last4 [String] The last 4 digits of the Card's Primary Account Number.
      #   #
      #   # @param status [String] This indicates if payments can be made with the card.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `card`.
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     billing_address:,
      #     created_at:,
      #     description:,
      #     digital_wallet:,
      #     entity_id:,
      #     expiration_month:,
      #     expiration_year:,
      #     idempotency_key:,
      #     last4:,
      #     status:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      #
      # ```ruby
      # billing_address => {
      #   city: String,
      #   line1: String,
      #   line2: String,
      #   postal_code: String,
      #   state: String
      # }
      # ```
      class BillingAddress < Increase::BaseModel
        # @!attribute city
        #   The city of the billing address.
        #
        #   @return [String, nil]
        required :city, String

        # @!attribute line1
        #   The first line of the billing address.
        #
        #   @return [String, nil]
        required :line1, String

        # @!attribute line2
        #   The second line of the billing address.
        #
        #   @return [String, nil]
        required :line2, String

        # @!attribute postal_code
        #   The postal code of the billing address.
        #
        #   @return [String, nil]
        required :postal_code, String

        # @!attribute state
        #   The US state of the billing address.
        #
        #   @return [String, nil]
        required :state, String

        # @!parse
        #   # The Card's billing address.
        #   #
        #   # @param city [String, nil] The city of the billing address.
        #   #
        #   # @param line1 [String, nil] The first line of the billing address.
        #   #
        #   # @param line2 [String, nil] The second line of the billing address.
        #   #
        #   # @param postal_code [String, nil] The postal code of the billing address.
        #   #
        #   # @param state [String, nil] The US state of the billing address.
        #   #
        #   def initialize(city:, line1:, line2:, postal_code:, state:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      #
      # ```ruby
      # digital_wallet => {
      #   digital_card_profile_id: String,
      #   email: String,
      #   phone: String
      # }
      # ```
      class DigitalWallet < Increase::BaseModel
        # @!attribute digital_card_profile_id
        #   The digital card profile assigned to this digital card. Card profiles may also be assigned at the program level.
        #
        #   @return [String, nil]
        required :digital_card_profile_id, String

        # @!attribute email
        #   An email address that can be used to verify the cardholder via one-time passcode over email.
        #
        #   @return [String, nil]
        required :email, String

        # @!attribute phone
        #   A phone number that can be used to verify the cardholder via one-time passcode over SMS.
        #
        #   @return [String, nil]
        required :phone, String

        # @!parse
        #   # The contact information used in the two-factor steps for digital wallet card
        #   #   creation. At least one field must be present to complete the digital wallet
        #   #   steps.
        #   #
        #   # @param digital_card_profile_id [String, nil] The digital card profile assigned to this digital card. Card profiles may also
        #   #   be assigned at the program level.
        #   #
        #   # @param email [String, nil] An email address that can be used to verify the cardholder via one-time passcode
        #   #   over email.
        #   #
        #   # @param phone [String, nil] A phone number that can be used to verify the cardholder via one-time passcode
        #   #   over SMS.
        #   #
        #   def initialize(digital_card_profile_id:, email:, phone:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # This indicates if payments can be made with the card.
      #
      # @example
      #
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :disabled
      #   # ...
      # in :canceled
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The card is active.
        ACTIVE = :active

        # The card is temporarily disabled.
        DISABLED = :disabled

        # The card is permanently canceled.
        CANCELED = :canceled

        finalize!
      end

      # A constant representing the object's type. For this resource it will always be `card`.
      #
      # @example
      #
      # ```ruby
      # case type
      # in :card
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        CARD = :card

        finalize!
      end
    end
  end
end
