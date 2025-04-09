# typed: strong

module Increase
  module Models
    class Card < Increase::Internal::Type::BaseModel
      # #/components/schemas/card/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/card/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/card/properties/billing_address
      sig { returns(Increase::Models::Card::BillingAddress) }
      attr_reader :billing_address

      sig { params(billing_address: T.any(Increase::Models::Card::BillingAddress, Increase::Internal::AnyHash)).void }
      attr_writer :billing_address

      # #/components/schemas/card/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/card/properties/description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # #/components/schemas/card/properties/digital_wallet
      sig { returns(T.nilable(Increase::Models::Card::DigitalWallet)) }
      attr_reader :digital_wallet

      sig do
        params(
          digital_wallet: T.nilable(T.any(Increase::Models::Card::DigitalWallet, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :digital_wallet

      # #/components/schemas/card/properties/entity_id
      sig { returns(T.nilable(String)) }
      attr_accessor :entity_id

      # #/components/schemas/card/properties/expiration_month
      sig { returns(Integer) }
      attr_accessor :expiration_month

      # #/components/schemas/card/properties/expiration_year
      sig { returns(Integer) }
      attr_accessor :expiration_year

      # #/components/schemas/card/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/card/properties/last4
      sig { returns(String) }
      attr_accessor :last4

      # #/components/schemas/card/properties/status
      sig { returns(Increase::Models::Card::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/card/properties/type
      sig { returns(Increase::Models::Card::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/card
      sig do
        params(
          id: String,
          account_id: String,
          billing_address: T.any(Increase::Models::Card::BillingAddress, Increase::Internal::AnyHash),
          created_at: Time,
          description: T.nilable(String),
          digital_wallet: T.nilable(T.any(Increase::Models::Card::DigitalWallet, Increase::Internal::AnyHash)),
          entity_id: T.nilable(String),
          expiration_month: Integer,
          expiration_year: Integer,
          idempotency_key: T.nilable(String),
          last4: String,
          status: Increase::Models::Card::Status::OrSymbol,
          type: Increase::Models::Card::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        billing_address:,
        created_at:,
        description:,
        digital_wallet:,
        entity_id:,
        expiration_month:,
        expiration_year:,
        idempotency_key:,
        last4:,
        status:,
        type:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              billing_address: Increase::Models::Card::BillingAddress,
              created_at: Time,
              description: T.nilable(String),
              digital_wallet: T.nilable(Increase::Models::Card::DigitalWallet),
              entity_id: T.nilable(String),
              expiration_month: Integer,
              expiration_year: Integer,
              idempotency_key: T.nilable(String),
              last4: String,
              status: Increase::Models::Card::Status::TaggedSymbol,
              type: Increase::Models::Card::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class BillingAddress < Increase::Internal::Type::BaseModel
        # #/components/schemas/card/properties/billing_address/properties/city
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        # #/components/schemas/card/properties/billing_address/properties/line1
        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        # #/components/schemas/card/properties/billing_address/properties/line2
        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        # #/components/schemas/card/properties/billing_address/properties/postal_code
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        # #/components/schemas/card/properties/billing_address/properties/state
        sig { returns(T.nilable(String)) }
        attr_accessor :state

        # #/components/schemas/card/properties/billing_address
        sig do
          params(
            city: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(city:, line1:, line2:, postal_code:, state:); end

        sig do
          override
            .returns(
              {
                city: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                postal_code: T.nilable(String),
                state: T.nilable(String)
              }
            )
        end
        def to_hash; end
      end

      class DigitalWallet < Increase::Internal::Type::BaseModel
        # #/components/schemas/card/properties/digital_wallet/anyOf/0/properties/digital_card_profile_id
        sig { returns(T.nilable(String)) }
        attr_accessor :digital_card_profile_id

        # #/components/schemas/card/properties/digital_wallet/anyOf/0/properties/email
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # #/components/schemas/card/properties/digital_wallet/anyOf/0/properties/phone
        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # #/components/schemas/card/properties/digital_wallet
        sig do
          params(
            digital_card_profile_id: T.nilable(String),
            email: T.nilable(String),
            phone: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(digital_card_profile_id:, email:, phone:); end

        sig do
          override
            .returns({
                       digital_card_profile_id: T.nilable(String),
                       email: T.nilable(String),
                       phone: T.nilable(String)
                     })
        end
        def to_hash; end
      end

      # #/components/schemas/card/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Card::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Card::Status::TaggedSymbol) }

        # The card is active.
        ACTIVE = T.let(:active, Increase::Models::Card::Status::TaggedSymbol)

        # The card is temporarily disabled.
        DISABLED = T.let(:disabled, Increase::Models::Card::Status::TaggedSymbol)

        # The card is permanently canceled.
        CANCELED = T.let(:canceled, Increase::Models::Card::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Card::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/card/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Card::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Card::Type::TaggedSymbol) }

        CARD = T.let(:card, Increase::Models::Card::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Card::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
