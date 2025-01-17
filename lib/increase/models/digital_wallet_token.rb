# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # digital_wallet_token => {
    #   id: String,
    #   card_id: String,
    #   created_at: Time,
    #   status: enum: Increase::Models::DigitalWalletToken::Status,
    #   token_requestor: enum: Increase::Models::DigitalWalletToken::TokenRequestor
    # }
    # ```
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
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card was created.
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
      #   A constant representing the object's type. For this resource it will always be `digital_wallet_token`.
      #
      #   @return [Symbol, Increase::Models::DigitalWalletToken::Type]
      required :type, enum: -> { Increase::Models::DigitalWalletToken::Type }

      # @!parse
      #   # A Digital Wallet Token is created when a user adds a Card to their Apple Pay or
      #   #   Google Pay app. The Digital Wallet Token can be used for purchases just like a
      #   #   Card.
      #   #
      #   # @param id [String] The Digital Wallet Token identifier.
      #   #
      #   # @param card_id [String] The identifier for the Card this Digital Wallet Token belongs to.
      #   #
      #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #   the Card was created.
      #   #
      #   # @param status [String] This indicates if payments can be made with the Digital Wallet Token.
      #   #
      #   # @param token_requestor [String] The digital wallet app being used.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `digital_wallet_token`.
      #   #
      #   def initialize(id:, card_id:, created_at:, status:, token_requestor:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # This indicates if payments can be made with the Digital Wallet Token.
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :inactive
      #   # ...
      # in :suspended
      #   # ...
      # in :deactivated
      #   # ...
      # end
      # ```
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

      # The digital wallet app being used.
      #
      # @example
      # ```ruby
      # case token_requestor
      # in :apple_pay
      #   # ...
      # in :google_pay
      #   # ...
      # in :samsung_pay
      #   # ...
      # in :unknown
      #   # ...
      # end
      # ```
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

      # A constant representing the object's type. For this resource it will always be `digital_wallet_token`.
      #
      # @example
      # ```ruby
      # case type
      # in :digital_wallet_token
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        DIGITAL_WALLET_TOKEN = :digital_wallet_token

        finalize!
      end
    end
  end
end
