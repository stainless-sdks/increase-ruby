# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Cards#update
    class CardUpdateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute billing_address
      #   The card's updated billing address.
      #
      #   @return [Increase::Models::CardUpdateParams::BillingAddress, nil]
      optional :billing_address, -> { Increase::Models::CardUpdateParams::BillingAddress }

      # @!attribute description
      #   The description you choose to give the card.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute digital_wallet
      #   The contact information used in the two-factor steps for digital wallet card
      #   creation. At least one field must be present to complete the digital wallet
      #   steps.
      #
      #   @return [Increase::Models::CardUpdateParams::DigitalWallet, nil]
      optional :digital_wallet, -> { Increase::Models::CardUpdateParams::DigitalWallet }

      # @!attribute entity_id
      #   The Entity the card belongs to. You only need to supply this in rare situations
      #   when the card is not for the Account holder.
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!attribute status
      #   The status to update the Card with.
      #
      #   @return [Symbol, Increase::Models::CardUpdateParams::Status, nil]
      optional :status, enum: -> { Increase::Models::CardUpdateParams::Status }

      # @!method initialize(billing_address: nil, description: nil, digital_wallet: nil, entity_id: nil, status: nil, request_options: {})
      #   @param billing_address [Increase::Models::CardUpdateParams::BillingAddress]
      #   @param description [String]
      #   @param digital_wallet [Increase::Models::CardUpdateParams::DigitalWallet]
      #   @param entity_id [String]
      #   @param status [Symbol, Increase::Models::CardUpdateParams::Status]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      class BillingAddress < Increase::Internal::Type::BaseModel
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
        #   @return [String, nil]
        optional :line2, String

        # @!method initialize(city:, line1:, postal_code:, state:, line2: nil)
        #   The card's updated billing address.
        #
        #   @param city [String]
        #   @param line1 [String]
        #   @param postal_code [String]
        #   @param state [String]
        #   @param line2 [String]
      end

      class DigitalWallet < Increase::Internal::Type::BaseModel
        # @!attribute digital_card_profile_id
        #   The digital card profile assigned to this digital card.
        #
        #   @return [String, nil]
        optional :digital_card_profile_id, String

        # @!attribute email
        #   An email address that can be used to verify the cardholder via one-time passcode
        #   over email.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute phone
        #   A phone number that can be used to verify the cardholder via one-time passcode
        #   over SMS.
        #
        #   @return [String, nil]
        optional :phone, String

        # @!method initialize(digital_card_profile_id: nil, email: nil, phone: nil)
        #   The contact information used in the two-factor steps for digital wallet card
        #   creation. At least one field must be present to complete the digital wallet
        #   steps.
        #
        #   @param digital_card_profile_id [String]
        #   @param email [String]
        #   @param phone [String]
      end

      # The status to update the Card with.
      module Status
        extend Increase::Internal::Type::Enum

        # The card is active.
        ACTIVE = :active

        # The card is temporarily disabled.
        DISABLED = :disabled

        # The card is permanently canceled.
        CANCELED = :canceled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
