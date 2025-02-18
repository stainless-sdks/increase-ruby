# typed: strong

module Increase
  module Models
    class Card < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Increase::Models::Card::BillingAddress) }
      def billing_address
      end

      sig do
        params(_: Increase::Models::Card::BillingAddress).returns(Increase::Models::Card::BillingAddress)
      end
      def billing_address=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(Increase::Models::Card::DigitalWallet)) }
      def digital_wallet
      end

      sig do
        params(_: T.nilable(Increase::Models::Card::DigitalWallet)).returns(T.nilable(Increase::Models::Card::DigitalWallet))
      end
      def digital_wallet=(_)
      end

      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def entity_id=(_)
      end

      sig { returns(Integer) }
      def expiration_month
      end

      sig { params(_: Integer).returns(Integer) }
      def expiration_month=(_)
      end

      sig { returns(Integer) }
      def expiration_year
      end

      sig { params(_: Integer).returns(Integer) }
      def expiration_year=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(String) }
      def last4
      end

      sig { params(_: String).returns(String) }
      def last4=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

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
        def city
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_)
        end

        sig { returns(T.nilable(String)) }
        def line1
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_)
        end

        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def state
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_)
        end

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
        def digital_card_profile_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def digital_card_profile_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_)
        end

        sig { returns(T.nilable(String)) }
        def phone
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_)
        end

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
