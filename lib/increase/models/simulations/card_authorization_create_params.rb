# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::CardAuthorizations#create
      class CardAuthorizationCreateParams < Increase::Internal::Type::BaseModel
        # @!parse
        #   extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # @!attribute amount
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [r] authenticated_card_payment_id
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/authenticated_card_payment_id
        #
        #   @return [String, nil]
        optional :authenticated_card_payment_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :authenticated_card_payment_id

        # @!attribute [r] card_id
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/card_id
        #
        #   @return [String, nil]
        optional :card_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :card_id

        # @!attribute [r] decline_reason
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/decline_reason
        #
        #   @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::DeclineReason, nil]
        optional :decline_reason,
                 enum: -> { Increase::Models::Simulations::CardAuthorizationCreateParams::DeclineReason }

        # @!parse
        #   # @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::DeclineReason]
        #   attr_writer :decline_reason

        # @!attribute [r] digital_wallet_token_id
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/digital_wallet_token_id
        #
        #   @return [String, nil]
        optional :digital_wallet_token_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :digital_wallet_token_id

        # @!attribute [r] direction
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/direction
        #
        #   @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::Direction, nil]
        optional :direction, enum: -> { Increase::Models::Simulations::CardAuthorizationCreateParams::Direction }

        # @!parse
        #   # @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::Direction]
        #   attr_writer :direction

        # @!attribute [r] event_subscription_id
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/event_subscription_id
        #
        #   @return [String, nil]
        optional :event_subscription_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :event_subscription_id

        # @!attribute [r] merchant_acceptor_id
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_acceptor_id
        #
        #   @return [String, nil]
        optional :merchant_acceptor_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_acceptor_id

        # @!attribute [r] merchant_category_code
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_category_code
        #
        #   @return [String, nil]
        optional :merchant_category_code, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_category_code

        # @!attribute [r] merchant_city
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_city
        #
        #   @return [String, nil]
        optional :merchant_city, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_city

        # @!attribute [r] merchant_country
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_country
        #
        #   @return [String, nil]
        optional :merchant_country, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_country

        # @!attribute [r] merchant_descriptor
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_descriptor
        #
        #   @return [String, nil]
        optional :merchant_descriptor, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_descriptor

        # @!attribute [r] merchant_state
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_state
        #
        #   @return [String, nil]
        optional :merchant_state, String

        # @!parse
        #   # @return [String]
        #   attr_writer :merchant_state

        # @!attribute [r] network_details
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/network_details
        #
        #   @return [Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails, nil]
        optional :network_details,
                 -> { Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails }

        # @!parse
        #   # @return [Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails]
        #   attr_writer :network_details

        # @!attribute [r] network_risk_score
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/network_risk_score
        #
        #   @return [Integer, nil]
        optional :network_risk_score, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :network_risk_score

        # @!attribute [r] physical_card_id
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/physical_card_id
        #
        #   @return [String, nil]
        optional :physical_card_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :physical_card_id

        # @!attribute [r] terminal_id
        #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/terminal_id
        #
        #   @return [String, nil]
        optional :terminal_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :terminal_id

        # @!parse
        #   # @param amount [Integer]
        #   # @param authenticated_card_payment_id [String]
        #   # @param card_id [String]
        #   # @param decline_reason [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::DeclineReason]
        #   # @param digital_wallet_token_id [String]
        #   # @param direction [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::Direction]
        #   # @param event_subscription_id [String]
        #   # @param merchant_acceptor_id [String]
        #   # @param merchant_category_code [String]
        #   # @param merchant_city [String]
        #   # @param merchant_country [String]
        #   # @param merchant_descriptor [String]
        #   # @param merchant_state [String]
        #   # @param network_details [Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails]
        #   # @param network_risk_score [Integer]
        #   # @param physical_card_id [String]
        #   # @param terminal_id [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
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
        #     network_details: nil,
        #     network_risk_score: nil,
        #     physical_card_id: nil,
        #     terminal_id: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/decline_reason
        module DeclineReason
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/direction
        module Direction
          extend Increase::Internal::Type::Enum

          # A regular card authorization where funds are debited from the cardholder.
          SETTLEMENT = :settlement

          # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
          REFUND = :refund

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class NetworkDetails < Increase::Internal::Type::BaseModel
          # @!attribute visa
          #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/network_details/properties/visa
          #
          #   @return [Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa]
          required :visa, -> { Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa }

          # @!parse
          #   # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/network_details
          #   #
          #   # @param visa [Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa]
          #   #
          #   def initialize(visa:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails#visa
          class Visa < Increase::Internal::Type::BaseModel
            # @!attribute [r] stand_in_processing_reason
            #   #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/network_details/properties/visa/properties/stand_in_processing_reason
            #
            #   @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa::StandInProcessingReason, nil]
            optional :stand_in_processing_reason,
                     enum: -> { Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa::StandInProcessingReason }

            # @!parse
            #   # @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa::StandInProcessingReason]
            #   attr_writer :stand_in_processing_reason

            # @!parse
            #   # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/network_details/properties/visa
            #   #
            #   # @param stand_in_processing_reason [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa::StandInProcessingReason]
            #   #
            #   def initialize(stand_in_processing_reason: nil, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/network_details/properties/visa/properties/stand_in_processing_reason
            #
            # @see Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails::Visa#stand_in_processing_reason
            module StandInProcessingReason
              extend Increase::Internal::Type::Enum

              # Increase failed to process the authorization in a timely manner.
              ISSUER_ERROR = :issuer_error

              # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
              INVALID_PHYSICAL_CARD = :invalid_physical_card

              # The 3DS cardholder authentication verification value was invalid.
              INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE =
                :invalid_cardholder_authentication_verification_value

              # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
              INTERNAL_VISA_ERROR = :internal_visa_error

              # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
              MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED =
                :merchant_transaction_advisory_service_authentication_required

              # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
              PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK = :payment_fraud_disruption_acquirer_block

              # An unspecific reason for stand-in processing.
              OTHER = :other

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end
          end
        end
      end
    end
  end
end
