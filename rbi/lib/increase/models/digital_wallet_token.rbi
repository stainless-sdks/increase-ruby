# typed: strong

module Increase
  module Models
    class DigitalWalletToken < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def token_requestor
      end

      sig { params(_: Symbol).returns(Symbol) }
      def token_requestor=(_)
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
            card_id: String,
            created_at: Time,
            status: Symbol,
            token_requestor: Symbol,
            type: Symbol
          )
          .void
      end
      def initialize(id:, card_id:, created_at:, status:, token_requestor:, type:)
      end

      sig do
        override
          .returns(
            {id: String, card_id: String, created_at: Time, status: Symbol, token_requestor: Symbol, type: Symbol}
          )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The digital wallet token is active.
        ACTIVE = :active

        # The digital wallet token has been created but not successfully activated via two-factor authentication yet.
        INACTIVE = :inactive

        # The digital wallet token has been temporarily paused.
        SUSPENDED = :suspended

        # The digital wallet token has been permanently canceled.
        DEACTIVATED = :deactivated

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class TokenRequestor < Increase::Enum
        abstract!

        # Apple Pay
        APPLE_PAY = :apple_pay

        # Google Pay
        GOOGLE_PAY = :google_pay

        # Samsung Pay
        SAMSUNG_PAY = :samsung_pay

        # Unknown
        UNKNOWN = :unknown

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        DIGITAL_WALLET_TOKEN = :digital_wallet_token

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
