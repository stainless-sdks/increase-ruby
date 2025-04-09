# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Cards#create
    class Card < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/card/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/card/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute billing_address
      #   #/components/schemas/card/properties/billing_address
      #
      #   @return [Increase::Models::Card::BillingAddress]
      required :billing_address, -> { Increase::Models::Card::BillingAddress }

      # @!attribute created_at
      #   #/components/schemas/card/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   #/components/schemas/card/properties/description
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute digital_wallet
      #   #/components/schemas/card/properties/digital_wallet
      #
      #   @return [Increase::Models::Card::DigitalWallet, nil]
      required :digital_wallet, -> { Increase::Models::Card::DigitalWallet }, nil?: true

      # @!attribute entity_id
      #   #/components/schemas/card/properties/entity_id
      #
      #   @return [String, nil]
      required :entity_id, String, nil?: true

      # @!attribute expiration_month
      #   #/components/schemas/card/properties/expiration_month
      #
      #   @return [Integer]
      required :expiration_month, Integer

      # @!attribute expiration_year
      #   #/components/schemas/card/properties/expiration_year
      #
      #   @return [Integer]
      required :expiration_year, Integer

      # @!attribute idempotency_key
      #   #/components/schemas/card/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute last4
      #   #/components/schemas/card/properties/last4
      #
      #   @return [String]
      required :last4, String

      # @!attribute status
      #   #/components/schemas/card/properties/status
      #
      #   @return [Symbol, Increase::Models::Card::Status]
      required :status, enum: -> { Increase::Models::Card::Status }

      # @!attribute type
      #   #/components/schemas/card/properties/type
      #
      #   @return [Symbol, Increase::Models::Card::Type]
      required :type, enum: -> { Increase::Models::Card::Type }

      # @!parse
      #   # #/components/schemas/card
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param billing_address [Increase::Models::Card::BillingAddress]
      #   # @param created_at [Time]
      #   # @param description [String, nil]
      #   # @param digital_wallet [Increase::Models::Card::DigitalWallet, nil]
      #   # @param entity_id [String, nil]
      #   # @param expiration_month [Integer]
      #   # @param expiration_year [Integer]
      #   # @param idempotency_key [String, nil]
      #   # @param last4 [String]
      #   # @param status [Symbol, Increase::Models::Card::Status]
      #   # @param type [Symbol, Increase::Models::Card::Type]
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

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::Card#billing_address
      class BillingAddress < Increase::Internal::Type::BaseModel
        # @!attribute city
        #   #/components/schemas/card/properties/billing_address/properties/city
        #
        #   @return [String, nil]
        required :city, String, nil?: true

        # @!attribute line1
        #   #/components/schemas/card/properties/billing_address/properties/line1
        #
        #   @return [String, nil]
        required :line1, String, nil?: true

        # @!attribute line2
        #   #/components/schemas/card/properties/billing_address/properties/line2
        #
        #   @return [String, nil]
        required :line2, String, nil?: true

        # @!attribute postal_code
        #   #/components/schemas/card/properties/billing_address/properties/postal_code
        #
        #   @return [String, nil]
        required :postal_code, String, nil?: true

        # @!attribute state
        #   #/components/schemas/card/properties/billing_address/properties/state
        #
        #   @return [String, nil]
        required :state, String, nil?: true

        # @!parse
        #   # #/components/schemas/card/properties/billing_address
        #   #
        #   # @param city [String, nil]
        #   # @param line1 [String, nil]
        #   # @param line2 [String, nil]
        #   # @param postal_code [String, nil]
        #   # @param state [String, nil]
        #   #
        #   def initialize(city:, line1:, line2:, postal_code:, state:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::Card#digital_wallet
      class DigitalWallet < Increase::Internal::Type::BaseModel
        # @!attribute digital_card_profile_id
        #   #/components/schemas/card/properties/digital_wallet/anyOf/0/properties/digital_card_profile_id
        #
        #   @return [String, nil]
        required :digital_card_profile_id, String, nil?: true

        # @!attribute email
        #   #/components/schemas/card/properties/digital_wallet/anyOf/0/properties/email
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute phone
        #   #/components/schemas/card/properties/digital_wallet/anyOf/0/properties/phone
        #
        #   @return [String, nil]
        required :phone, String, nil?: true

        # @!parse
        #   # #/components/schemas/card/properties/digital_wallet
        #   #
        #   # @param digital_card_profile_id [String, nil]
        #   # @param email [String, nil]
        #   # @param phone [String, nil]
        #   #
        #   def initialize(digital_card_profile_id:, email:, phone:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/card/properties/status
      #
      # @see Increase::Models::Card#status
      module Status
        extend Increase::Internal::Type::Enum

        # The card is active.
        ACTIVE = :active

        # The card is temporarily disabled.
        DISABLED = :disabled

        # The card is permanently canceled.
        CANCELED = :canceled

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/card/properties/type
      #
      # @see Increase::Models::Card#type
      module Type
        extend Increase::Internal::Type::Enum

        CARD = :card

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
