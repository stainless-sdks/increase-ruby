# typed: strong

module Increase
  module Models
    class Card < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Increase::Models::Card::BillingAddress) }
      attr_accessor :billing_address

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Increase::Models::Card::DigitalWallet)) }
      attr_accessor :digital_wallet

      sig { returns(T.nilable(String)) }
      attr_accessor :entity_id

      sig { returns(Integer) }
      attr_accessor :expiration_month

      sig { returns(Integer) }
      attr_accessor :expiration_year

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(String) }
      attr_accessor :last4

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
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
          status: Symbol,
          type: Symbol
        ).void
      end
      def initialize(
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
      )
      end

      sig do
        override.returns(
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
            status: Symbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class BillingAddress < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :city

        sig { returns(T.nilable(String)) }
        attr_accessor :line1

        sig { returns(T.nilable(String)) }
        attr_accessor :line2

        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :state

        sig do
          params(
            city: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          ).void
        end
        def initialize(city:, line1:, line2:, postal_code:, state:)
        end

        sig do
          override.returns(
            {
              city: T.nilable(String),
              line1: T.nilable(String),
              line2: T.nilable(String),
              postal_code: T.nilable(String),
              state: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class DigitalWallet < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :digital_card_profile_id

        sig { returns(T.nilable(String)) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        sig do
          params(
            digital_card_profile_id: T.nilable(String),
            email: T.nilable(String),
            phone: T.nilable(String)
          ).void
        end
        def initialize(digital_card_profile_id:, email:, phone:)
        end

        sig do
          override.returns(
            {
              digital_card_profile_id: T.nilable(String),
              email: T.nilable(String),
              phone: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Status < Increase::Enum
        abstract!

        # The card is active.
        ACTIVE = :active

        # The card is temporarily disabled.
        DISABLED = :disabled

        # The card is permanently canceled.
        CANCELED = :canceled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        CARD = :card

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
