# frozen_string_literal: true

module Increase
  module Models
    class DigitalWalletToken < Increase::BaseModel
      # @!attribute id
      #   The Digital Wallet Token identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute card_id
      #   The identifier for the Card this Digital Wallet Token belongs to.
      #
      #   @return [String]
      required :card_id, String

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #     the Digital Wallet Token was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute status
      #   This indicates if payments can be made with the Digital Wallet Token.
      #
      #   @return [Symbol, Increase::Models::DigitalWalletToken::Status]
      required :status, enum: -> { Increase::Models::DigitalWalletToken::Status }

      # @!attribute token_requestor
      #   The digital wallet app being used.
      #
      #   @return [Symbol, Increase::Models::DigitalWalletToken::TokenRequestor]
      required :token_requestor, enum: -> { Increase::Models::DigitalWalletToken::TokenRequestor }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `digital_wallet_token`.
      #
      #   @return [Symbol, Increase::Models::DigitalWalletToken::Type]
      required :type, enum: -> { Increase::Models::DigitalWalletToken::Type }

      # @!attribute updates
      #   Updates to the Digital Wallet Token.
      #
      #   @return [Array<Increase::Models::DigitalWalletToken::Update>]
      required :updates, -> { Increase::ArrayOf[Increase::Models::DigitalWalletToken::Update] }

      # @!parse
      #   # A Digital Wallet Token is created when a user adds a Card to their Apple Pay or
      #   #   Google Pay app. The Digital Wallet Token can be used for purchases just like a
      #   #   Card.
      #   #
      #   # @param id [String]
      #   # @param card_id [String]
      #   # @param created_at [Time]
      #   # @param status [Symbol, Increase::Models::DigitalWalletToken::Status]
      #   # @param token_requestor [Symbol, Increase::Models::DigitalWalletToken::TokenRequestor]
      #   # @param type [Symbol, Increase::Models::DigitalWalletToken::Type]
      #   # @param updates [Array<Increase::Models::DigitalWalletToken::Update>]
      #   #
      #   def initialize(id:, card_id:, created_at:, status:, token_requestor:, type:, updates:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @abstract
      #
      # This indicates if payments can be made with the Digital Wallet Token.
      class Status < Increase::Enum
        # The digital wallet token is active.
        ACTIVE = :active

        # The digital wallet token has been created but not successfully activated via two-factor authentication yet.
        INACTIVE = :inactive

        # The digital wallet token has been temporarily paused.
        SUSPENDED = :suspended

        # The digital wallet token has been permanently canceled.
        DEACTIVATED = :deactivated

        finalize!
      end

      # @abstract
      #
      # The digital wallet app being used.
      class TokenRequestor < Increase::Enum
        # Apple Pay
        APPLE_PAY = :apple_pay

        # Google Pay
        GOOGLE_PAY = :google_pay

        # Samsung Pay
        SAMSUNG_PAY = :samsung_pay

        # Unknown
        UNKNOWN = :unknown

        finalize!
      end

      # @abstract
      #
      # A constant representing the object's type. For this resource it will always be
      #   `digital_wallet_token`.
      class Type < Increase::Enum
        DIGITAL_WALLET_TOKEN = :digital_wallet_token

        finalize!
      end

      class Update < Increase::BaseModel
        # @!attribute status
        #   The status the update changed this Digital Wallet Token to.
        #
        #   @return [Symbol, Increase::Models::DigitalWalletToken::Update::Status]
        required :status, enum: -> { Increase::Models::DigitalWalletToken::Update::Status }

        # @!attribute timestamp
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #     the update happened.
        #
        #   @return [Time]
        required :timestamp, Time

        # @!parse
        #   # @param status [Symbol, Increase::Models::DigitalWalletToken::Update::Status]
        #   # @param timestamp [Time]
        #   #
        #   def initialize(status:, timestamp:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        # The status the update changed this Digital Wallet Token to.
        class Status < Increase::Enum
          # The digital wallet token is active.
          ACTIVE = :active

          # The digital wallet token has been created but not successfully activated via two-factor authentication yet.
          INACTIVE = :inactive

          # The digital wallet token has been temporarily paused.
          SUSPENDED = :suspended

          # The digital wallet token has been permanently canceled.
          DEACTIVATED = :deactivated

          finalize!
        end
      end
    end
  end
end
