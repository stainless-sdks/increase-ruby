# typed: strong

module Increase
  module Models
    class DigitalWalletToken < Increase::BaseModel
      # The Digital Wallet Token identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the Card this Digital Wallet Token belongs to.
      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Digital Wallet Token was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # This indicates if payments can be made with the Digital Wallet Token.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The digital wallet app being used.
      sig { returns(Symbol) }
      def token_requestor
      end

      sig { params(_: Symbol).returns(Symbol) }
      def token_requestor=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `digital_wallet_token`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Updates to the Digital Wallet Token.
      sig { returns(T::Array[Increase::Models::DigitalWalletToken::Update]) }
      def updates
      end

      sig do
        params(_: T::Array[Increase::Models::DigitalWalletToken::Update])
          .returns(T::Array[Increase::Models::DigitalWalletToken::Update])
      end
      def updates=(_)
      end

      # A Digital Wallet Token is created when a user adds a Card to their Apple Pay or
      #   Google Pay app. The Digital Wallet Token can be used for purchases just like a
      #   Card.
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

      # This indicates if payments can be made with the Digital Wallet Token.
      class Status < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The digital wallet token is active.
        ACTIVE = :active

        # The digital wallet token has been created but not successfully activated via two-factor authentication yet.
        INACTIVE = :inactive

        # The digital wallet token has been temporarily paused.
        SUSPENDED = :suspended

        # The digital wallet token has been permanently canceled.
        DEACTIVATED = :deactivated
      end

      # The digital wallet app being used.
      class TokenRequestor < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # Apple Pay
        APPLE_PAY = :apple_pay

        # Google Pay
        GOOGLE_PAY = :google_pay

        # Samsung Pay
        SAMSUNG_PAY = :samsung_pay

        # Unknown
        UNKNOWN = :unknown
      end

      # A constant representing the object's type. For this resource it will always be
      #   `digital_wallet_token`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DIGITAL_WALLET_TOKEN = :digital_wallet_token
      end

      class Update < Increase::BaseModel
        # The status the update changed this Digital Wallet Token to.
        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the update happened.
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

        # The status the update changed this Digital Wallet Token to.
        class Status < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # The digital wallet token is active.
          ACTIVE = :active

          # The digital wallet token has been created but not successfully activated via two-factor authentication yet.
          INACTIVE = :inactive

          # The digital wallet token has been temporarily paused.
          SUSPENDED = :suspended

          # The digital wallet token has been permanently canceled.
          DEACTIVATED = :deactivated
        end
      end
    end
  end
end
