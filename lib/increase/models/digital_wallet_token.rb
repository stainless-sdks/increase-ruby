# frozen_string_literal: true

module Increase
  module Models
    class DigitalWalletToken < BaseModel
      # @!attribute [rw] id
      #   The Digital Wallet Token identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] card_id
      #   The identifier for the Card this Digital Wallet Token belongs to.
      #   @return [String]
      required :card_id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] status
      #   This indicates if payments can be made with the Digital Wallet Token.
      #   @return [Symbol, Increase::Models::DigitalWalletToken::Status]
      required :status, enum: -> { Increase::Models::DigitalWalletToken::Status }

      # @!attribute [rw] token_requestor
      #   The digital wallet app being used.
      #   @return [Symbol, Increase::Models::DigitalWalletToken::TokenRequestor]
      required :token_requestor, enum: -> { Increase::Models::DigitalWalletToken::TokenRequestor }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `digital_wallet_token`.
      #   @return [Symbol, Increase::Models::DigitalWalletToken::Type]
      required :type, enum: -> { Increase::Models::DigitalWalletToken::Type }

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
      end

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
      end

      # A constant representing the object's type. For this resource it will always be `digital_wallet_token`.
      class Type < Increase::Enum
        DIGITAL_WALLET_TOKEN = :digital_wallet_token
      end

      # Create a new instance of DigitalWalletToken from a Hash of raw data.
      #
      # @overload initialize(id: nil, card_id: nil, created_at: nil, status: nil, token_requestor: nil, type: nil)
      # @param id [String] The Digital Wallet Token identifier.
      # @param card_id [String] The identifier for the Card this Digital Wallet Token belongs to.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Card was created.
      # @param status [String] This indicates if payments can be made with the Digital Wallet Token.
      # @param token_requestor [String] The digital wallet app being used.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `digital_wallet_token`.
      def initialize(data = {})
        super
      end
    end
  end
end
