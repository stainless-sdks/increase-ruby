# typed: strong

module Increase
  module Models
    module Simulations
      class CardAuthorizationCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(T.nilable(String)) }
        attr_reader :authenticated_card_payment_id

        sig { params(authenticated_card_payment_id: String).void }
        attr_writer :authenticated_card_payment_id

        sig { returns(T.nilable(String)) }
        attr_reader :card_id

        sig { params(card_id: String).void }
        attr_writer :card_id

        sig { returns(T.nilable(Symbol)) }
        attr_reader :decline_reason

        sig { params(decline_reason: Symbol).void }
        attr_writer :decline_reason

        sig { returns(T.nilable(String)) }
        attr_reader :digital_wallet_token_id

        sig { params(digital_wallet_token_id: String).void }
        attr_writer :digital_wallet_token_id

        sig { returns(T.nilable(Symbol)) }
        attr_reader :direction

        sig { params(direction: Symbol).void }
        attr_writer :direction

        sig { returns(T.nilable(String)) }
        attr_reader :event_subscription_id

        sig { params(event_subscription_id: String).void }
        attr_writer :event_subscription_id

        sig { returns(T.nilable(String)) }
        attr_reader :merchant_acceptor_id

        sig { params(merchant_acceptor_id: String).void }
        attr_writer :merchant_acceptor_id

        sig { returns(T.nilable(String)) }
        attr_reader :merchant_category_code

        sig { params(merchant_category_code: String).void }
        attr_writer :merchant_category_code

        sig { returns(T.nilable(String)) }
        attr_reader :merchant_city

        sig { params(merchant_city: String).void }
        attr_writer :merchant_city

        sig { returns(T.nilable(String)) }
        attr_reader :merchant_country

        sig { params(merchant_country: String).void }
        attr_writer :merchant_country

        sig { returns(T.nilable(String)) }
        attr_reader :merchant_descriptor

        sig { params(merchant_descriptor: String).void }
        attr_writer :merchant_descriptor

        sig { returns(T.nilable(String)) }
        attr_reader :merchant_state

        sig { params(merchant_state: String).void }
        attr_writer :merchant_state

        sig { returns(T.nilable(String)) }
        attr_reader :physical_card_id

        sig { params(physical_card_id: String).void }
        attr_writer :physical_card_id

        sig { returns(T.nilable(String)) }
        attr_reader :terminal_id

        sig { params(terminal_id: String).void }
        attr_writer :terminal_id

        sig do
          params(
            amount: Integer,
            authenticated_card_payment_id: String,
            card_id: String,
            decline_reason: Symbol,
            digital_wallet_token_id: String,
            direction: Symbol,
            event_subscription_id: String,
            merchant_acceptor_id: String,
            merchant_category_code: String,
            merchant_city: String,
            merchant_country: String,
            merchant_descriptor: String,
            merchant_state: String,
            physical_card_id: String,
            terminal_id: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          amount:,
          authenticated_card_payment_id: nil,
          card_id: nil,
          decline_reason: nil,
          digital_wallet_token_id: nil,
          direction: nil,
          event_subscription_id: nil,
          merchant_acceptor_id: nil,
          merchant_category_code: nil,
          merchant_city: nil,
          merchant_country: nil,
          merchant_descriptor: nil,
          merchant_state: nil,
          physical_card_id: nil,
          terminal_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              amount: Integer,
              authenticated_card_payment_id: String,
              card_id: String,
              decline_reason: Symbol,
              digital_wallet_token_id: String,
              direction: Symbol,
              event_subscription_id: String,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: String,
              merchant_country: String,
              merchant_descriptor: String,
              merchant_state: String,
              physical_card_id: String,
              terminal_id: String,
              request_options: Increase::RequestOptions
            }
          )
        end
        def to_hash
        end

        class DeclineReason < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Direction < Increase::Enum
          abstract!

          # A regular card authorization where funds are debited from the cardholder.
          SETTLEMENT = :settlement

          # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
          REFUND = :refund

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
