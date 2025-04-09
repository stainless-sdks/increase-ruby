# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::DigitalWalletTokens#retrieve
    class DigitalWalletToken < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/digital_wallet_token/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute card_id
      #   #/components/schemas/digital_wallet_token/properties/card_id
      #
      #   @return [String]
      required :card_id, String

      # @!attribute cardholder
      #   #/components/schemas/digital_wallet_token/properties/cardholder
      #
      #   @return [Increase::Models::DigitalWalletToken::Cardholder]
      required :cardholder, -> { Increase::Models::DigitalWalletToken::Cardholder }

      # @!attribute created_at
      #   #/components/schemas/digital_wallet_token/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute device
      #   #/components/schemas/digital_wallet_token/properties/device
      #
      #   @return [Increase::Models::DigitalWalletToken::Device]
      required :device, -> { Increase::Models::DigitalWalletToken::Device }

      # @!attribute status
      #   #/components/schemas/digital_wallet_token/properties/status
      #
      #   @return [Symbol, Increase::Models::DigitalWalletToken::Status]
      required :status, enum: -> { Increase::Models::DigitalWalletToken::Status }

      # @!attribute token_requestor
      #   #/components/schemas/digital_wallet_token/properties/token_requestor
      #
      #   @return [Symbol, Increase::Models::DigitalWalletToken::TokenRequestor]
      required :token_requestor, enum: -> { Increase::Models::DigitalWalletToken::TokenRequestor }

      # @!attribute type
      #   #/components/schemas/digital_wallet_token/properties/type
      #
      #   @return [Symbol, Increase::Models::DigitalWalletToken::Type]
      required :type, enum: -> { Increase::Models::DigitalWalletToken::Type }

      # @!attribute updates
      #   #/components/schemas/digital_wallet_token/properties/updates
      #
      #   @return [Array<Increase::Models::DigitalWalletToken::Update>]
      required :updates, -> { Increase::Internal::Type::ArrayOf[Increase::Models::DigitalWalletToken::Update] }

      # @!parse
      #   # #/components/schemas/digital_wallet_token
      #   #
      #   # @param id [String]
      #   # @param card_id [String]
      #   # @param cardholder [Increase::Models::DigitalWalletToken::Cardholder]
      #   # @param created_at [Time]
      #   # @param device [Increase::Models::DigitalWalletToken::Device]
      #   # @param status [Symbol, Increase::Models::DigitalWalletToken::Status]
      #   # @param token_requestor [Symbol, Increase::Models::DigitalWalletToken::TokenRequestor]
      #   # @param type [Symbol, Increase::Models::DigitalWalletToken::Type]
      #   # @param updates [Array<Increase::Models::DigitalWalletToken::Update>]
      #   #
      #   def initialize(id:, card_id:, cardholder:, created_at:, device:, status:, token_requestor:, type:, updates:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::DigitalWalletToken#cardholder
      class Cardholder < Increase::Internal::Type::BaseModel
        # @!attribute name
        #   #/components/schemas/digital_wallet_token/properties/cardholder/properties/name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!parse
        #   # #/components/schemas/digital_wallet_token/properties/cardholder
        #   #
        #   # @param name [String, nil]
        #   #
        #   def initialize(name:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::DigitalWalletToken#device
      class Device < Increase::Internal::Type::BaseModel
        # @!attribute device_type
        #   #/components/schemas/digital_wallet_token/properties/device/properties/device_type
        #
        #   @return [Symbol, Increase::Models::DigitalWalletToken::Device::DeviceType, nil]
        required :device_type, enum: -> { Increase::Models::DigitalWalletToken::Device::DeviceType }, nil?: true

        # @!attribute identifier
        #   #/components/schemas/digital_wallet_token/properties/device/properties/identifier
        #
        #   @return [String, nil]
        required :identifier, String, nil?: true

        # @!attribute ip_address
        #   #/components/schemas/digital_wallet_token/properties/device/properties/ip_address
        #
        #   @return [String, nil]
        required :ip_address, String, nil?: true

        # @!attribute name
        #   #/components/schemas/digital_wallet_token/properties/device/properties/name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!parse
        #   # #/components/schemas/digital_wallet_token/properties/device
        #   #
        #   # @param device_type [Symbol, Increase::Models::DigitalWalletToken::Device::DeviceType, nil]
        #   # @param identifier [String, nil]
        #   # @param ip_address [String, nil]
        #   # @param name [String, nil]
        #   #
        #   def initialize(device_type:, identifier:, ip_address:, name:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/digital_wallet_token/properties/device/properties/device_type
        #
        # @see Increase::Models::DigitalWalletToken::Device#device_type
        module DeviceType
          extend Increase::Internal::Type::Enum

          # Unknown
          UNKNOWN = :unknown

          # Mobile Phone
          MOBILE_PHONE = :mobile_phone

          # Tablet
          TABLET = :tablet

          # Watch
          WATCH = :watch

          # Mobile Phone or Tablet
          MOBILEPHONE_OR_TABLET = :mobilephone_or_tablet

          # PC
          PC = :pc

          # Household Device
          HOUSEHOLD_DEVICE = :household_device

          # Wearable Device
          WEARABLE_DEVICE = :wearable_device

          # Automobile Device
          AUTOMOBILE_DEVICE = :automobile_device

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/digital_wallet_token/properties/status
      #
      # @see Increase::Models::DigitalWalletToken#status
      module Status
        extend Increase::Internal::Type::Enum

        # The digital wallet token is active.
        ACTIVE = :active

        # The digital wallet token has been created but not successfully activated via two-factor authentication yet.
        INACTIVE = :inactive

        # The digital wallet token has been temporarily paused.
        SUSPENDED = :suspended

        # The digital wallet token has been permanently canceled.
        DEACTIVATED = :deactivated

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/digital_wallet_token/properties/token_requestor
      #
      # @see Increase::Models::DigitalWalletToken#token_requestor
      module TokenRequestor
        extend Increase::Internal::Type::Enum

        # Apple Pay
        APPLE_PAY = :apple_pay

        # Google Pay
        GOOGLE_PAY = :google_pay

        # Samsung Pay
        SAMSUNG_PAY = :samsung_pay

        # Unknown
        UNKNOWN = :unknown

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/digital_wallet_token/properties/type
      #
      # @see Increase::Models::DigitalWalletToken#type
      module Type
        extend Increase::Internal::Type::Enum

        DIGITAL_WALLET_TOKEN = :digital_wallet_token

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      class Update < Increase::Internal::Type::BaseModel
        # @!attribute status
        #   #/components/schemas/digital_wallet_token/properties/updates/items/properties/status
        #
        #   @return [Symbol, Increase::Models::DigitalWalletToken::Update::Status]
        required :status, enum: -> { Increase::Models::DigitalWalletToken::Update::Status }

        # @!attribute timestamp
        #   #/components/schemas/digital_wallet_token/properties/updates/items/properties/timestamp
        #
        #   @return [Time]
        required :timestamp, Time

        # @!parse
        #   # #/components/schemas/digital_wallet_token/properties/updates/items
        #   #
        #   # @param status [Symbol, Increase::Models::DigitalWalletToken::Update::Status]
        #   # @param timestamp [Time]
        #   #
        #   def initialize(status:, timestamp:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/digital_wallet_token/properties/updates/items/properties/status
        #
        # @see Increase::Models::DigitalWalletToken::Update#status
        module Status
          extend Increase::Internal::Type::Enum

          # The digital wallet token is active.
          ACTIVE = :active

          # The digital wallet token has been created but not successfully activated via two-factor authentication yet.
          INACTIVE = :inactive

          # The digital wallet token has been temporarily paused.
          SUSPENDED = :suspended

          # The digital wallet token has been permanently canceled.
          DEACTIVATED = :deactivated

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
