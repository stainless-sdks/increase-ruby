# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Cards#create
    class CardCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   #/components/schemas/create_a_card_parameters/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute [r] billing_address
      #   #/components/schemas/create_a_card_parameters/properties/billing_address
      #
      #   @return [Increase::Models::CardCreateParams::BillingAddress, nil]
      optional :billing_address, -> { Increase::Models::CardCreateParams::BillingAddress }

      # @!parse
      #   # @return [Increase::Models::CardCreateParams::BillingAddress]
      #   attr_writer :billing_address

      # @!attribute [r] description
      #   #/components/schemas/create_a_card_parameters/properties/description
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] digital_wallet
      #   #/components/schemas/create_a_card_parameters/properties/digital_wallet
      #
      #   @return [Increase::Models::CardCreateParams::DigitalWallet, nil]
      optional :digital_wallet, -> { Increase::Models::CardCreateParams::DigitalWallet }

      # @!parse
      #   # @return [Increase::Models::CardCreateParams::DigitalWallet]
      #   attr_writer :digital_wallet

      # @!attribute [r] entity_id
      #   #/components/schemas/create_a_card_parameters/properties/entity_id
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity_id

      # @!parse
      #   # @param account_id [String]
      #   # @param billing_address [Increase::Models::CardCreateParams::BillingAddress]
      #   # @param description [String]
      #   # @param digital_wallet [Increase::Models::CardCreateParams::DigitalWallet]
      #   # @param entity_id [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_id:,
      #     billing_address: nil,
      #     description: nil,
      #     digital_wallet: nil,
      #     entity_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class BillingAddress < Increase::Internal::Type::BaseModel
        # @!attribute city
        #   #/components/schemas/create_a_card_parameters/properties/billing_address/properties/city
        #
        #   @return [String]
        required :city, String

        # @!attribute line1
        #   #/components/schemas/create_a_card_parameters/properties/billing_address/properties/line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute postal_code
        #   #/components/schemas/create_a_card_parameters/properties/billing_address/properties/postal_code
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute state
        #   #/components/schemas/create_a_card_parameters/properties/billing_address/properties/state
        #
        #   @return [String]
        required :state, String

        # @!attribute [r] line2
        #   #/components/schemas/create_a_card_parameters/properties/billing_address/properties/line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :line2

        # @!parse
        #   # #/components/schemas/create_a_card_parameters/properties/billing_address
        #   #
        #   # @param city [String]
        #   # @param line1 [String]
        #   # @param postal_code [String]
        #   # @param state [String]
        #   # @param line2 [String]
        #   #
        #   def initialize(city:, line1:, postal_code:, state:, line2: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      class DigitalWallet < Increase::Internal::Type::BaseModel
        # @!attribute [r] digital_card_profile_id
        #   #/components/schemas/create_a_card_parameters/properties/digital_wallet/properties/digital_card_profile_id
        #
        #   @return [String, nil]
        optional :digital_card_profile_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :digital_card_profile_id

        # @!attribute [r] email
        #   #/components/schemas/create_a_card_parameters/properties/digital_wallet/properties/email
        #
        #   @return [String, nil]
        optional :email, String

        # @!parse
        #   # @return [String]
        #   attr_writer :email

        # @!attribute [r] phone
        #   #/components/schemas/create_a_card_parameters/properties/digital_wallet/properties/phone
        #
        #   @return [String, nil]
        optional :phone, String

        # @!parse
        #   # @return [String]
        #   attr_writer :phone

        # @!parse
        #   # #/components/schemas/create_a_card_parameters/properties/digital_wallet
        #   #
        #   # @param digital_card_profile_id [String]
        #   # @param email [String]
        #   # @param phone [String]
        #   #
        #   def initialize(digital_card_profile_id: nil, email: nil, phone: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
