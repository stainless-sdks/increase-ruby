# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class CardAuthorizationCreateParams < Increase::BaseModel
        # @!attribute amount
        #   The authorization amount in cents.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [r] authenticated_card_payment_id
        #   The identifier of a Card Payment with a `card_authentication` if you want to simulate an authenticated authorization.
        #
        #   @return [String, nil]
        optional :authenticated_card_payment_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :authenticated_card_payment_id

        # @!attribute [r] card_id
        #   The identifier of the Card to be authorized.
        #
        #   @return [String, nil]
        optional :card_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :card_id

        # @!attribute [r] decline_reason
        #   Forces a card decline with a specific reason. No real time decision will be sent.
        #
        #   @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::DeclineReason, nil]
        optional :decline_reason,
                 enum: -> { Increase::Models::Simulations::CardAuthorizationCreateParams::DeclineReason }

        # @!parse
        #   # @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::DeclineReason]
        #   attr_writer :decline_reason

        # @!attribute [r] digital_wallet_token_id
        #   The identifier of the Digital Wallet Token to be authorized.
        #
        #   @return [String, nil]
        optional :digital_wallet_token_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :digital_wallet_token_id

        # @!attribute [r] direction
        #   The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
        #
        #   @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::Direction, nil]
        optional :direction,
                 enum: -> {
                   Increase::Models::Simulations::CardAuthorizationCreateParams::Direction
                 }

        # @!parse
        #   # @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::Direction]
        #   attr_writer :direction

        # @!attribute [r] event_subscription_id
        #   The identifier of the Event Subscription to use. If provided, will override the default real time event subscription. Because you can only create one real time decision event subscription, you can use this field to route events to any specified event subscription for testing purposes.
        #
        #   @return [String, nil]
        optional :event_subscription_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :event_subscription_id

        # @!attribute [r] merchant_acceptor_id
        #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
        #
        #   @return [String, nil]
        optional :merchant_acceptor_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_acceptor_id

        # @!attribute [r] merchant_category_code
        #   The Merchant Category Code (commonly abbreviated as MCC) of the merchant the card is transacting with.
        #
        #   @return [String, nil]
        optional :merchant_category_code, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_category_code

        # @!attribute [r] merchant_city
        #   The city the merchant resides in.
        #
        #   @return [String, nil]
        optional :merchant_city, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_city

        # @!attribute [r] merchant_country
        #   The country the merchant resides in.
        #
        #   @return [String, nil]
        optional :merchant_country, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_country

        # @!attribute [r] merchant_descriptor
        #   The merchant descriptor of the merchant the card is transacting with.
        #
        #   @return [String, nil]
        optional :merchant_descriptor, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_descriptor

        # @!attribute [r] merchant_state
        #   The state the merchant resides in.
        #
        #   @return [String, nil]
        optional :merchant_state, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_state

        # @!attribute [r] physical_card_id
        #   The identifier of the Physical Card to be authorized.
        #
        #   @return [String, nil]
        optional :physical_card_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :physical_card_id

        # @!attribute [r] terminal_id
        #   The terminal identifier (commonly abbreviated as TID) of the terminal the card is transacting with.
        #
        #   @return [String, nil]
        optional :terminal_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :terminal_id

        # @!parse
        #   # @param amount [Integer] The authorization amount in cents.
        #   #
        #   # @param authenticated_card_payment_id [String] The identifier of a Card Payment with a `card_authentication` if you want to
        #   #   simulate an authenticated authorization.
        #   #
        #   # @param card_id [String] The identifier of the Card to be authorized.
        #   #
        #   # @param decline_reason [String] Forces a card decline with a specific reason. No real time decision will be
        #   #   sent.
        #   #
        #   # @param digital_wallet_token_id [String] The identifier of the Digital Wallet Token to be authorized.
        #   #
        #   # @param direction [String] The direction describes the direction the funds will move, either from the
        #   #   cardholder to the merchant or from the merchant to the cardholder.
        #   #
        #   # @param event_subscription_id [String] The identifier of the Event Subscription to use. If provided, will override the
        #   #   default real time event subscription. Because you can only create one real time
        #   #   decision event subscription, you can use this field to route events to any
        #   #   specified event subscription for testing purposes.
        #   #
        #   # @param merchant_acceptor_id [String] The merchant identifier (commonly abbreviated as MID) of the merchant the card
        #   #   is transacting with.
        #   #
        #   # @param merchant_category_code [String] The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
        #   #   card is transacting with.
        #   #
        #   # @param merchant_city [String] The city the merchant resides in.
        #   #
        #   # @param merchant_country [String] The country the merchant resides in.
        #   #
        #   # @param merchant_descriptor [String] The merchant descriptor of the merchant the card is transacting with.
        #   #
        #   # @param merchant_state [String] The state the merchant resides in.
        #   #
        #   # @param physical_card_id [String] The identifier of the Physical Card to be authorized.
        #   #
        #   # @param terminal_id [String] The terminal identifier (commonly abbreviated as TID) of the terminal the card
        #   #   is transacting with.
        #   #
        #   def initialize(
        #     amount:,
        #     authenticated_card_payment_id: nil,
        #     card_id: nil,
        #     decline_reason: nil,
        #     digital_wallet_token_id: nil,
        #     direction: nil,
        #     event_subscription_id: nil,
        #     merchant_acceptor_id: nil,
        #     merchant_category_code: nil,
        #     merchant_city: nil,
        #     merchant_country: nil,
        #     merchant_descriptor: nil,
        #     merchant_state: nil,
        #     physical_card_id: nil,
        #     terminal_id: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void

        # Forces a card decline with a specific reason. No real time decision will be sent.
        #
        # @example
        # ```ruby
        # case decline_reason
        # in :card_not_active
        #   # ...
        # in :physical_card_not_active
        #   # ...
        # in :entity_not_active
        #   # ...
        # in :group_locked
        #   # ...
        # in :insufficient_funds
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class DeclineReason < Increase::Enum
          # The Card was not active.
          CARD_NOT_ACTIVE = :card_not_active

          # The Physical Card was not active.
          PHYSICAL_CARD_NOT_ACTIVE = :physical_card_not_active

          # The account's entity was not active.
          ENTITY_NOT_ACTIVE = :entity_not_active

          # The account was inactive.
          GROUP_LOCKED = :group_locked

          # The Card's Account did not have a sufficient available balance.
          INSUFFICIENT_FUNDS = :insufficient_funds

          # The given CVV2 did not match the card's value.
          CVV2_MISMATCH = :cvv2_mismatch

          # The given expiration date did not match the card's value. Only applies when a CVV2 is present.
          CARD_EXPIRATION_MISMATCH = :card_expiration_mismatch

          # The attempted card transaction is not allowed per Increase's terms.
          TRANSACTION_NOT_ALLOWED = :transaction_not_allowed

          # The transaction was blocked by a Limit.
          BREACHES_LIMIT = :breaches_limit

          # Your application declined the transaction via webhook.
          WEBHOOK_DECLINED = :webhook_declined

          # Your application webhook did not respond without the required timeout.
          WEBHOOK_TIMED_OUT = :webhook_timed_out

          # Declined by stand-in processing.
          DECLINED_BY_STAND_IN_PROCESSING = :declined_by_stand_in_processing

          # The card read had an invalid CVV, dCVV, or authorization request cryptogram.
          INVALID_PHYSICAL_CARD = :invalid_physical_card

          # The original card authorization for this incremental authorization does not exist.
          MISSING_ORIGINAL_AUTHORIZATION = :missing_original_authorization

          # The transaction was suspected to be fraudulent. Please reach out to support@increase.com for more information.
          SUSPECTED_FRAUD = :suspected_fraud

          finalize!
        end

        # The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
        #
        # @example
        # ```ruby
        # case direction
        # in :settlement
        #   # ...
        # in :refund
        #   # ...
        # end
        # ```
        class Direction < Increase::Enum
          # A regular card authorization where funds are debited from the cardholder.
          SETTLEMENT = :settlement

          # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
          REFUND = :refund

          finalize!
        end
      end
    end
  end
end
