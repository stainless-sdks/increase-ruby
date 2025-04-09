# typed: strong

module Increase
  module Models
    class DigitalWalletToken < Increase::Internal::Type::BaseModel
      # #/components/schemas/digital_wallet_token/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/digital_wallet_token/properties/card_id
      sig { returns(String) }
      attr_accessor :card_id

      # #/components/schemas/digital_wallet_token/properties/cardholder
      sig { returns(Increase::Models::DigitalWalletToken::Cardholder) }
      attr_reader :cardholder

      sig do
        params(cardholder: T.any(Increase::Models::DigitalWalletToken::Cardholder, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :cardholder

      # #/components/schemas/digital_wallet_token/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/digital_wallet_token/properties/device
      sig { returns(Increase::Models::DigitalWalletToken::Device) }
      attr_reader :device

      sig { params(device: T.any(Increase::Models::DigitalWalletToken::Device, Increase::Internal::AnyHash)).void }
      attr_writer :device

      # #/components/schemas/digital_wallet_token/properties/status
      sig { returns(Increase::Models::DigitalWalletToken::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/digital_wallet_token/properties/token_requestor
      sig { returns(Increase::Models::DigitalWalletToken::TokenRequestor::TaggedSymbol) }
      attr_accessor :token_requestor

      # #/components/schemas/digital_wallet_token/properties/type
      sig { returns(Increase::Models::DigitalWalletToken::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/digital_wallet_token/properties/updates
      sig { returns(T::Array[Increase::Models::DigitalWalletToken::Update]) }
      attr_accessor :updates

      # #/components/schemas/digital_wallet_token
      sig do
        params(
          id: String,
          card_id: String,
          cardholder: T.any(Increase::Models::DigitalWalletToken::Cardholder, Increase::Internal::AnyHash),
          created_at: Time,
          device: T.any(Increase::Models::DigitalWalletToken::Device, Increase::Internal::AnyHash),
          status: Increase::Models::DigitalWalletToken::Status::OrSymbol,
          token_requestor: Increase::Models::DigitalWalletToken::TokenRequestor::OrSymbol,
          type: Increase::Models::DigitalWalletToken::Type::OrSymbol,
          updates: T::Array[T.any(Increase::Models::DigitalWalletToken::Update, Increase::Internal::AnyHash)]
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        card_id:,
        cardholder:,
        created_at:,
        device:,
        status:,
        token_requestor:,
        type:,
        updates:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              card_id: String,
              cardholder: Increase::Models::DigitalWalletToken::Cardholder,
              created_at: Time,
              device: Increase::Models::DigitalWalletToken::Device,
              status: Increase::Models::DigitalWalletToken::Status::TaggedSymbol,
              token_requestor: Increase::Models::DigitalWalletToken::TokenRequestor::TaggedSymbol,
              type: Increase::Models::DigitalWalletToken::Type::TaggedSymbol,
              updates: T::Array[Increase::Models::DigitalWalletToken::Update]
            }
          )
      end
      def to_hash; end

      class Cardholder < Increase::Internal::Type::BaseModel
        # #/components/schemas/digital_wallet_token/properties/cardholder/properties/name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # #/components/schemas/digital_wallet_token/properties/cardholder
        sig { params(name: T.nilable(String)).returns(T.attached_class) }
        def self.new(name:); end

        sig { override.returns({name: T.nilable(String)}) }
        def to_hash; end
      end

      class Device < Increase::Internal::Type::BaseModel
        # #/components/schemas/digital_wallet_token/properties/device/properties/device_type
        sig { returns(T.nilable(Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol)) }
        attr_accessor :device_type

        # #/components/schemas/digital_wallet_token/properties/device/properties/identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :identifier

        # #/components/schemas/digital_wallet_token/properties/device/properties/ip_address
        sig { returns(T.nilable(String)) }
        attr_accessor :ip_address

        # #/components/schemas/digital_wallet_token/properties/device/properties/name
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # #/components/schemas/digital_wallet_token/properties/device
        sig do
          params(
            device_type: T.nilable(Increase::Models::DigitalWalletToken::Device::DeviceType::OrSymbol),
            identifier: T.nilable(String),
            ip_address: T.nilable(String),
            name: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(device_type:, identifier:, ip_address:, name:); end

        sig do
          override
            .returns(
              {
                device_type: T.nilable(Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol),
                identifier: T.nilable(String),
                ip_address: T.nilable(String),
                name: T.nilable(String)
              }
            )
        end
        def to_hash; end

        # #/components/schemas/digital_wallet_token/properties/device/properties/device_type
        module DeviceType
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DigitalWalletToken::Device::DeviceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol) }

          # Unknown
          UNKNOWN = T.let(:unknown, Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol)

          # Mobile Phone
          MOBILE_PHONE =
            T.let(:mobile_phone, Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol)

          # Tablet
          TABLET = T.let(:tablet, Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol)

          # Watch
          WATCH = T.let(:watch, Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol)

          # Mobile Phone or Tablet
          MOBILEPHONE_OR_TABLET =
            T.let(:mobilephone_or_tablet, Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol)

          # PC
          PC = T.let(:pc, Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol)

          # Household Device
          HOUSEHOLD_DEVICE =
            T.let(:household_device, Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol)

          # Wearable Device
          WEARABLE_DEVICE =
            T.let(:wearable_device, Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol)

          # Automobile Device
          AUTOMOBILE_DEVICE =
            T.let(:automobile_device, Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::DigitalWalletToken::Device::DeviceType::TaggedSymbol]) }
          def self.values; end
        end
      end

      # #/components/schemas/digital_wallet_token/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DigitalWalletToken::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::DigitalWalletToken::Status::TaggedSymbol) }

        # The digital wallet token is active.
        ACTIVE = T.let(:active, Increase::Models::DigitalWalletToken::Status::TaggedSymbol)

        # The digital wallet token has been created but not successfully activated via two-factor authentication yet.
        INACTIVE = T.let(:inactive, Increase::Models::DigitalWalletToken::Status::TaggedSymbol)

        # The digital wallet token has been temporarily paused.
        SUSPENDED = T.let(:suspended, Increase::Models::DigitalWalletToken::Status::TaggedSymbol)

        # The digital wallet token has been permanently canceled.
        DEACTIVATED = T.let(:deactivated, Increase::Models::DigitalWalletToken::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::DigitalWalletToken::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/digital_wallet_token/properties/token_requestor
      module TokenRequestor
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DigitalWalletToken::TokenRequestor) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::DigitalWalletToken::TokenRequestor::TaggedSymbol) }

        # Apple Pay
        APPLE_PAY = T.let(:apple_pay, Increase::Models::DigitalWalletToken::TokenRequestor::TaggedSymbol)

        # Google Pay
        GOOGLE_PAY = T.let(:google_pay, Increase::Models::DigitalWalletToken::TokenRequestor::TaggedSymbol)

        # Samsung Pay
        SAMSUNG_PAY = T.let(:samsung_pay, Increase::Models::DigitalWalletToken::TokenRequestor::TaggedSymbol)

        # Unknown
        UNKNOWN = T.let(:unknown, Increase::Models::DigitalWalletToken::TokenRequestor::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::DigitalWalletToken::TokenRequestor::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/digital_wallet_token/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DigitalWalletToken::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::DigitalWalletToken::Type::TaggedSymbol) }

        DIGITAL_WALLET_TOKEN =
          T.let(:digital_wallet_token, Increase::Models::DigitalWalletToken::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::DigitalWalletToken::Type::TaggedSymbol]) }
        def self.values; end
      end

      class Update < Increase::Internal::Type::BaseModel
        # #/components/schemas/digital_wallet_token/properties/updates/items/properties/status
        sig { returns(Increase::Models::DigitalWalletToken::Update::Status::TaggedSymbol) }
        attr_accessor :status

        # #/components/schemas/digital_wallet_token/properties/updates/items/properties/timestamp
        sig { returns(Time) }
        attr_accessor :timestamp

        # #/components/schemas/digital_wallet_token/properties/updates/items
        sig do
          params(status: Increase::Models::DigitalWalletToken::Update::Status::OrSymbol, timestamp: Time)
            .returns(T.attached_class)
        end
        def self.new(status:, timestamp:); end

        sig do
          override
            .returns({status: Increase::Models::DigitalWalletToken::Update::Status::TaggedSymbol, timestamp: Time})
        end
        def to_hash; end

        # #/components/schemas/digital_wallet_token/properties/updates/items/properties/status
        module Status
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DigitalWalletToken::Update::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::DigitalWalletToken::Update::Status::TaggedSymbol) }

          # The digital wallet token is active.
          ACTIVE = T.let(:active, Increase::Models::DigitalWalletToken::Update::Status::TaggedSymbol)

          # The digital wallet token has been created but not successfully activated via two-factor authentication yet.
          INACTIVE = T.let(:inactive, Increase::Models::DigitalWalletToken::Update::Status::TaggedSymbol)

          # The digital wallet token has been temporarily paused.
          SUSPENDED = T.let(:suspended, Increase::Models::DigitalWalletToken::Update::Status::TaggedSymbol)

          # The digital wallet token has been permanently canceled.
          DEACTIVATED = T.let(:deactivated, Increase::Models::DigitalWalletToken::Update::Status::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::DigitalWalletToken::Update::Status::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
