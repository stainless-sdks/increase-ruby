# typed: strong

module Increase
  module Models
    module Simulations
      class CardAuthorizationCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The authorization amount in cents.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The identifier of a Card Payment with a `card_authentication` if you want to
        #   simulate an authenticated authorization.
        sig { returns(T.nilable(String)) }
        def authenticated_card_payment_id
        end

        sig { params(_: String).returns(String) }
        def authenticated_card_payment_id=(_)
        end

        # The identifier of the Card to be authorized.
        sig { returns(T.nilable(String)) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        # Forces a card decline with a specific reason. No real time decision will be
        #   sent.
        sig { returns(T.nilable(Symbol)) }
        def decline_reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def decline_reason=(_)
        end

        # The identifier of the Digital Wallet Token to be authorized.
        sig { returns(T.nilable(String)) }
        def digital_wallet_token_id
        end

        sig { params(_: String).returns(String) }
        def digital_wallet_token_id=(_)
        end

        # The direction describes the direction the funds will move, either from the
        #   cardholder to the merchant or from the merchant to the cardholder.
        sig { returns(T.nilable(Symbol)) }
        def direction
        end

        sig { params(_: Symbol).returns(Symbol) }
        def direction=(_)
        end

        # The identifier of the Event Subscription to use. If provided, will override the
        #   default real time event subscription. Because you can only create one real time
        #   decision event subscription, you can use this field to route events to any
        #   specified event subscription for testing purposes.
        sig { returns(T.nilable(String)) }
        def event_subscription_id
        end

        sig { params(_: String).returns(String) }
        def event_subscription_id=(_)
        end

        # The merchant identifier (commonly abbreviated as MID) of the merchant the card
        #   is transacting with.
        sig { returns(T.nilable(String)) }
        def merchant_acceptor_id
        end

        sig { params(_: String).returns(String) }
        def merchant_acceptor_id=(_)
        end

        # The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
        #   card is transacting with.
        sig { returns(T.nilable(String)) }
        def merchant_category_code
        end

        sig { params(_: String).returns(String) }
        def merchant_category_code=(_)
        end

        # The city the merchant resides in.
        sig { returns(T.nilable(String)) }
        def merchant_city
        end

        sig { params(_: String).returns(String) }
        def merchant_city=(_)
        end

        # The country the merchant resides in.
        sig { returns(T.nilable(String)) }
        def merchant_country
        end

        sig { params(_: String).returns(String) }
        def merchant_country=(_)
        end

        # The merchant descriptor of the merchant the card is transacting with.
        sig { returns(T.nilable(String)) }
        def merchant_descriptor
        end

        sig { params(_: String).returns(String) }
        def merchant_descriptor=(_)
        end

        # The state the merchant resides in.
        sig { returns(T.nilable(String)) }
        def merchant_state
        end

        sig { params(_: String).returns(String) }
        def merchant_state=(_)
        end

        # Fields specific to a given card network.
        sig { returns(T.nilable(Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails)) }
        def network_details
        end

        sig do
          params(_: Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails)
            .returns(Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails)
        end
        def network_details=(_)
        end

        # The identifier of the Physical Card to be authorized.
        sig { returns(T.nilable(String)) }
        def physical_card_id
        end

        sig { params(_: String).returns(String) }
        def physical_card_id=(_)
        end

        # The terminal identifier (commonly abbreviated as TID) of the terminal the card
        #   is transacting with.
        sig { returns(T.nilable(String)) }
        def terminal_id
        end

        sig { params(_: String).returns(String) }
        def terminal_id=(_)
        end

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
            network_details: Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails,
            physical_card_id: String,
            terminal_id: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          network_details: nil,
          physical_card_id: nil,
          terminal_id: nil,
          request_options: {}
        )
        end

        sig do
          override
            .returns(
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
                network_details: Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails,
                physical_card_id: String,
                terminal_id: String,
                request_options: Increase::RequestOptions
              }
            )
        end
        def to_hash
        end

        # Forces a card decline with a specific reason. No real time decision will be
        #   sent.
        class DeclineReason < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # The account has been closed.
          ACCOUNT_CLOSED = :account_closed

          # The Card was not active.
          CARD_NOT_ACTIVE = :card_not_active

          # The Card has been canceled.
          CARD_CANCELED = :card_canceled

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
        end

        # The direction describes the direction the funds will move, either from the
        #   cardholder to the merchant or from the merchant to the cardholder.
        class Direction < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # A regular card authorization where funds are debited from the cardholder.
          SETTLEMENT = :settlement

          # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
          REFUND = :refund
        end

        class NetworkDetails < Increase::BaseModel
          # Fields specific to the Visa network.
          sig { returns(Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa) }
          def visa
          end

          sig do
            params(_: Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa)
              .returns(Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa)
          end
          def visa=(_)
          end

          # Fields specific to a given card network.
          sig do
            params(visa: Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa)
              .returns(T.attached_class)
          end
          def self.new(visa:)
          end

          sig do
            override
              .returns({visa: Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa})
          end
          def to_hash
          end

          class Visa < Increase::BaseModel
            # The reason code for the stand-in processing.
            sig { returns(T.nilable(Symbol)) }
            def stand_in_processing_reason
            end

            sig { params(_: Symbol).returns(Symbol) }
            def stand_in_processing_reason=(_)
            end

            # Fields specific to the Visa network.
            sig { params(stand_in_processing_reason: Symbol).returns(T.attached_class) }
            def self.new(stand_in_processing_reason: nil)
            end

            sig { override.returns({stand_in_processing_reason: Symbol}) }
            def to_hash
            end

            # The reason code for the stand-in processing.
            class StandInProcessingReason < Increase::Enum
              abstract!

              Value = type_template(:out) { {fixed: Symbol} }

              # Increase failed to process the authorization in a timely manner.
              ISSUER_ERROR = :issuer_error

              # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
              INVALID_PHYSICAL_CARD = :invalid_physical_card

              # The 3DS cardholder authentication verification value was invalid.
              INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE = :invalid_cardholder_authentication_verification_value

              # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
              INTERNAL_VISA_ERROR = :internal_visa_error

              # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
              MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED = :merchant_transaction_advisory_service_authentication_required

              # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
              PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK = :payment_fraud_disruption_acquirer_block

              # An unspecific reason for stand-in processing.
              OTHER = :other
            end
          end
        end
      end
    end
  end
end
