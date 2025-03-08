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

      sig { returns(T::Array[Increase::Models::DigitalWalletToken::Update]) }
      def updates
      end

      sig do
        params(_: T::Array[Increase::Models::DigitalWalletToken::Update])
          .returns(T::Array[Increase::Models::DigitalWalletToken::Update])
      end
      def updates=(_)
      end

      sig do
        params(
            id: String,
            card_id: String,
            created_at: Time,
            status: Symbol,
            token_requestor: Symbol,
            type: Symbol,
            updates: T::Array[Increase::Models::DigitalWalletToken::Update]
          )
          .returns(T.attached_class)
      end
      def self.new(id:, card_id:, created_at:, status:, token_requestor:, type:, updates:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              card_id: String,
              created_at: Time,
              status: Symbol,
              token_requestor: Symbol,
              type: Symbol,
              updates: T::Array[Increase::Models::DigitalWalletToken::Update]
            }
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        DIGITAL_WALLET_TOKEN = :digital_wallet_token

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Update < Increase::BaseModel
        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { returns(Time) }
        def timestamp
        end

        sig { params(_: Time).returns(Time) }
        def timestamp=(_)
        end

        sig { params(status: Symbol, timestamp: Time).returns(T.attached_class) }
        def self.new(status:, timestamp:)
        end

        sig { override.returns({status: Symbol, timestamp: Time}) }
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
