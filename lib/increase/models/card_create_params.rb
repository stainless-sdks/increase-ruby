# frozen_string_literal: true

module Increase
  module Models
    class CardCreateParams < Increase::BaseModel
      # @!attribute account_id
      #   The Account the card should belong to.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute billing_address
      #   The card's billing address.
      #
      #   @return [Increase::Models::CardCreateParams::BillingAddress]
      optional :billing_address, -> { Increase::Models::CardCreateParams::BillingAddress }

      # @!attribute description
      #   The description you choose to give the card.
      #
      #   @return [String]
      optional :description, String

      # @!attribute digital_wallet
      #   The contact information used in the two-factor steps for digital wallet card creation. To add the card to a digital wallet, you may supply an email or phone number with this request. Otherwise, subscribe and then action a Real Time Decision with the category `digital_wallet_token_requested` or `digital_wallet_authentication_requested`.
      #
      #   @return [Increase::Models::CardCreateParams::DigitalWallet]
      optional :digital_wallet, -> { Increase::Models::CardCreateParams::DigitalWallet }

      # @!attribute entity_id
      #   The Entity the card belongs to. You only need to supply this in rare situations when the card is not for the Account holder.
      #
      #   @return [String]
      optional :entity_id, String

      # @!parse
      #   # @param account_id [String] The Account the card should belong to.
      #   #
      #   # @param billing_address [Increase::Models::CardCreateParams::BillingAddress] The card's billing address.
      #   #
      #   # @param description [String] The description you choose to give the card.
      #   #
      #   # @param digital_wallet [Increase::Models::CardCreateParams::DigitalWallet] The contact information used in the two-factor steps for digital wallet card
      #   #   creation. To add the card to a digital wallet, you may supply an email or phone
      #   #   number with this request. Otherwise, subscribe and then action a Real Time
      #   #   Decision with the category `digital_wallet_token_requested` or
      #   #   `digital_wallet_authentication_requested`.
      #   #
      #   # @param entity_id [String] The Entity the card belongs to. You only need to supply this in rare situations
      #   #   when the card is not for the Account holder.
      #   #
      #   def initialize(account_id:, billing_address: nil, description: nil, digital_wallet: nil, entity_id: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      #
      # ```ruby
      # billing_address => {
      #   city: String,
      #   line1: String,
      #   postal_code: String,
      #   state: String,
      #   line2: String
      # }
      # ```
      class BillingAddress < Increase::BaseModel
        # @!attribute city
        #   The city of the billing address.
        #
        #   @return [String]
        required :city, String

        # @!attribute line1
        #   The first line of the billing address.
        #
        #   @return [String]
        required :line1, String

        # @!attribute postal_code
        #   The postal code of the billing address.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute state
        #   The US state of the billing address.
        #
        #   @return [String]
        required :state, String

        # @!attribute line2
        #   The second line of the billing address.
        #
        #   @return [String]
        optional :line2, String

        # @!parse
        #   # The card's billing address.
        #   #
        #   # @param city [String] The city of the billing address.
        #   #
        #   # @param line1 [String] The first line of the billing address.
        #   #
        #   # @param postal_code [String] The postal code of the billing address.
        #   #
        #   # @param state [String] The US state of the billing address.
        #   #
        #   # @param line2 [String] The second line of the billing address.
        #   #
        #   def initialize(city:, line1:, postal_code:, state:, line2: nil, **) = super

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
        #   The digital card profile assigned to this digital card.
        #
        #   @return [String]
        optional :digital_card_profile_id, String

        # @!attribute email
        #   An email address that can be used to contact and verify the cardholder via one-time passcode over email.
        #
        #   @return [String]
        optional :email, String

        # @!attribute phone
        #   A phone number that can be used to contact and verify the cardholder via one-time passcode over SMS.
        #
        #   @return [String]
        optional :phone, String

        # @!parse
        #   # The contact information used in the two-factor steps for digital wallet card
        #   #   creation. To add the card to a digital wallet, you may supply an email or phone
        #   #   number with this request. Otherwise, subscribe and then action a Real Time
        #   #   Decision with the category `digital_wallet_token_requested` or
        #   #   `digital_wallet_authentication_requested`.
        #   #
        #   # @param digital_card_profile_id [String] The digital card profile assigned to this digital card.
        #   #
        #   # @param email [String] An email address that can be used to contact and verify the cardholder via
        #   #   one-time passcode over email.
        #   #
        #   # @param phone [String] A phone number that can be used to contact and verify the cardholder via
        #   #   one-time passcode over SMS.
        #   #
        #   def initialize(digital_card_profile_id: nil, email: nil, phone: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
