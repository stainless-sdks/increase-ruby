# typed: strong

module Increase
  module Models
    class DigitalWalletToken < Increase::BaseModel
      # The Digital Wallet Token identifier.
      sig { returns(String) }
      attr_accessor :id

      # The identifier for the Card this Digital Wallet Token belongs to.
      sig { returns(String) }
      attr_accessor :card_id

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Digital Wallet Token was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # This indicates if payments can be made with the Digital Wallet Token.
      sig { returns(Increase::Models::DigitalWalletToken::Status::TaggedSymbol) }
      attr_accessor :status

      # The digital wallet app being used.
      sig { returns(Increase::Models::DigitalWalletToken::TokenRequestor::TaggedSymbol) }
      attr_accessor :token_requestor

      # A constant representing the object's type. For this resource it will always be
      #   `digital_wallet_token`.
      sig { returns(Increase::Models::DigitalWalletToken::Type::TaggedSymbol) }
      attr_accessor :type

      # Updates to the Digital Wallet Token.
      sig { returns(T::Array[Increase::Models::DigitalWalletToken::Update]) }
      attr_accessor :updates

      # A Digital Wallet Token is created when a user adds a Card to their Apple Pay or
      #   Google Pay app. The Digital Wallet Token can be used for purchases just like a
      #   Card.
      sig do
        params(
          id: String,
          card_id: String,
          created_at: Time,
          status: Increase::Models::DigitalWalletToken::Status::OrSymbol,
          token_requestor: Increase::Models::DigitalWalletToken::TokenRequestor::OrSymbol,
          type: Increase::Models::DigitalWalletToken::Type::OrSymbol,
          updates: T::Array[T.any(Increase::Models::DigitalWalletToken::Update, Increase::Util::AnyHash)]
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
              status: Increase::Models::DigitalWalletToken::Status::TaggedSymbol,
              token_requestor: Increase::Models::DigitalWalletToken::TokenRequestor::TaggedSymbol,
              type: Increase::Models::DigitalWalletToken::Type::TaggedSymbol,
              updates: T::Array[Increase::Models::DigitalWalletToken::Update]
            }
          )
      end
      def to_hash
      end

      # This indicates if payments can be made with the Digital Wallet Token.
      module Status
        extend Increase::Enum

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
        def self.values
        end
      end

      # The digital wallet app being used.
      module TokenRequestor
        extend Increase::Enum

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
        def self.values
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `digital_wallet_token`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DigitalWalletToken::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::DigitalWalletToken::Type::TaggedSymbol) }

        DIGITAL_WALLET_TOKEN =
          T.let(:digital_wallet_token, Increase::Models::DigitalWalletToken::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::DigitalWalletToken::Type::TaggedSymbol]) }
        def self.values
        end
      end

      class Update < Increase::BaseModel
        # The status the update changed this Digital Wallet Token to.
        sig { returns(Increase::Models::DigitalWalletToken::Update::Status::TaggedSymbol) }
        attr_accessor :status

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the update happened.
        sig { returns(Time) }
        attr_accessor :timestamp

        sig do
          params(status: Increase::Models::DigitalWalletToken::Update::Status::OrSymbol, timestamp: Time)
            .returns(T.attached_class)
        end
        def self.new(status:, timestamp:)
        end

        sig do
          override
            .returns({status: Increase::Models::DigitalWalletToken::Update::Status::TaggedSymbol, timestamp: Time})
        end
        def to_hash
        end

        # The status the update changed this Digital Wallet Token to.
        module Status
          extend Increase::Enum

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
          def self.values
          end
        end
      end
    end
  end
end
