# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::CardPayments#retrieve
    class CardPayment < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/card_payment/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/card_payment/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute card_id
      #   #/components/schemas/card_payment/properties/card_id
      #
      #   @return [String]
      required :card_id, String

      # @!attribute created_at
      #   #/components/schemas/card_payment/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute digital_wallet_token_id
      #   #/components/schemas/card_payment/properties/digital_wallet_token_id
      #
      #   @return [String, nil]
      required :digital_wallet_token_id, String, nil?: true

      # @!attribute elements
      #   #/components/schemas/card_payment/properties/elements
      #
      #   @return [Array<Increase::Models::CardPayment::Element>]
      required :elements, -> { Increase::Internal::Type::ArrayOf[Increase::Models::CardPayment::Element] }

      # @!attribute physical_card_id
      #   #/components/schemas/card_payment/properties/physical_card_id
      #
      #   @return [String, nil]
      required :physical_card_id, String, nil?: true

      # @!attribute state
      #   #/components/schemas/card_payment/properties/state
      #
      #   @return [Increase::Models::CardPayment::State]
      required :state, -> { Increase::Models::CardPayment::State }

      # @!attribute type
      #   #/components/schemas/card_payment/properties/type
      #
      #   @return [Symbol, Increase::Models::CardPayment::Type]
      required :type, enum: -> { Increase::Models::CardPayment::Type }

      # @!parse
      #   # #/components/schemas/card_payment
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param card_id [String]
      #   # @param created_at [Time]
      #   # @param digital_wallet_token_id [String, nil]
      #   # @param elements [Array<Increase::Models::CardPayment::Element>]
      #   # @param physical_card_id [String, nil]
      #   # @param state [Increase::Models::CardPayment::State]
      #   # @param type [Symbol, Increase::Models::CardPayment::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     card_id:,
      #     created_at:,
      #     digital_wallet_token_id:,
      #     elements:,
      #     physical_card_id:,
      #     state:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Element < Increase::Internal::Type::BaseModel
        # @!attribute card_authentication
        #   #/components/schemas/card_payment/properties/elements/items/properties/card_authentication
        #
        #   @return [Increase::Models::CardPayment::Element::CardAuthentication, nil]
        required :card_authentication,
                 -> { Increase::Models::CardPayment::Element::CardAuthentication },
                 nil?: true

        # @!attribute card_authorization
        #   #/components/schemas/card_payment/properties/elements/items/properties/card_authorization
        #
        #   @return [Increase::Models::CardPayment::Element::CardAuthorization, nil]
        required :card_authorization, -> { Increase::Models::CardPayment::Element::CardAuthorization }, nil?: true

        # @!attribute card_authorization_expiration
        #   #/components/schemas/card_payment/properties/elements/items/properties/card_authorization_expiration
        #
        #   @return [Increase::Models::CardPayment::Element::CardAuthorizationExpiration, nil]
        required :card_authorization_expiration,
                 -> { Increase::Models::CardPayment::Element::CardAuthorizationExpiration },
                 nil?: true

        # @!attribute card_decline
        #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline
        #
        #   @return [Increase::Models::CardPayment::Element::CardDecline, nil]
        required :card_decline, -> { Increase::Models::CardPayment::Element::CardDecline }, nil?: true

        # @!attribute card_fuel_confirmation
        #   #/components/schemas/card_payment/properties/elements/items/properties/card_fuel_confirmation
        #
        #   @return [Increase::Models::CardPayment::Element::CardFuelConfirmation, nil]
        required :card_fuel_confirmation,
                 -> { Increase::Models::CardPayment::Element::CardFuelConfirmation },
                 nil?: true

        # @!attribute card_increment
        #   #/components/schemas/card_payment/properties/elements/items/properties/card_increment
        #
        #   @return [Increase::Models::CardPayment::Element::CardIncrement, nil]
        required :card_increment, -> { Increase::Models::CardPayment::Element::CardIncrement }, nil?: true

        # @!attribute card_refund
        #   #/components/schemas/card_payment/properties/elements/items/properties/card_refund
        #
        #   @return [Increase::Models::CardPayment::Element::CardRefund, nil]
        required :card_refund, -> { Increase::Models::CardPayment::Element::CardRefund }, nil?: true

        # @!attribute card_reversal
        #   #/components/schemas/card_payment/properties/elements/items/properties/card_reversal
        #
        #   @return [Increase::Models::CardPayment::Element::CardReversal, nil]
        required :card_reversal, -> { Increase::Models::CardPayment::Element::CardReversal }, nil?: true

        # @!attribute card_settlement
        #   #/components/schemas/card_payment/properties/elements/items/properties/card_settlement
        #
        #   @return [Increase::Models::CardPayment::Element::CardSettlement, nil]
        required :card_settlement, -> { Increase::Models::CardPayment::Element::CardSettlement }, nil?: true

        # @!attribute card_validation
        #   #/components/schemas/card_payment/properties/elements/items/properties/card_validation
        #
        #   @return [Increase::Models::CardPayment::Element::CardValidation, nil]
        required :card_validation, -> { Increase::Models::CardPayment::Element::CardValidation }, nil?: true

        # @!attribute category
        #   #/components/schemas/card_payment/properties/elements/items/properties/category
        #
        #   @return [Symbol, Increase::Models::CardPayment::Element::Category]
        required :category, enum: -> { Increase::Models::CardPayment::Element::Category }

        # @!attribute created_at
        #   #/components/schemas/card_payment/properties/elements/items/properties/created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute other
        #   #/components/schemas/card_payment/properties/elements/items/properties/other
        #
        #   @return [Object, nil]
        required :other, Increase::Internal::Type::Unknown, nil?: true

        # @!parse
        #   # #/components/schemas/card_payment/properties/elements/items
        #   #
        #   # @param card_authentication [Increase::Models::CardPayment::Element::CardAuthentication, nil]
        #   # @param card_authorization [Increase::Models::CardPayment::Element::CardAuthorization, nil]
        #   # @param card_authorization_expiration [Increase::Models::CardPayment::Element::CardAuthorizationExpiration, nil]
        #   # @param card_decline [Increase::Models::CardPayment::Element::CardDecline, nil]
        #   # @param card_fuel_confirmation [Increase::Models::CardPayment::Element::CardFuelConfirmation, nil]
        #   # @param card_increment [Increase::Models::CardPayment::Element::CardIncrement, nil]
        #   # @param card_refund [Increase::Models::CardPayment::Element::CardRefund, nil]
        #   # @param card_reversal [Increase::Models::CardPayment::Element::CardReversal, nil]
        #   # @param card_settlement [Increase::Models::CardPayment::Element::CardSettlement, nil]
        #   # @param card_validation [Increase::Models::CardPayment::Element::CardValidation, nil]
        #   # @param category [Symbol, Increase::Models::CardPayment::Element::Category]
        #   # @param created_at [Time]
        #   # @param other [Object, nil]
        #   #
        #   def initialize(
        #     card_authentication:,
        #     card_authorization:,
        #     card_authorization_expiration:,
        #     card_decline:,
        #     card_fuel_confirmation:,
        #     card_increment:,
        #     card_refund:,
        #     card_reversal:,
        #     card_settlement:,
        #     card_validation:,
        #     category:,
        #     created_at:,
        #     other:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::CardPayment::Element#card_authentication
        class CardAuthentication < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_authentication/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute card_id
          #   #/components/schemas/card_authentication/properties/card_id
          #
          #   @return [String]
          required :card_id, String

          # @!attribute card_payment_id
          #   #/components/schemas/card_authentication/properties/card_payment_id
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute category
          #   #/components/schemas/card_authentication/properties/category
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Category, nil]
          required :category,
                   enum: -> { Increase::Models::CardPayment::Element::CardAuthentication::Category },
                   nil?: true

          # @!attribute challenge
          #   #/components/schemas/card_authentication/properties/challenge
          #
          #   @return [Increase::Models::CardPayment::Element::CardAuthentication::Challenge, nil]
          required :challenge,
                   -> { Increase::Models::CardPayment::Element::CardAuthentication::Challenge },
                   nil?: true

          # @!attribute created_at
          #   #/components/schemas/card_authentication/properties/created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute deny_reason
          #   #/components/schemas/card_authentication/properties/deny_reason
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::DenyReason, nil]
          required :deny_reason,
                   enum: -> { Increase::Models::CardPayment::Element::CardAuthentication::DenyReason },
                   nil?: true

          # @!attribute device_channel
          #   #/components/schemas/card_authentication/properties/device_channel
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel, nil]
          required :device_channel,
                   enum: -> { Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel },
                   nil?: true

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/card_authentication/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/card_authentication/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_country
          #   #/components/schemas/card_authentication/properties/merchant_country
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_name
          #   #/components/schemas/card_authentication/properties/merchant_name
          #
          #   @return [String]
          required :merchant_name, String

          # @!attribute purchase_amount
          #   #/components/schemas/card_authentication/properties/purchase_amount
          #
          #   @return [Integer, nil]
          required :purchase_amount, Integer, nil?: true

          # @!attribute purchase_currency
          #   #/components/schemas/card_authentication/properties/purchase_currency
          #
          #   @return [String, nil]
          required :purchase_currency, String, nil?: true

          # @!attribute real_time_decision_id
          #   #/components/schemas/card_authentication/properties/real_time_decision_id
          #
          #   @return [String, nil]
          required :real_time_decision_id, String, nil?: true

          # @!attribute status
          #   #/components/schemas/card_authentication/properties/status
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Status]
          required :status, enum: -> { Increase::Models::CardPayment::Element::CardAuthentication::Status }

          # @!attribute type
          #   #/components/schemas/card_authentication/properties/type
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardAuthentication::Type }

          # @!parse
          #   # #/components/schemas/card_payment/properties/elements/items/properties/card_authentication
          #   #
          #   # @param id [String]
          #   # @param card_id [String]
          #   # @param card_payment_id [String]
          #   # @param category [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Category, nil]
          #   # @param challenge [Increase::Models::CardPayment::Element::CardAuthentication::Challenge, nil]
          #   # @param created_at [Time]
          #   # @param deny_reason [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::DenyReason, nil]
          #   # @param device_channel [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::DeviceChannel, nil]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_country [String]
          #   # @param merchant_name [String]
          #   # @param purchase_amount [Integer, nil]
          #   # @param purchase_currency [String, nil]
          #   # @param real_time_decision_id [String, nil]
          #   # @param status [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Status]
          #   # @param type [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Type]
          #   #
          #   def initialize(
          #     id:,
          #     card_id:,
          #     card_payment_id:,
          #     category:,
          #     challenge:,
          #     created_at:,
          #     deny_reason:,
          #     device_channel:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_country:,
          #     merchant_name:,
          #     purchase_amount:,
          #     purchase_currency:,
          #     real_time_decision_id:,
          #     status:,
          #     type:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/card_authentication/properties/category
          #
          # @see Increase::Models::CardPayment::Element::CardAuthentication#category
          module Category
            extend Increase::Internal::Type::Enum

            # The authentication attempt is for a payment.
            PAYMENT_AUTHENTICATION = :payment_authentication

            # The authentication attempt is not for a payment.
            NON_PAYMENT_AUTHENTICATION = :non_payment_authentication

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::CardPayment::Element::CardAuthentication#challenge
          class Challenge < Increase::Internal::Type::BaseModel
            # @!attribute attempts
            #   #/components/schemas/card_authentication/properties/challenge/anyOf/0/properties/attempts
            #
            #   @return [Array<Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt>]
            required :attempts,
                     -> { Increase::Internal::Type::ArrayOf[Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt] }

            # @!attribute created_at
            #   #/components/schemas/card_authentication/properties/challenge/anyOf/0/properties/created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute one_time_code
            #   #/components/schemas/card_authentication/properties/challenge/anyOf/0/properties/one_time_code
            #
            #   @return [String]
            required :one_time_code, String

            # @!attribute verification_method
            #   #/components/schemas/card_authentication/properties/challenge/anyOf/0/properties/verification_method
            #
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod]
            required :verification_method,
                     enum: -> { Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod }

            # @!attribute verification_value
            #   #/components/schemas/card_authentication/properties/challenge/anyOf/0/properties/verification_value
            #
            #   @return [String, nil]
            required :verification_value, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_authentication/properties/challenge
            #   #
            #   # @param attempts [Array<Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt>]
            #   # @param created_at [Time]
            #   # @param one_time_code [String]
            #   # @param verification_method [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Challenge::VerificationMethod]
            #   # @param verification_value [String, nil]
            #   #
            #   def initialize(attempts:, created_at:, one_time_code:, verification_method:, verification_value:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            class Attempt < Increase::Internal::Type::BaseModel
              # @!attribute created_at
              #   #/components/schemas/card_authentication/properties/challenge/anyOf/0/properties/attempts/items/properties/created_at
              #
              #   @return [Time]
              required :created_at, Time

              # @!attribute outcome
              #   #/components/schemas/card_authentication/properties/challenge/anyOf/0/properties/attempts/items/properties/outcome
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome]
              required :outcome,
                       enum: -> { Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome }

              # @!parse
              #   # #/components/schemas/card_authentication/properties/challenge/anyOf/0/properties/attempts/items
              #   #
              #   # @param created_at [Time]
              #   # @param outcome [Symbol, Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt::Outcome]
              #   #
              #   def initialize(created_at:, outcome:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_authentication/properties/challenge/anyOf/0/properties/attempts/items/properties/outcome
              #
              # @see Increase::Models::CardPayment::Element::CardAuthentication::Challenge::Attempt#outcome
              module Outcome
                extend Increase::Internal::Type::Enum

                # The attempt was successful.
                SUCCESSFUL = :successful

                # The attempt was unsuccessful.
                FAILED = :failed

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # #/components/schemas/card_authentication/properties/challenge/anyOf/0/properties/verification_method
            #
            # @see Increase::Models::CardPayment::Element::CardAuthentication::Challenge#verification_method
            module VerificationMethod
              extend Increase::Internal::Type::Enum

              # The one-time code was sent via text message.
              TEXT_MESSAGE = :text_message

              # The one-time code was sent via email.
              EMAIL = :email

              # The one-time code was not successfully delivered.
              NONE_AVAILABLE = :none_available

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end
          end

          # #/components/schemas/card_authentication/properties/deny_reason
          #
          # @see Increase::Models::CardPayment::Element::CardAuthentication#deny_reason
          module DenyReason
            extend Increase::Internal::Type::Enum

            # The group was locked.
            GROUP_LOCKED = :group_locked

            # The card was not active.
            CARD_NOT_ACTIVE = :card_not_active

            # The entity was not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # The transaction was not allowed.
            TRANSACTION_NOT_ALLOWED = :transaction_not_allowed

            # The webhook was denied.
            WEBHOOK_DENIED = :webhook_denied

            # The webhook timed out.
            WEBHOOK_TIMED_OUT = :webhook_timed_out

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authentication/properties/device_channel
          #
          # @see Increase::Models::CardPayment::Element::CardAuthentication#device_channel
          module DeviceChannel
            extend Increase::Internal::Type::Enum

            # The authentication attempt was made from an app.
            APP = :app

            # The authentication attempt was made from a browser.
            BROWSER = :browser

            # The authentication attempt was initiated by the 3DS Requestor.
            THREE_DS_REQUESTOR_INITIATED = :three_ds_requestor_initiated

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authentication/properties/status
          #
          # @see Increase::Models::CardPayment::Element::CardAuthentication#status
          module Status
            extend Increase::Internal::Type::Enum

            # The authentication attempt was denied.
            DENIED = :denied

            # The authentication attempt was authenticated with a challenge.
            AUTHENTICATED_WITH_CHALLENGE = :authenticated_with_challenge

            # The authentication attempt was authenticated without a challenge.
            AUTHENTICATED_WITHOUT_CHALLENGE = :authenticated_without_challenge

            # The authentication attempt is awaiting a challenge.
            AWAITING_CHALLENGE = :awaiting_challenge

            # The authentication attempt is validating a challenge.
            VALIDATING_CHALLENGE = :validating_challenge

            # The authentication attempt was canceled.
            CANCELED = :canceled

            # The authentication attempt timed out while awaiting a challenge.
            TIMED_OUT_AWAITING_CHALLENGE = :timed_out_awaiting_challenge

            # The authentication attempt errored.
            ERRORED = :errored

            # The authentication attempt exceeded the attempt threshold.
            EXCEEDED_ATTEMPT_THRESHOLD = :exceeded_attempt_threshold

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authentication/properties/type
          #
          # @see Increase::Models::CardPayment::Element::CardAuthentication#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_AUTHENTICATION = :card_authentication

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::CardPayment::Element#card_authorization
        class CardAuthorization < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_authorization/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute actioner
          #   #/components/schemas/card_authorization/properties/actioner
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Actioner]
          required :actioner, enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::Actioner }

          # @!attribute amount
          #   #/components/schemas/card_authorization/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_payment_id
          #   #/components/schemas/card_authorization/properties/card_payment_id
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute currency
          #   #/components/schemas/card_authorization/properties/currency
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::Currency }

          # @!attribute digital_wallet_token_id
          #   #/components/schemas/card_authorization/properties/digital_wallet_token_id
          #
          #   @return [String, nil]
          required :digital_wallet_token_id, String, nil?: true

          # @!attribute direction
          #   #/components/schemas/card_authorization/properties/direction
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Direction]
          required :direction, enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::Direction }

          # @!attribute expires_at
          #   #/components/schemas/card_authorization/properties/expires_at
          #
          #   @return [Time]
          required :expires_at, Time

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/card_authorization/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/card_authorization/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   #/components/schemas/card_authorization/properties/merchant_city
          #
          #   @return [String, nil]
          required :merchant_city, String, nil?: true

          # @!attribute merchant_country
          #   #/components/schemas/card_authorization/properties/merchant_country
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_descriptor
          #   #/components/schemas/card_authorization/properties/merchant_descriptor
          #
          #   @return [String]
          required :merchant_descriptor, String

          # @!attribute merchant_postal_code
          #   #/components/schemas/card_authorization/properties/merchant_postal_code
          #
          #   @return [String, nil]
          required :merchant_postal_code, String, nil?: true

          # @!attribute merchant_state
          #   #/components/schemas/card_authorization/properties/merchant_state
          #
          #   @return [String, nil]
          required :merchant_state, String, nil?: true

          # @!attribute network_details
          #   #/components/schemas/card_authorization/properties/network_details
          #
          #   @return [Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails]
          required :network_details,
                   -> { Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails }

          # @!attribute network_identifiers
          #   #/components/schemas/card_authorization/properties/network_identifiers
          #
          #   @return [Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers }

          # @!attribute network_risk_score
          #   #/components/schemas/card_authorization/properties/network_risk_score
          #
          #   @return [Integer, nil]
          required :network_risk_score, Integer, nil?: true

          # @!attribute pending_transaction_id
          #   #/components/schemas/card_authorization/properties/pending_transaction_id
          #
          #   @return [String, nil]
          required :pending_transaction_id, String, nil?: true

          # @!attribute physical_card_id
          #   #/components/schemas/card_authorization/properties/physical_card_id
          #
          #   @return [String, nil]
          required :physical_card_id, String, nil?: true

          # @!attribute presentment_amount
          #   #/components/schemas/card_authorization/properties/presentment_amount
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   #/components/schemas/card_authorization/properties/presentment_currency
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute processing_category
          #   #/components/schemas/card_authorization/properties/processing_category
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory]
          required :processing_category,
                   enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory }

          # @!attribute real_time_decision_id
          #   #/components/schemas/card_authorization/properties/real_time_decision_id
          #
          #   @return [String, nil]
          required :real_time_decision_id, String, nil?: true

          # @!attribute terminal_id
          #   #/components/schemas/card_authorization/properties/terminal_id
          #
          #   @return [String, nil]
          required :terminal_id, String, nil?: true

          # @!attribute type
          #   #/components/schemas/card_authorization/properties/type
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::Type }

          # @!attribute verification
          #   #/components/schemas/card_authorization/properties/verification
          #
          #   @return [Increase::Models::CardPayment::Element::CardAuthorization::Verification]
          required :verification, -> { Increase::Models::CardPayment::Element::CardAuthorization::Verification }

          # @!parse
          #   # #/components/schemas/card_payment/properties/elements/items/properties/card_authorization
          #   #
          #   # @param id [String]
          #   # @param actioner [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Actioner]
          #   # @param amount [Integer]
          #   # @param card_payment_id [String]
          #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Currency]
          #   # @param digital_wallet_token_id [String, nil]
          #   # @param direction [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Direction]
          #   # @param expires_at [Time]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_city [String, nil]
          #   # @param merchant_country [String]
          #   # @param merchant_descriptor [String]
          #   # @param merchant_postal_code [String, nil]
          #   # @param merchant_state [String, nil]
          #   # @param network_details [Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails]
          #   # @param network_identifiers [Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers]
          #   # @param network_risk_score [Integer, nil]
          #   # @param pending_transaction_id [String, nil]
          #   # @param physical_card_id [String, nil]
          #   # @param presentment_amount [Integer]
          #   # @param presentment_currency [String]
          #   # @param processing_category [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory]
          #   # @param real_time_decision_id [String, nil]
          #   # @param terminal_id [String, nil]
          #   # @param type [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Type]
          #   # @param verification [Increase::Models::CardPayment::Element::CardAuthorization::Verification]
          #   #
          #   def initialize(
          #     id:,
          #     actioner:,
          #     amount:,
          #     card_payment_id:,
          #     currency:,
          #     digital_wallet_token_id:,
          #     direction:,
          #     expires_at:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_city:,
          #     merchant_country:,
          #     merchant_descriptor:,
          #     merchant_postal_code:,
          #     merchant_state:,
          #     network_details:,
          #     network_identifiers:,
          #     network_risk_score:,
          #     pending_transaction_id:,
          #     physical_card_id:,
          #     presentment_amount:,
          #     presentment_currency:,
          #     processing_category:,
          #     real_time_decision_id:,
          #     terminal_id:,
          #     type:,
          #     verification:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/card_authorization/properties/actioner
          #
          # @see Increase::Models::CardPayment::Element::CardAuthorization#actioner
          module Actioner
            extend Increase::Internal::Type::Enum

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authorization/properties/currency
          #
          # @see Increase::Models::CardPayment::Element::CardAuthorization#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authorization/properties/direction
          #
          # @see Increase::Models::CardPayment::Element::CardAuthorization#direction
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

          # @see Increase::Models::CardPayment::Element::CardAuthorization#network_details
          class NetworkDetails < Increase::Internal::Type::BaseModel
            # @!attribute category
            #   #/components/schemas/card_authorization/properties/network_details/properties/category
            #
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category]
            required :category,
                     enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category }

            # @!attribute visa
            #   #/components/schemas/card_authorization/properties/network_details/properties/visa
            #
            #   @return [Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa, nil]
            required :visa,
                     -> { Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa },
                     nil?: true

            # @!parse
            #   # #/components/schemas/card_authorization/properties/network_details
            #   #
            #   # @param category [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category]
            #   # @param visa [Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa, nil]
            #   #
            #   def initialize(category:, visa:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_authorization/properties/network_details/properties/category
            #
            # @see Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails#category
            module Category
              extend Increase::Internal::Type::Enum

              # Visa
              VISA = :visa

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails#visa
            class Visa < Increase::Internal::Type::BaseModel
              # @!attribute electronic_commerce_indicator
              #   #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              required :electronic_commerce_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator },
                       nil?: true

              # @!attribute point_of_service_entry_mode
              #   #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              required :point_of_service_entry_mode,
                       enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode },
                       nil?: true

              # @!attribute stand_in_processing_reason
              #   #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason, nil]
              required :stand_in_processing_reason,
                       enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason },
                       nil?: true

              # @!parse
              #   # #/components/schemas/card_authorization/properties/network_details/properties/visa
              #   #
              #   # @param electronic_commerce_indicator [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              #   # @param point_of_service_entry_mode [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              #   # @param stand_in_processing_reason [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason, nil]
              #   #
              #   def initialize(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa#electronic_commerce_indicator
              module ElectronicCommerceIndicator
                extend Increase::Internal::Type::Enum

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER = :mail_phone_order

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING = :recurring

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT = :installment

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER = :unknown_mail_phone_order

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE = :secure_electronic_commerce

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  :non_authenticated_security_transaction_at_3ds_capable_merchant

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = :non_authenticated_security_transaction

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = :non_secure_transaction

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              #
              # @see Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa#point_of_service_entry_mode
              module PointOfServiceEntryMode
                extend Increase::Internal::Type::Enum

                # Unknown
                UNKNOWN = :unknown

                # Manual key entry
                MANUAL = :manual

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV = :magnetic_stripe_no_cvv

                # Optical code
                OPTICAL_CODE = :optical_code

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD = :integrated_circuit_card

                # Contactless read of chip card
                CONTACTLESS = :contactless

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE = :credential_on_file

                # Magnetic stripe read
                MAGNETIC_STRIPE = :magnetic_stripe

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE = :contactless_magnetic_stripe

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV = :integrated_circuit_card_no_cvv

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              #
              # @see Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa#stand_in_processing_reason
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

          # @see Increase::Models::CardPayment::Element::CardAuthorization#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute retrieval_reference_number
            #   #/components/schemas/card_authorization/properties/network_identifiers/properties/retrieval_reference_number
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String, nil?: true

            # @!attribute trace_number
            #   #/components/schemas/card_authorization/properties/network_identifiers/properties/trace_number
            #
            #   @return [String, nil]
            required :trace_number, String, nil?: true

            # @!attribute transaction_id
            #   #/components/schemas/card_authorization/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_authorization/properties/network_identifiers
            #   #
            #   # @param retrieval_reference_number [String, nil]
            #   # @param trace_number [String, nil]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(retrieval_reference_number:, trace_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # #/components/schemas/card_authorization/properties/processing_category
          #
          # @see Increase::Models::CardPayment::Element::CardAuthorization#processing_category
          module ProcessingCategory
            extend Increase::Internal::Type::Enum

            # Account funding transactions are transactions used to e.g., fund an account or transfer funds between accounts.
            ACCOUNT_FUNDING = :account_funding

            # Automatic fuel dispenser authorizations occur when a card is used at a gas pump, prior to the actual transaction amount being known. They are followed by an advice message that updates the amount of the pending transaction.
            AUTOMATIC_FUEL_DISPENSER = :automatic_fuel_dispenser

            # A transaction used to pay a bill.
            BILL_PAYMENT = :bill_payment

            # A regular purchase.
            PURCHASE = :purchase

            # Quasi-cash transactions represent purchases of items which may be convertible to cash.
            QUASI_CASH = :quasi_cash

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authorization/properties/type
          #
          # @see Increase::Models::CardPayment::Element::CardAuthorization#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_AUTHORIZATION = :card_authorization

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::CardPayment::Element::CardAuthorization#verification
          class Verification < Increase::Internal::Type::BaseModel
            # @!attribute card_verification_code
            #   #/components/schemas/card_authorization/properties/verification/properties/card_verification_code
            #
            #   @return [Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode }

            # @!attribute cardholder_address
            #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address
            #
            #   @return [Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress }

            # @!parse
            #   # #/components/schemas/card_authorization/properties/verification
            #   #
            #   # @param card_verification_code [Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode]
            #   # @param cardholder_address [Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress]
            #   #
            #   def initialize(card_verification_code:, cardholder_address:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::CardPayment::Element::CardAuthorization::Verification#card_verification_code
            class CardVerificationCode < Increase::Internal::Type::BaseModel
              # @!attribute result
              #   #/components/schemas/card_authorization/properties/verification/properties/card_verification_code/properties/result
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result]
              required :result,
                       enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result }

              # @!parse
              #   # #/components/schemas/card_authorization/properties/verification/properties/card_verification_code
              #   #
              #   # @param result [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result]
              #   #
              #   def initialize(result:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_authorization/properties/verification/properties/card_verification_code/properties/result
              #
              # @see Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode#result
              module Result
                extend Increase::Internal::Type::Enum

                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # @see Increase::Models::CardPayment::Element::CardAuthorization::Verification#cardholder_address
            class CardholderAddress < Increase::Internal::Type::BaseModel
              # @!attribute actual_line1
              #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/actual_line1
              #
              #   @return [String, nil]
              required :actual_line1, String, nil?: true

              # @!attribute actual_postal_code
              #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/actual_postal_code
              #
              #   @return [String, nil]
              required :actual_postal_code, String, nil?: true

              # @!attribute provided_line1
              #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/provided_line1
              #
              #   @return [String, nil]
              required :provided_line1, String, nil?: true

              # @!attribute provided_postal_code
              #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/provided_postal_code
              #
              #   @return [String, nil]
              required :provided_postal_code, String, nil?: true

              # @!attribute result
              #   #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/result
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result]
              required :result,
                       enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result }

              # @!parse
              #   # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address
              #   #
              #   # @param actual_line1 [String, nil]
              #   # @param actual_postal_code [String, nil]
              #   # @param provided_line1 [String, nil]
              #   # @param provided_postal_code [String, nil]
              #   # @param result [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result]
              #   #
              #   def initialize(actual_line1:, actual_postal_code:, provided_line1:, provided_postal_code:, result:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/result
              #
              # @see Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress#result
              module Result
                extend Increase::Internal::Type::Enum

                # No address was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED = :postal_code_match_address_not_checked

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH = :postal_code_match_address_no_match

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH = :postal_code_no_match_address_match

                # Postal code and street address match.
                MATCH = :match

                # Postal code and street address do not match.
                NO_MATCH = :no_match

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end
        end

        # @see Increase::Models::CardPayment::Element#card_authorization_expiration
        class CardAuthorizationExpiration < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_authorization_expiration/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute card_authorization_id
          #   #/components/schemas/card_authorization_expiration/properties/card_authorization_id
          #
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute currency
          #   #/components/schemas/card_authorization_expiration/properties/currency
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency]
          required :currency,
                   enum: -> { Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency }

          # @!attribute expired_amount
          #   #/components/schemas/card_authorization_expiration/properties/expired_amount
          #
          #   @return [Integer]
          required :expired_amount, Integer

          # @!attribute network
          #   #/components/schemas/card_authorization_expiration/properties/network
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network]
          required :network,
                   enum: -> { Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network }

          # @!attribute type
          #   #/components/schemas/card_authorization_expiration/properties/type
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type }

          # @!parse
          #   # #/components/schemas/card_payment/properties/elements/items/properties/card_authorization_expiration
          #   #
          #   # @param id [String]
          #   # @param card_authorization_id [String]
          #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency]
          #   # @param expired_amount [Integer]
          #   # @param network [Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network]
          #   # @param type [Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type]
          #   #
          #   def initialize(id:, card_authorization_id:, currency:, expired_amount:, network:, type:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/card_authorization_expiration/properties/currency
          #
          # @see Increase::Models::CardPayment::Element::CardAuthorizationExpiration#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authorization_expiration/properties/network
          #
          # @see Increase::Models::CardPayment::Element::CardAuthorizationExpiration#network
          module Network
            extend Increase::Internal::Type::Enum

            # Visa
            VISA = :visa

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_authorization_expiration/properties/type
          #
          # @see Increase::Models::CardPayment::Element::CardAuthorizationExpiration#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_AUTHORIZATION_EXPIRATION = :card_authorization_expiration

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::CardPayment::Element#card_decline
        class CardDecline < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute actioner
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/actioner
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Actioner]
          required :actioner, enum: -> { Increase::Models::CardPayment::Element::CardDecline::Actioner }

          # @!attribute amount
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_payment_id
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/card_payment_id
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute currency
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardDecline::Currency }

          # @!attribute declined_transaction_id
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/declined_transaction_id
          #
          #   @return [String]
          required :declined_transaction_id, String

          # @!attribute digital_wallet_token_id
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/digital_wallet_token_id
          #
          #   @return [String, nil]
          required :digital_wallet_token_id, String, nil?: true

          # @!attribute direction
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/direction
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Direction]
          required :direction, enum: -> { Increase::Models::CardPayment::Element::CardDecline::Direction }

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/merchant_city
          #
          #   @return [String, nil]
          required :merchant_city, String, nil?: true

          # @!attribute merchant_country
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/merchant_country
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_descriptor
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/merchant_descriptor
          #
          #   @return [String]
          required :merchant_descriptor, String

          # @!attribute merchant_postal_code
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/merchant_postal_code
          #
          #   @return [String, nil]
          required :merchant_postal_code, String, nil?: true

          # @!attribute merchant_state
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/merchant_state
          #
          #   @return [String, nil]
          required :merchant_state, String, nil?: true

          # @!attribute network_details
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details
          #
          #   @return [Increase::Models::CardPayment::Element::CardDecline::NetworkDetails]
          required :network_details, -> { Increase::Models::CardPayment::Element::CardDecline::NetworkDetails }

          # @!attribute network_identifiers
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_identifiers
          #
          #   @return [Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers }

          # @!attribute network_risk_score
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_risk_score
          #
          #   @return [Integer, nil]
          required :network_risk_score, Integer, nil?: true

          # @!attribute physical_card_id
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/physical_card_id
          #
          #   @return [String, nil]
          required :physical_card_id, String, nil?: true

          # @!attribute presentment_amount
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/presentment_amount
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/presentment_currency
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute processing_category
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/processing_category
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory]
          required :processing_category,
                   enum: -> { Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory }

          # @!attribute real_time_decision_id
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/real_time_decision_id
          #
          #   @return [String, nil]
          required :real_time_decision_id, String, nil?: true

          # @!attribute real_time_decision_reason
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/real_time_decision_reason
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason, nil]
          required :real_time_decision_reason,
                   enum: -> { Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason },
                   nil?: true

          # @!attribute reason
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/reason
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Reason]
          required :reason, enum: -> { Increase::Models::CardPayment::Element::CardDecline::Reason }

          # @!attribute terminal_id
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/terminal_id
          #
          #   @return [String, nil]
          required :terminal_id, String, nil?: true

          # @!attribute verification
          #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification
          #
          #   @return [Increase::Models::CardPayment::Element::CardDecline::Verification]
          required :verification, -> { Increase::Models::CardPayment::Element::CardDecline::Verification }

          # @!parse
          #   # #/components/schemas/card_payment/properties/elements/items/properties/card_decline
          #   #
          #   # @param id [String]
          #   # @param actioner [Symbol, Increase::Models::CardPayment::Element::CardDecline::Actioner]
          #   # @param amount [Integer]
          #   # @param card_payment_id [String]
          #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardDecline::Currency]
          #   # @param declined_transaction_id [String]
          #   # @param digital_wallet_token_id [String, nil]
          #   # @param direction [Symbol, Increase::Models::CardPayment::Element::CardDecline::Direction]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_city [String, nil]
          #   # @param merchant_country [String]
          #   # @param merchant_descriptor [String]
          #   # @param merchant_postal_code [String, nil]
          #   # @param merchant_state [String, nil]
          #   # @param network_details [Increase::Models::CardPayment::Element::CardDecline::NetworkDetails]
          #   # @param network_identifiers [Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers]
          #   # @param network_risk_score [Integer, nil]
          #   # @param physical_card_id [String, nil]
          #   # @param presentment_amount [Integer]
          #   # @param presentment_currency [String]
          #   # @param processing_category [Symbol, Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory]
          #   # @param real_time_decision_id [String, nil]
          #   # @param real_time_decision_reason [Symbol, Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason, nil]
          #   # @param reason [Symbol, Increase::Models::CardPayment::Element::CardDecline::Reason]
          #   # @param terminal_id [String, nil]
          #   # @param verification [Increase::Models::CardPayment::Element::CardDecline::Verification]
          #   #
          #   def initialize(
          #     id:,
          #     actioner:,
          #     amount:,
          #     card_payment_id:,
          #     currency:,
          #     declined_transaction_id:,
          #     digital_wallet_token_id:,
          #     direction:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_city:,
          #     merchant_country:,
          #     merchant_descriptor:,
          #     merchant_postal_code:,
          #     merchant_state:,
          #     network_details:,
          #     network_identifiers:,
          #     network_risk_score:,
          #     physical_card_id:,
          #     presentment_amount:,
          #     presentment_currency:,
          #     processing_category:,
          #     real_time_decision_id:,
          #     real_time_decision_reason:,
          #     reason:,
          #     terminal_id:,
          #     verification:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/actioner
          #
          # @see Increase::Models::CardPayment::Element::CardDecline#actioner
          module Actioner
            extend Increase::Internal::Type::Enum

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/currency
          #
          # @see Increase::Models::CardPayment::Element::CardDecline#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/direction
          #
          # @see Increase::Models::CardPayment::Element::CardDecline#direction
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

          # @see Increase::Models::CardPayment::Element::CardDecline#network_details
          class NetworkDetails < Increase::Internal::Type::BaseModel
            # @!attribute category
            #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details/properties/category
            #
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category]
            required :category,
                     enum: -> { Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category }

            # @!attribute visa
            #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details/properties/visa
            #
            #   @return [Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa, nil]
            required :visa,
                     -> { Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa },
                     nil?: true

            # @!parse
            #   # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details
            #   #
            #   # @param category [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category]
            #   # @param visa [Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa, nil]
            #   #
            #   def initialize(category:, visa:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details/properties/category
            #
            # @see Increase::Models::CardPayment::Element::CardDecline::NetworkDetails#category
            module Category
              extend Increase::Internal::Type::Enum

              # Visa
              VISA = :visa

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::CardPayment::Element::CardDecline::NetworkDetails#visa
            class Visa < Increase::Internal::Type::BaseModel
              # @!attribute electronic_commerce_indicator
              #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              required :electronic_commerce_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator },
                       nil?: true

              # @!attribute point_of_service_entry_mode
              #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              required :point_of_service_entry_mode,
                       enum: -> { Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode },
                       nil?: true

              # @!attribute stand_in_processing_reason
              #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason, nil]
              required :stand_in_processing_reason,
                       enum: -> { Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason },
                       nil?: true

              # @!parse
              #   # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details/properties/visa
              #   #
              #   # @param electronic_commerce_indicator [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              #   # @param point_of_service_entry_mode [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              #   # @param stand_in_processing_reason [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason, nil]
              #   #
              #   def initialize(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa#electronic_commerce_indicator
              module ElectronicCommerceIndicator
                extend Increase::Internal::Type::Enum

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER = :mail_phone_order

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING = :recurring

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT = :installment

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER = :unknown_mail_phone_order

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE = :secure_electronic_commerce

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  :non_authenticated_security_transaction_at_3ds_capable_merchant

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = :non_authenticated_security_transaction

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = :non_secure_transaction

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              #
              # @see Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa#point_of_service_entry_mode
              module PointOfServiceEntryMode
                extend Increase::Internal::Type::Enum

                # Unknown
                UNKNOWN = :unknown

                # Manual key entry
                MANUAL = :manual

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV = :magnetic_stripe_no_cvv

                # Optical code
                OPTICAL_CODE = :optical_code

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD = :integrated_circuit_card

                # Contactless read of chip card
                CONTACTLESS = :contactless

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE = :credential_on_file

                # Magnetic stripe read
                MAGNETIC_STRIPE = :magnetic_stripe

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE = :contactless_magnetic_stripe

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV = :integrated_circuit_card_no_cvv

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              #
              # @see Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa#stand_in_processing_reason
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

          # @see Increase::Models::CardPayment::Element::CardDecline#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute retrieval_reference_number
            #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_identifiers/properties/retrieval_reference_number
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String, nil?: true

            # @!attribute trace_number
            #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_identifiers/properties/trace_number
            #
            #   @return [String, nil]
            required :trace_number, String, nil?: true

            # @!attribute transaction_id
            #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/network_identifiers
            #   #
            #   # @param retrieval_reference_number [String, nil]
            #   # @param trace_number [String, nil]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(retrieval_reference_number:, trace_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/processing_category
          #
          # @see Increase::Models::CardPayment::Element::CardDecline#processing_category
          module ProcessingCategory
            extend Increase::Internal::Type::Enum

            # Account funding transactions are transactions used to e.g., fund an account or transfer funds between accounts.
            ACCOUNT_FUNDING = :account_funding

            # Automatic fuel dispenser authorizations occur when a card is used at a gas pump, prior to the actual transaction amount being known. They are followed by an advice message that updates the amount of the pending transaction.
            AUTOMATIC_FUEL_DISPENSER = :automatic_fuel_dispenser

            # A transaction used to pay a bill.
            BILL_PAYMENT = :bill_payment

            # A regular purchase.
            PURCHASE = :purchase

            # Quasi-cash transactions represent purchases of items which may be convertible to cash.
            QUASI_CASH = :quasi_cash

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/real_time_decision_reason
          #
          # @see Increase::Models::CardPayment::Element::CardDecline#real_time_decision_reason
          module RealTimeDecisionReason
            extend Increase::Internal::Type::Enum

            # The cardholder does not have sufficient funds to cover the transaction. The merchant may attempt to process the transaction again.
            INSUFFICIENT_FUNDS = :insufficient_funds

            # This type of transaction is not allowed for this card. This transaction should not be retried.
            TRANSACTION_NEVER_ALLOWED = :transaction_never_allowed

            # The transaction amount exceeds the cardholder's approval limit. The merchant may attempt to process the transaction again.
            EXCEEDS_APPROVAL_LIMIT = :exceeds_approval_limit

            # The card has been temporarily disabled or not yet activated. The merchant may attempt to process the transaction again.
            CARD_TEMPORARILY_DISABLED = :card_temporarily_disabled

            # The transaction is suspected to be fraudulent. The merchant may attempt to process the transaction again.
            SUSPECTED_FRAUD = :suspected_fraud

            # The transaction was declined for another reason. The merchant may attempt to process the transaction again. This should be used sparingly.
            OTHER = :other

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/reason
          #
          # @see Increase::Models::CardPayment::Element::CardDecline#reason
          module Reason
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

          # @see Increase::Models::CardPayment::Element::CardDecline#verification
          class Verification < Increase::Internal::Type::BaseModel
            # @!attribute card_verification_code
            #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code
            #
            #   @return [Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode }

            # @!attribute cardholder_address
            #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address
            #
            #   @return [Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress }

            # @!parse
            #   # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification
            #   #
            #   # @param card_verification_code [Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode]
            #   # @param cardholder_address [Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress]
            #   #
            #   def initialize(card_verification_code:, cardholder_address:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::CardPayment::Element::CardDecline::Verification#card_verification_code
            class CardVerificationCode < Increase::Internal::Type::BaseModel
              # @!attribute result
              #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code/properties/result
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result]
              required :result,
                       enum: -> { Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result }

              # @!parse
              #   # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code
              #   #
              #   # @param result [Symbol, Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result]
              #   #
              #   def initialize(result:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code/properties/result
              #
              # @see Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode#result
              module Result
                extend Increase::Internal::Type::Enum

                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # @see Increase::Models::CardPayment::Element::CardDecline::Verification#cardholder_address
            class CardholderAddress < Increase::Internal::Type::BaseModel
              # @!attribute actual_line1
              #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/actual_line1
              #
              #   @return [String, nil]
              required :actual_line1, String, nil?: true

              # @!attribute actual_postal_code
              #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/actual_postal_code
              #
              #   @return [String, nil]
              required :actual_postal_code, String, nil?: true

              # @!attribute provided_line1
              #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/provided_line1
              #
              #   @return [String, nil]
              required :provided_line1, String, nil?: true

              # @!attribute provided_postal_code
              #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/provided_postal_code
              #
              #   @return [String, nil]
              required :provided_postal_code, String, nil?: true

              # @!attribute result
              #   #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/result
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result]
              required :result,
                       enum: -> { Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result }

              # @!parse
              #   # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address
              #   #
              #   # @param actual_line1 [String, nil]
              #   # @param actual_postal_code [String, nil]
              #   # @param provided_line1 [String, nil]
              #   # @param provided_postal_code [String, nil]
              #   # @param result [Symbol, Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result]
              #   #
              #   def initialize(actual_line1:, actual_postal_code:, provided_line1:, provided_postal_code:, result:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_payment/properties/elements/items/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/result
              #
              # @see Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress#result
              module Result
                extend Increase::Internal::Type::Enum

                # No address was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED = :postal_code_match_address_not_checked

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH = :postal_code_match_address_no_match

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH = :postal_code_no_match_address_match

                # Postal code and street address match.
                MATCH = :match

                # Postal code and street address do not match.
                NO_MATCH = :no_match

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end
        end

        # @see Increase::Models::CardPayment::Element#card_fuel_confirmation
        class CardFuelConfirmation < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_fuel_confirmation/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute card_authorization_id
          #   #/components/schemas/card_fuel_confirmation/properties/card_authorization_id
          #
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute currency
          #   #/components/schemas/card_fuel_confirmation/properties/currency
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency }

          # @!attribute network
          #   #/components/schemas/card_fuel_confirmation/properties/network
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Network]
          required :network, enum: -> { Increase::Models::CardPayment::Element::CardFuelConfirmation::Network }

          # @!attribute network_identifiers
          #   #/components/schemas/card_fuel_confirmation/properties/network_identifiers
          #
          #   @return [Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers }

          # @!attribute pending_transaction_id
          #   #/components/schemas/card_fuel_confirmation/properties/pending_transaction_id
          #
          #   @return [String, nil]
          required :pending_transaction_id, String, nil?: true

          # @!attribute type
          #   #/components/schemas/card_fuel_confirmation/properties/type
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardFuelConfirmation::Type }

          # @!attribute updated_authorization_amount
          #   #/components/schemas/card_fuel_confirmation/properties/updated_authorization_amount
          #
          #   @return [Integer]
          required :updated_authorization_amount, Integer

          # @!parse
          #   # #/components/schemas/card_payment/properties/elements/items/properties/card_fuel_confirmation
          #   #
          #   # @param id [String]
          #   # @param card_authorization_id [String]
          #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency]
          #   # @param network [Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Network]
          #   # @param network_identifiers [Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers]
          #   # @param pending_transaction_id [String, nil]
          #   # @param type [Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Type]
          #   # @param updated_authorization_amount [Integer]
          #   #
          #   def initialize(
          #     id:,
          #     card_authorization_id:,
          #     currency:,
          #     network:,
          #     network_identifiers:,
          #     pending_transaction_id:,
          #     type:,
          #     updated_authorization_amount:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/card_fuel_confirmation/properties/currency
          #
          # @see Increase::Models::CardPayment::Element::CardFuelConfirmation#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_fuel_confirmation/properties/network
          #
          # @see Increase::Models::CardPayment::Element::CardFuelConfirmation#network
          module Network
            extend Increase::Internal::Type::Enum

            # Visa
            VISA = :visa

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::CardPayment::Element::CardFuelConfirmation#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute retrieval_reference_number
            #   #/components/schemas/card_fuel_confirmation/properties/network_identifiers/properties/retrieval_reference_number
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String, nil?: true

            # @!attribute trace_number
            #   #/components/schemas/card_fuel_confirmation/properties/network_identifiers/properties/trace_number
            #
            #   @return [String, nil]
            required :trace_number, String, nil?: true

            # @!attribute transaction_id
            #   #/components/schemas/card_fuel_confirmation/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_fuel_confirmation/properties/network_identifiers
            #   #
            #   # @param retrieval_reference_number [String, nil]
            #   # @param trace_number [String, nil]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(retrieval_reference_number:, trace_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # #/components/schemas/card_fuel_confirmation/properties/type
          #
          # @see Increase::Models::CardPayment::Element::CardFuelConfirmation#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_FUEL_CONFIRMATION = :card_fuel_confirmation

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::CardPayment::Element#card_increment
        class CardIncrement < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_increment/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute actioner
          #   #/components/schemas/card_increment/properties/actioner
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Actioner]
          required :actioner, enum: -> { Increase::Models::CardPayment::Element::CardIncrement::Actioner }

          # @!attribute amount
          #   #/components/schemas/card_increment/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_authorization_id
          #   #/components/schemas/card_increment/properties/card_authorization_id
          #
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute currency
          #   #/components/schemas/card_increment/properties/currency
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardIncrement::Currency }

          # @!attribute network
          #   #/components/schemas/card_increment/properties/network
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Network]
          required :network, enum: -> { Increase::Models::CardPayment::Element::CardIncrement::Network }

          # @!attribute network_identifiers
          #   #/components/schemas/card_increment/properties/network_identifiers
          #
          #   @return [Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers }

          # @!attribute network_risk_score
          #   #/components/schemas/card_increment/properties/network_risk_score
          #
          #   @return [Integer, nil]
          required :network_risk_score, Integer, nil?: true

          # @!attribute pending_transaction_id
          #   #/components/schemas/card_increment/properties/pending_transaction_id
          #
          #   @return [String, nil]
          required :pending_transaction_id, String, nil?: true

          # @!attribute real_time_decision_id
          #   #/components/schemas/card_increment/properties/real_time_decision_id
          #
          #   @return [String, nil]
          required :real_time_decision_id, String, nil?: true

          # @!attribute type
          #   #/components/schemas/card_increment/properties/type
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardIncrement::Type }

          # @!attribute updated_authorization_amount
          #   #/components/schemas/card_increment/properties/updated_authorization_amount
          #
          #   @return [Integer]
          required :updated_authorization_amount, Integer

          # @!parse
          #   # #/components/schemas/card_payment/properties/elements/items/properties/card_increment
          #   #
          #   # @param id [String]
          #   # @param actioner [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Actioner]
          #   # @param amount [Integer]
          #   # @param card_authorization_id [String]
          #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Currency]
          #   # @param network [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Network]
          #   # @param network_identifiers [Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers]
          #   # @param network_risk_score [Integer, nil]
          #   # @param pending_transaction_id [String, nil]
          #   # @param real_time_decision_id [String, nil]
          #   # @param type [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Type]
          #   # @param updated_authorization_amount [Integer]
          #   #
          #   def initialize(
          #     id:,
          #     actioner:,
          #     amount:,
          #     card_authorization_id:,
          #     currency:,
          #     network:,
          #     network_identifiers:,
          #     network_risk_score:,
          #     pending_transaction_id:,
          #     real_time_decision_id:,
          #     type:,
          #     updated_authorization_amount:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/card_increment/properties/actioner
          #
          # @see Increase::Models::CardPayment::Element::CardIncrement#actioner
          module Actioner
            extend Increase::Internal::Type::Enum

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_increment/properties/currency
          #
          # @see Increase::Models::CardPayment::Element::CardIncrement#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_increment/properties/network
          #
          # @see Increase::Models::CardPayment::Element::CardIncrement#network
          module Network
            extend Increase::Internal::Type::Enum

            # Visa
            VISA = :visa

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::CardPayment::Element::CardIncrement#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute retrieval_reference_number
            #   #/components/schemas/card_increment/properties/network_identifiers/properties/retrieval_reference_number
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String, nil?: true

            # @!attribute trace_number
            #   #/components/schemas/card_increment/properties/network_identifiers/properties/trace_number
            #
            #   @return [String, nil]
            required :trace_number, String, nil?: true

            # @!attribute transaction_id
            #   #/components/schemas/card_increment/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_increment/properties/network_identifiers
            #   #
            #   # @param retrieval_reference_number [String, nil]
            #   # @param trace_number [String, nil]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(retrieval_reference_number:, trace_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # #/components/schemas/card_increment/properties/type
          #
          # @see Increase::Models::CardPayment::Element::CardIncrement#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_INCREMENT = :card_increment

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::CardPayment::Element#card_refund
        class CardRefund < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_refund/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   #/components/schemas/card_refund/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_payment_id
          #   #/components/schemas/card_refund/properties/card_payment_id
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute cashback
          #   #/components/schemas/card_refund/properties/cashback
          #
          #   @return [Increase::Models::CardPayment::Element::CardRefund::Cashback, nil]
          required :cashback, -> { Increase::Models::CardPayment::Element::CardRefund::Cashback }, nil?: true

          # @!attribute currency
          #   #/components/schemas/card_refund/properties/currency
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardRefund::Currency }

          # @!attribute interchange
          #   #/components/schemas/card_refund/properties/interchange
          #
          #   @return [Increase::Models::CardPayment::Element::CardRefund::Interchange, nil]
          required :interchange, -> { Increase::Models::CardPayment::Element::CardRefund::Interchange }, nil?: true

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/card_refund/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/card_refund/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   #/components/schemas/card_refund/properties/merchant_city
          #
          #   @return [String]
          required :merchant_city, String

          # @!attribute merchant_country
          #   #/components/schemas/card_refund/properties/merchant_country
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_name
          #   #/components/schemas/card_refund/properties/merchant_name
          #
          #   @return [String]
          required :merchant_name, String

          # @!attribute merchant_postal_code
          #   #/components/schemas/card_refund/properties/merchant_postal_code
          #
          #   @return [String, nil]
          required :merchant_postal_code, String, nil?: true

          # @!attribute merchant_state
          #   #/components/schemas/card_refund/properties/merchant_state
          #
          #   @return [String, nil]
          required :merchant_state, String, nil?: true

          # @!attribute network_identifiers
          #   #/components/schemas/card_refund/properties/network_identifiers
          #
          #   @return [Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers }

          # @!attribute presentment_amount
          #   #/components/schemas/card_refund/properties/presentment_amount
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   #/components/schemas/card_refund/properties/presentment_currency
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute purchase_details
          #   #/components/schemas/card_refund/properties/purchase_details
          #
          #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails, nil]
          required :purchase_details,
                   -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails },
                   nil?: true

          # @!attribute transaction_id
          #   #/components/schemas/card_refund/properties/transaction_id
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute type
          #   #/components/schemas/card_refund/properties/type
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardRefund::Type }

          # @!parse
          #   # #/components/schemas/card_payment/properties/elements/items/properties/card_refund
          #   #
          #   # @param id [String]
          #   # @param amount [Integer]
          #   # @param card_payment_id [String]
          #   # @param cashback [Increase::Models::CardPayment::Element::CardRefund::Cashback, nil]
          #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardRefund::Currency]
          #   # @param interchange [Increase::Models::CardPayment::Element::CardRefund::Interchange, nil]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_city [String]
          #   # @param merchant_country [String]
          #   # @param merchant_name [String]
          #   # @param merchant_postal_code [String, nil]
          #   # @param merchant_state [String, nil]
          #   # @param network_identifiers [Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers]
          #   # @param presentment_amount [Integer]
          #   # @param presentment_currency [String]
          #   # @param purchase_details [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails, nil]
          #   # @param transaction_id [String]
          #   # @param type [Symbol, Increase::Models::CardPayment::Element::CardRefund::Type]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     card_payment_id:,
          #     cashback:,
          #     currency:,
          #     interchange:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_city:,
          #     merchant_country:,
          #     merchant_name:,
          #     merchant_postal_code:,
          #     merchant_state:,
          #     network_identifiers:,
          #     presentment_amount:,
          #     presentment_currency:,
          #     purchase_details:,
          #     transaction_id:,
          #     type:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::CardPayment::Element::CardRefund#cashback
          class Cashback < Increase::Internal::Type::BaseModel
            # @!attribute amount
            #   #/components/schemas/card_refund/properties/cashback/anyOf/0/properties/amount
            #
            #   @return [String]
            required :amount, String

            # @!attribute currency
            #   #/components/schemas/card_refund/properties/cashback/anyOf/0/properties/currency
            #
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency]
            required :currency, enum: -> { Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency }

            # @!parse
            #   # #/components/schemas/card_refund/properties/cashback
            #   #
            #   # @param amount [String]
            #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardRefund::Cashback::Currency]
            #   #
            #   def initialize(amount:, currency:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_refund/properties/cashback/anyOf/0/properties/currency
            #
            # @see Increase::Models::CardPayment::Element::CardRefund::Cashback#currency
            module Currency
              extend Increase::Internal::Type::Enum

              # Canadian Dollar (CAD)
              CAD = :CAD

              # Swiss Franc (CHF)
              CHF = :CHF

              # Euro (EUR)
              EUR = :EUR

              # British Pound (GBP)
              GBP = :GBP

              # Japanese Yen (JPY)
              JPY = :JPY

              # US Dollar (USD)
              USD = :USD

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end
          end

          # #/components/schemas/card_refund/properties/currency
          #
          # @see Increase::Models::CardPayment::Element::CardRefund#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::CardPayment::Element::CardRefund#interchange
          class Interchange < Increase::Internal::Type::BaseModel
            # @!attribute amount
            #   #/components/schemas/card_refund/properties/interchange/anyOf/0/properties/amount
            #
            #   @return [String]
            required :amount, String

            # @!attribute code
            #   #/components/schemas/card_refund/properties/interchange/anyOf/0/properties/code
            #
            #   @return [String, nil]
            required :code, String, nil?: true

            # @!attribute currency
            #   #/components/schemas/card_refund/properties/interchange/anyOf/0/properties/currency
            #
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency]
            required :currency, enum: -> { Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency }

            # @!parse
            #   # #/components/schemas/card_refund/properties/interchange
            #   #
            #   # @param amount [String]
            #   # @param code [String, nil]
            #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency]
            #   #
            #   def initialize(amount:, code:, currency:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_refund/properties/interchange/anyOf/0/properties/currency
            #
            # @see Increase::Models::CardPayment::Element::CardRefund::Interchange#currency
            module Currency
              extend Increase::Internal::Type::Enum

              # Canadian Dollar (CAD)
              CAD = :CAD

              # Swiss Franc (CHF)
              CHF = :CHF

              # Euro (EUR)
              EUR = :EUR

              # British Pound (GBP)
              GBP = :GBP

              # Japanese Yen (JPY)
              JPY = :JPY

              # US Dollar (USD)
              USD = :USD

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end
          end

          # @see Increase::Models::CardPayment::Element::CardRefund#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute acquirer_business_id
            #   #/components/schemas/card_refund/properties/network_identifiers/properties/acquirer_business_id
            #
            #   @return [String]
            required :acquirer_business_id, String

            # @!attribute acquirer_reference_number
            #   #/components/schemas/card_refund/properties/network_identifiers/properties/acquirer_reference_number
            #
            #   @return [String]
            required :acquirer_reference_number, String

            # @!attribute transaction_id
            #   #/components/schemas/card_refund/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_refund/properties/network_identifiers
            #   #
            #   # @param acquirer_business_id [String]
            #   # @param acquirer_reference_number [String]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(acquirer_business_id:, acquirer_reference_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # @see Increase::Models::CardPayment::Element::CardRefund#purchase_details
          class PurchaseDetails < Increase::Internal::Type::BaseModel
            # @!attribute car_rental
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental
            #
            #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental, nil]
            required :car_rental,
                     -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental },
                     nil?: true

            # @!attribute customer_reference_identifier
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/customer_reference_identifier
            #
            #   @return [String, nil]
            required :customer_reference_identifier, String, nil?: true

            # @!attribute local_tax_amount
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/local_tax_amount
            #
            #   @return [Integer, nil]
            required :local_tax_amount, Integer, nil?: true

            # @!attribute local_tax_currency
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/local_tax_currency
            #
            #   @return [String, nil]
            required :local_tax_currency, String, nil?: true

            # @!attribute lodging
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging
            #
            #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging, nil]
            required :lodging,
                     -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging },
                     nil?: true

            # @!attribute national_tax_amount
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/national_tax_amount
            #
            #   @return [Integer, nil]
            required :national_tax_amount, Integer, nil?: true

            # @!attribute national_tax_currency
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/national_tax_currency
            #
            #   @return [String, nil]
            required :national_tax_currency, String, nil?: true

            # @!attribute purchase_identifier
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/purchase_identifier
            #
            #   @return [String, nil]
            required :purchase_identifier, String, nil?: true

            # @!attribute purchase_identifier_format
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/purchase_identifier_format
            #
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat, nil]
            required :purchase_identifier_format,
                     enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat },
                     nil?: true

            # @!attribute travel
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel
            #
            #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel, nil]
            required :travel,
                     -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel },
                     nil?: true

            # @!parse
            #   # #/components/schemas/card_refund/properties/purchase_details
            #   #
            #   # @param car_rental [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental, nil]
            #   # @param customer_reference_identifier [String, nil]
            #   # @param local_tax_amount [Integer, nil]
            #   # @param local_tax_currency [String, nil]
            #   # @param lodging [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging, nil]
            #   # @param national_tax_amount [Integer, nil]
            #   # @param national_tax_currency [String, nil]
            #   # @param purchase_identifier [String, nil]
            #   # @param purchase_identifier_format [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat, nil]
            #   # @param travel [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel, nil]
            #   #
            #   def initialize(
            #     car_rental:,
            #     customer_reference_identifier:,
            #     local_tax_amount:,
            #     local_tax_currency:,
            #     lodging:,
            #     national_tax_amount:,
            #     national_tax_currency:,
            #     purchase_identifier:,
            #     purchase_identifier_format:,
            #     travel:,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails#car_rental
            class CarRental < Increase::Internal::Type::BaseModel
              # @!attribute car_class_code
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/car_class_code
              #
              #   @return [String, nil]
              required :car_class_code, String, nil?: true

              # @!attribute checkout_date
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/checkout_date
              #
              #   @return [Date, nil]
              required :checkout_date, Date, nil?: true

              # @!attribute daily_rental_rate_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/daily_rental_rate_amount
              #
              #   @return [Integer, nil]
              required :daily_rental_rate_amount, Integer, nil?: true

              # @!attribute daily_rental_rate_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/daily_rental_rate_currency
              #
              #   @return [String, nil]
              required :daily_rental_rate_currency, String, nil?: true

              # @!attribute days_rented
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/days_rented
              #
              #   @return [Integer, nil]
              required :days_rented, Integer, nil?: true

              # @!attribute extra_charges
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/extra_charges
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges },
                       nil?: true

              # @!attribute fuel_charges_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/fuel_charges_amount
              #
              #   @return [Integer, nil]
              required :fuel_charges_amount, Integer, nil?: true

              # @!attribute fuel_charges_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/fuel_charges_currency
              #
              #   @return [String, nil]
              required :fuel_charges_currency, String, nil?: true

              # @!attribute insurance_charges_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/insurance_charges_amount
              #
              #   @return [Integer, nil]
              required :insurance_charges_amount, Integer, nil?: true

              # @!attribute insurance_charges_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/insurance_charges_currency
              #
              #   @return [String, nil]
              required :insurance_charges_currency, String, nil?: true

              # @!attribute no_show_indicator
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/no_show_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator },
                       nil?: true

              # @!attribute one_way_drop_off_charges_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/one_way_drop_off_charges_amount
              #
              #   @return [Integer, nil]
              required :one_way_drop_off_charges_amount, Integer, nil?: true

              # @!attribute one_way_drop_off_charges_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/one_way_drop_off_charges_currency
              #
              #   @return [String, nil]
              required :one_way_drop_off_charges_currency, String, nil?: true

              # @!attribute renter_name
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/renter_name
              #
              #   @return [String, nil]
              required :renter_name, String, nil?: true

              # @!attribute weekly_rental_rate_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/weekly_rental_rate_amount
              #
              #   @return [Integer, nil]
              required :weekly_rental_rate_amount, Integer, nil?: true

              # @!attribute weekly_rental_rate_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/weekly_rental_rate_currency
              #
              #   @return [String, nil]
              required :weekly_rental_rate_currency, String, nil?: true

              # @!parse
              #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental
              #   #
              #   # @param car_class_code [String, nil]
              #   # @param checkout_date [Date, nil]
              #   # @param daily_rental_rate_amount [Integer, nil]
              #   # @param daily_rental_rate_currency [String, nil]
              #   # @param days_rented [Integer, nil]
              #   # @param extra_charges [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges, nil]
              #   # @param fuel_charges_amount [Integer, nil]
              #   # @param fuel_charges_currency [String, nil]
              #   # @param insurance_charges_amount [Integer, nil]
              #   # @param insurance_charges_currency [String, nil]
              #   # @param no_show_indicator [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator, nil]
              #   # @param one_way_drop_off_charges_amount [Integer, nil]
              #   # @param one_way_drop_off_charges_currency [String, nil]
              #   # @param renter_name [String, nil]
              #   # @param weekly_rental_rate_amount [Integer, nil]
              #   # @param weekly_rental_rate_currency [String, nil]
              #   #
              #   def initialize(
              #     car_class_code:,
              #     checkout_date:,
              #     daily_rental_rate_amount:,
              #     daily_rental_rate_currency:,
              #     days_rented:,
              #     extra_charges:,
              #     fuel_charges_amount:,
              #     fuel_charges_currency:,
              #     insurance_charges_amount:,
              #     insurance_charges_currency:,
              #     no_show_indicator:,
              #     one_way_drop_off_charges_amount:,
              #     one_way_drop_off_charges_currency:,
              #     renter_name:,
              #     weekly_rental_rate_amount:,
              #     weekly_rental_rate_currency:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/extra_charges
              #
              # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental#extra_charges
              module ExtraCharges
                extend Increase::Internal::Type::Enum

                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Gas
                GAS = :gas

                # Extra mileage
                EXTRA_MILEAGE = :extra_mileage

                # Late return
                LATE_RETURN = :late_return

                # One way service fee
                ONE_WAY_SERVICE_FEE = :one_way_service_fee

                # Parking violation
                PARKING_VIOLATION = :parking_violation

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/no_show_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental#no_show_indicator
              module NoShowIndicator
                extend Increase::Internal::Type::Enum

                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = :no_show_for_specialized_vehicle

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails#lodging
            class Lodging < Increase::Internal::Type::BaseModel
              # @!attribute check_in_date
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/check_in_date
              #
              #   @return [Date, nil]
              required :check_in_date, Date, nil?: true

              # @!attribute daily_room_rate_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/daily_room_rate_amount
              #
              #   @return [Integer, nil]
              required :daily_room_rate_amount, Integer, nil?: true

              # @!attribute daily_room_rate_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/daily_room_rate_currency
              #
              #   @return [String, nil]
              required :daily_room_rate_currency, String, nil?: true

              # @!attribute extra_charges
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/extra_charges
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges },
                       nil?: true

              # @!attribute folio_cash_advances_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/folio_cash_advances_amount
              #
              #   @return [Integer, nil]
              required :folio_cash_advances_amount, Integer, nil?: true

              # @!attribute folio_cash_advances_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/folio_cash_advances_currency
              #
              #   @return [String, nil]
              required :folio_cash_advances_currency, String, nil?: true

              # @!attribute food_beverage_charges_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/food_beverage_charges_amount
              #
              #   @return [Integer, nil]
              required :food_beverage_charges_amount, Integer, nil?: true

              # @!attribute food_beverage_charges_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/food_beverage_charges_currency
              #
              #   @return [String, nil]
              required :food_beverage_charges_currency, String, nil?: true

              # @!attribute no_show_indicator
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/no_show_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator },
                       nil?: true

              # @!attribute prepaid_expenses_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/prepaid_expenses_amount
              #
              #   @return [Integer, nil]
              required :prepaid_expenses_amount, Integer, nil?: true

              # @!attribute prepaid_expenses_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/prepaid_expenses_currency
              #
              #   @return [String, nil]
              required :prepaid_expenses_currency, String, nil?: true

              # @!attribute room_nights
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/room_nights
              #
              #   @return [Integer, nil]
              required :room_nights, Integer, nil?: true

              # @!attribute total_room_tax_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_room_tax_amount
              #
              #   @return [Integer, nil]
              required :total_room_tax_amount, Integer, nil?: true

              # @!attribute total_room_tax_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_room_tax_currency
              #
              #   @return [String, nil]
              required :total_room_tax_currency, String, nil?: true

              # @!attribute total_tax_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_tax_amount
              #
              #   @return [Integer, nil]
              required :total_tax_amount, Integer, nil?: true

              # @!attribute total_tax_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_tax_currency
              #
              #   @return [String, nil]
              required :total_tax_currency, String, nil?: true

              # @!parse
              #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging
              #   #
              #   # @param check_in_date [Date, nil]
              #   # @param daily_room_rate_amount [Integer, nil]
              #   # @param daily_room_rate_currency [String, nil]
              #   # @param extra_charges [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges, nil]
              #   # @param folio_cash_advances_amount [Integer, nil]
              #   # @param folio_cash_advances_currency [String, nil]
              #   # @param food_beverage_charges_amount [Integer, nil]
              #   # @param food_beverage_charges_currency [String, nil]
              #   # @param no_show_indicator [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator, nil]
              #   # @param prepaid_expenses_amount [Integer, nil]
              #   # @param prepaid_expenses_currency [String, nil]
              #   # @param room_nights [Integer, nil]
              #   # @param total_room_tax_amount [Integer, nil]
              #   # @param total_room_tax_currency [String, nil]
              #   # @param total_tax_amount [Integer, nil]
              #   # @param total_tax_currency [String, nil]
              #   #
              #   def initialize(
              #     check_in_date:,
              #     daily_room_rate_amount:,
              #     daily_room_rate_currency:,
              #     extra_charges:,
              #     folio_cash_advances_amount:,
              #     folio_cash_advances_currency:,
              #     food_beverage_charges_amount:,
              #     food_beverage_charges_currency:,
              #     no_show_indicator:,
              #     prepaid_expenses_amount:,
              #     prepaid_expenses_currency:,
              #     room_nights:,
              #     total_room_tax_amount:,
              #     total_room_tax_currency:,
              #     total_tax_amount:,
              #     total_tax_currency:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/extra_charges
              #
              # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging#extra_charges
              module ExtraCharges
                extend Increase::Internal::Type::Enum

                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Restaurant
                RESTAURANT = :restaurant

                # Gift shop
                GIFT_SHOP = :gift_shop

                # Mini bar
                MINI_BAR = :mini_bar

                # Telephone
                TELEPHONE = :telephone

                # Other
                OTHER = :other

                # Laundry
                LAUNDRY = :laundry

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/no_show_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging#no_show_indicator
              module NoShowIndicator
                extend Increase::Internal::Type::Enum

                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show
                NO_SHOW = :no_show

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/purchase_identifier_format
            #
            # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails#purchase_identifier_format
            module PurchaseIdentifierFormat
              extend Increase::Internal::Type::Enum

              # Free text
              FREE_TEXT = :free_text

              # Order number
              ORDER_NUMBER = :order_number

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = :rental_agreement_number

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = :hotel_folio_number

              # Invoice number
              INVOICE_NUMBER = :invoice_number

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails#travel
            class Travel < Increase::Internal::Type::BaseModel
              # @!attribute ancillary
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary
              #
              #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary, nil]
              required :ancillary,
                       -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary },
                       nil?: true

              # @!attribute computerized_reservation_system
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/computerized_reservation_system
              #
              #   @return [String, nil]
              required :computerized_reservation_system, String, nil?: true

              # @!attribute credit_reason_indicator
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/credit_reason_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator, nil]
              required :credit_reason_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator },
                       nil?: true

              # @!attribute departure_date
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/departure_date
              #
              #   @return [Date, nil]
              required :departure_date, Date, nil?: true

              # @!attribute origination_city_airport_code
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/origination_city_airport_code
              #
              #   @return [String, nil]
              required :origination_city_airport_code, String, nil?: true

              # @!attribute passenger_name
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/passenger_name
              #
              #   @return [String, nil]
              required :passenger_name, String, nil?: true

              # @!attribute restricted_ticket_indicator
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/restricted_ticket_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator, nil]
              required :restricted_ticket_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator },
                       nil?: true

              # @!attribute ticket_change_indicator
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_change_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator, nil]
              required :ticket_change_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator },
                       nil?: true

              # @!attribute ticket_number
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_number
              #
              #   @return [String, nil]
              required :ticket_number, String, nil?: true

              # @!attribute travel_agency_code
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/travel_agency_code
              #
              #   @return [String, nil]
              required :travel_agency_code, String, nil?: true

              # @!attribute travel_agency_name
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/travel_agency_name
              #
              #   @return [String, nil]
              required :travel_agency_name, String, nil?: true

              # @!attribute trip_legs
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs
              #
              #   @return [Array<Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg>, nil]
              required :trip_legs,
                       -> { Increase::Internal::Type::ArrayOf[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg] },
                       nil?: true

              # @!parse
              #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel
              #   #
              #   # @param ancillary [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary, nil]
              #   # @param computerized_reservation_system [String, nil]
              #   # @param credit_reason_indicator [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator, nil]
              #   # @param departure_date [Date, nil]
              #   # @param origination_city_airport_code [String, nil]
              #   # @param passenger_name [String, nil]
              #   # @param restricted_ticket_indicator [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator, nil]
              #   # @param ticket_change_indicator [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator, nil]
              #   # @param ticket_number [String, nil]
              #   # @param travel_agency_code [String, nil]
              #   # @param travel_agency_name [String, nil]
              #   # @param trip_legs [Array<Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg>, nil]
              #   #
              #   def initialize(
              #     ancillary:,
              #     computerized_reservation_system:,
              #     credit_reason_indicator:,
              #     departure_date:,
              #     origination_city_airport_code:,
              #     passenger_name:,
              #     restricted_ticket_indicator:,
              #     ticket_change_indicator:,
              #     ticket_number:,
              #     travel_agency_code:,
              #     travel_agency_name:,
              #     trip_legs:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel#ancillary
              class Ancillary < Increase::Internal::Type::BaseModel
                # @!attribute connected_ticket_document_number
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/connected_ticket_document_number
                #
                #   @return [String, nil]
                required :connected_ticket_document_number, String, nil?: true

                # @!attribute credit_reason_indicator
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/credit_reason_indicator
                #
                #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator, nil]
                required :credit_reason_indicator,
                         enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator },
                         nil?: true

                # @!attribute passenger_name_or_description
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/passenger_name_or_description
                #
                #   @return [String, nil]
                required :passenger_name_or_description, String, nil?: true

                # @!attribute services
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services
                #
                #   @return [Array<Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         -> { Increase::Internal::Type::ArrayOf[Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service] }

                # @!attribute ticket_document_number
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/ticket_document_number
                #
                #   @return [String, nil]
                required :ticket_document_number, String, nil?: true

                # @!parse
                #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary
                #   #
                #   # @param connected_ticket_document_number [String, nil]
                #   # @param credit_reason_indicator [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator, nil]
                #   # @param passenger_name_or_description [String, nil]
                #   # @param services [Array<Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service>]
                #   # @param ticket_document_number [String, nil]
                #   #
                #   def initialize(
                #     connected_ticket_document_number:,
                #     credit_reason_indicator:,
                #     passenger_name_or_description:,
                #     services:,
                #     ticket_document_number:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/credit_reason_indicator
                #
                # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary#credit_reason_indicator
                module CreditReasonIndicator
                  extend Increase::Internal::Type::Enum

                  # No credit
                  NO_CREDIT = :no_credit

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    :passenger_transport_ancillary_purchase_cancellation

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                  # Other
                  OTHER = :other

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end

                class Service < Increase::Internal::Type::BaseModel
                  # @!attribute category
                  #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/category
                  #
                  #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category, nil]
                  required :category,
                           enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category },
                           nil?: true

                  # @!attribute sub_category
                  #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/sub_category
                  #
                  #   @return [String, nil]
                  required :sub_category, String, nil?: true

                  # @!parse
                  #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items
                  #   #
                  #   # @param category [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category, nil]
                  #   # @param sub_category [String, nil]
                  #   #
                  #   def initialize(category:, sub_category:, **) = super

                  # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                  # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/category
                  #
                  # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service#category
                  module Category
                    extend Increase::Internal::Type::Enum

                    # None
                    NONE = :none

                    # Bundled service
                    BUNDLED_SERVICE = :bundled_service

                    # Baggage fee
                    BAGGAGE_FEE = :baggage_fee

                    # Change fee
                    CHANGE_FEE = :change_fee

                    # Cargo
                    CARGO = :cargo

                    # Carbon offset
                    CARBON_OFFSET = :carbon_offset

                    # Frequent flyer
                    FREQUENT_FLYER = :frequent_flyer

                    # Gift card
                    GIFT_CARD = :gift_card

                    # Ground transport
                    GROUND_TRANSPORT = :ground_transport

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = :in_flight_entertainment

                    # Lounge
                    LOUNGE = :lounge

                    # Medical
                    MEDICAL = :medical

                    # Meal beverage
                    MEAL_BEVERAGE = :meal_beverage

                    # Other
                    OTHER = :other

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = :passenger_assist_fee

                    # Pets
                    PETS = :pets

                    # Seat fees
                    SEAT_FEES = :seat_fees

                    # Standby
                    STANDBY = :standby

                    # Service fee
                    SERVICE_FEE = :service_fee

                    # Store
                    STORE = :store

                    # Travel service
                    TRAVEL_SERVICE = :travel_service

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = :unaccompanied_travel

                    # Upgrades
                    UPGRADES = :upgrades

                    # Wi-fi
                    WIFI = :wifi

                    finalize!

                    # @!parse
                    #   # @return [Array<Symbol>]
                    #   def self.values; end
                  end
                end
              end

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/credit_reason_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel#credit_reason_indicator
              module CreditReasonIndicator
                extend Increase::Internal::Type::Enum

                # No credit
                NO_CREDIT = :no_credit

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  :passenger_transport_ancillary_purchase_cancellation

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = :airline_ticket_cancellation

                # Other
                OTHER = :other

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = :partial_refund_of_airline_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/restricted_ticket_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel#restricted_ticket_indicator
              module RestrictedTicketIndicator
                extend Increase::Internal::Type::Enum

                # No restrictions
                NO_RESTRICTIONS = :no_restrictions

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = :restricted_non_refundable_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_change_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel#ticket_change_indicator
              module TicketChangeIndicator
                extend Increase::Internal::Type::Enum

                # None
                NONE = :none

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = :change_to_existing_ticket

                # New ticket
                NEW_TICKET = :new_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              class TripLeg < Increase::Internal::Type::BaseModel
                # @!attribute carrier_code
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/carrier_code
                #
                #   @return [String, nil]
                required :carrier_code, String, nil?: true

                # @!attribute destination_city_airport_code
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/destination_city_airport_code
                #
                #   @return [String, nil]
                required :destination_city_airport_code, String, nil?: true

                # @!attribute fare_basis_code
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/fare_basis_code
                #
                #   @return [String, nil]
                required :fare_basis_code, String, nil?: true

                # @!attribute flight_number
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/flight_number
                #
                #   @return [String, nil]
                required :flight_number, String, nil?: true

                # @!attribute service_class
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/service_class
                #
                #   @return [String, nil]
                required :service_class, String, nil?: true

                # @!attribute stop_over_code
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/stop_over_code
                #
                #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode, nil]
                required :stop_over_code,
                         enum: -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode },
                         nil?: true

                # @!parse
                #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items
                #   #
                #   # @param carrier_code [String, nil]
                #   # @param destination_city_airport_code [String, nil]
                #   # @param fare_basis_code [String, nil]
                #   # @param flight_number [String, nil]
                #   # @param service_class [String, nil]
                #   # @param stop_over_code [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode, nil]
                #   #
                #   def initialize(
                #     carrier_code:,
                #     destination_city_airport_code:,
                #     fare_basis_code:,
                #     flight_number:,
                #     service_class:,
                #     stop_over_code:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/stop_over_code
                #
                # @see Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg#stop_over_code
                module StopOverCode
                  extend Increase::Internal::Type::Enum

                  # None
                  NONE = :none

                  # Stop over allowed
                  STOP_OVER_ALLOWED = :stop_over_allowed

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = :stop_over_not_allowed

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end
              end
            end
          end

          # #/components/schemas/card_refund/properties/type
          #
          # @see Increase::Models::CardPayment::Element::CardRefund#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_REFUND = :card_refund

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::CardPayment::Element#card_reversal
        class CardReversal < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_reversal/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute card_authorization_id
          #   #/components/schemas/card_reversal/properties/card_authorization_id
          #
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute currency
          #   #/components/schemas/card_reversal/properties/currency
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardReversal::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardReversal::Currency }

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/card_reversal/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/card_reversal/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   #/components/schemas/card_reversal/properties/merchant_city
          #
          #   @return [String, nil]
          required :merchant_city, String, nil?: true

          # @!attribute merchant_country
          #   #/components/schemas/card_reversal/properties/merchant_country
          #
          #   @return [String, nil]
          required :merchant_country, String, nil?: true

          # @!attribute merchant_descriptor
          #   #/components/schemas/card_reversal/properties/merchant_descriptor
          #
          #   @return [String]
          required :merchant_descriptor, String

          # @!attribute merchant_postal_code
          #   #/components/schemas/card_reversal/properties/merchant_postal_code
          #
          #   @return [String, nil]
          required :merchant_postal_code, String, nil?: true

          # @!attribute merchant_state
          #   #/components/schemas/card_reversal/properties/merchant_state
          #
          #   @return [String, nil]
          required :merchant_state, String, nil?: true

          # @!attribute network
          #   #/components/schemas/card_reversal/properties/network
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardReversal::Network]
          required :network, enum: -> { Increase::Models::CardPayment::Element::CardReversal::Network }

          # @!attribute network_identifiers
          #   #/components/schemas/card_reversal/properties/network_identifiers
          #
          #   @return [Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers }

          # @!attribute pending_transaction_id
          #   #/components/schemas/card_reversal/properties/pending_transaction_id
          #
          #   @return [String, nil]
          required :pending_transaction_id, String, nil?: true

          # @!attribute reversal_amount
          #   #/components/schemas/card_reversal/properties/reversal_amount
          #
          #   @return [Integer]
          required :reversal_amount, Integer

          # @!attribute reversal_reason
          #   #/components/schemas/card_reversal/properties/reversal_reason
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardReversal::ReversalReason, nil]
          required :reversal_reason,
                   enum: -> { Increase::Models::CardPayment::Element::CardReversal::ReversalReason },
                   nil?: true

          # @!attribute terminal_id
          #   #/components/schemas/card_reversal/properties/terminal_id
          #
          #   @return [String, nil]
          required :terminal_id, String, nil?: true

          # @!attribute type
          #   #/components/schemas/card_reversal/properties/type
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardReversal::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardReversal::Type }

          # @!attribute updated_authorization_amount
          #   #/components/schemas/card_reversal/properties/updated_authorization_amount
          #
          #   @return [Integer]
          required :updated_authorization_amount, Integer

          # @!parse
          #   # #/components/schemas/card_payment/properties/elements/items/properties/card_reversal
          #   #
          #   # @param id [String]
          #   # @param card_authorization_id [String]
          #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardReversal::Currency]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_city [String, nil]
          #   # @param merchant_country [String, nil]
          #   # @param merchant_descriptor [String]
          #   # @param merchant_postal_code [String, nil]
          #   # @param merchant_state [String, nil]
          #   # @param network [Symbol, Increase::Models::CardPayment::Element::CardReversal::Network]
          #   # @param network_identifiers [Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers]
          #   # @param pending_transaction_id [String, nil]
          #   # @param reversal_amount [Integer]
          #   # @param reversal_reason [Symbol, Increase::Models::CardPayment::Element::CardReversal::ReversalReason, nil]
          #   # @param terminal_id [String, nil]
          #   # @param type [Symbol, Increase::Models::CardPayment::Element::CardReversal::Type]
          #   # @param updated_authorization_amount [Integer]
          #   #
          #   def initialize(
          #     id:,
          #     card_authorization_id:,
          #     currency:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_city:,
          #     merchant_country:,
          #     merchant_descriptor:,
          #     merchant_postal_code:,
          #     merchant_state:,
          #     network:,
          #     network_identifiers:,
          #     pending_transaction_id:,
          #     reversal_amount:,
          #     reversal_reason:,
          #     terminal_id:,
          #     type:,
          #     updated_authorization_amount:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/card_reversal/properties/currency
          #
          # @see Increase::Models::CardPayment::Element::CardReversal#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_reversal/properties/network
          #
          # @see Increase::Models::CardPayment::Element::CardReversal#network
          module Network
            extend Increase::Internal::Type::Enum

            # Visa
            VISA = :visa

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::CardPayment::Element::CardReversal#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute retrieval_reference_number
            #   #/components/schemas/card_reversal/properties/network_identifiers/properties/retrieval_reference_number
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String, nil?: true

            # @!attribute trace_number
            #   #/components/schemas/card_reversal/properties/network_identifiers/properties/trace_number
            #
            #   @return [String, nil]
            required :trace_number, String, nil?: true

            # @!attribute transaction_id
            #   #/components/schemas/card_reversal/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_reversal/properties/network_identifiers
            #   #
            #   # @param retrieval_reference_number [String, nil]
            #   # @param trace_number [String, nil]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(retrieval_reference_number:, trace_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # #/components/schemas/card_reversal/properties/reversal_reason
          #
          # @see Increase::Models::CardPayment::Element::CardReversal#reversal_reason
          module ReversalReason
            extend Increase::Internal::Type::Enum

            # The Card Reversal was initiated at the customer's request.
            REVERSED_BY_CUSTOMER = :reversed_by_customer

            # The Card Reversal was initiated by the network or acquirer.
            REVERSED_BY_NETWORK_OR_ACQUIRER = :reversed_by_network_or_acquirer

            # The Card Reversal was initiated by the point of sale device.
            REVERSED_BY_POINT_OF_SALE = :reversed_by_point_of_sale

            # The Card Reversal was a partial reversal, for any reason.
            PARTIAL_REVERSAL = :partial_reversal

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_reversal/properties/type
          #
          # @see Increase::Models::CardPayment::Element::CardReversal#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_REVERSAL = :card_reversal

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::CardPayment::Element#card_settlement
        class CardSettlement < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_settlement/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   #/components/schemas/card_settlement/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_authorization
          #   #/components/schemas/card_settlement/properties/card_authorization
          #
          #   @return [String, nil]
          required :card_authorization, String, nil?: true

          # @!attribute card_payment_id
          #   #/components/schemas/card_settlement/properties/card_payment_id
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute cashback
          #   #/components/schemas/card_settlement/properties/cashback
          #
          #   @return [Increase::Models::CardPayment::Element::CardSettlement::Cashback, nil]
          required :cashback, -> { Increase::Models::CardPayment::Element::CardSettlement::Cashback }, nil?: true

          # @!attribute currency
          #   #/components/schemas/card_settlement/properties/currency
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardSettlement::Currency }

          # @!attribute interchange
          #   #/components/schemas/card_settlement/properties/interchange
          #
          #   @return [Increase::Models::CardPayment::Element::CardSettlement::Interchange, nil]
          required :interchange,
                   -> { Increase::Models::CardPayment::Element::CardSettlement::Interchange },
                   nil?: true

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/card_settlement/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/card_settlement/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   #/components/schemas/card_settlement/properties/merchant_city
          #
          #   @return [String]
          required :merchant_city, String

          # @!attribute merchant_country
          #   #/components/schemas/card_settlement/properties/merchant_country
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_name
          #   #/components/schemas/card_settlement/properties/merchant_name
          #
          #   @return [String]
          required :merchant_name, String

          # @!attribute merchant_postal_code
          #   #/components/schemas/card_settlement/properties/merchant_postal_code
          #
          #   @return [String, nil]
          required :merchant_postal_code, String, nil?: true

          # @!attribute merchant_state
          #   #/components/schemas/card_settlement/properties/merchant_state
          #
          #   @return [String, nil]
          required :merchant_state, String, nil?: true

          # @!attribute network_identifiers
          #   #/components/schemas/card_settlement/properties/network_identifiers
          #
          #   @return [Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers }

          # @!attribute pending_transaction_id
          #   #/components/schemas/card_settlement/properties/pending_transaction_id
          #
          #   @return [String, nil]
          required :pending_transaction_id, String, nil?: true

          # @!attribute presentment_amount
          #   #/components/schemas/card_settlement/properties/presentment_amount
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   #/components/schemas/card_settlement/properties/presentment_currency
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute purchase_details
          #   #/components/schemas/card_settlement/properties/purchase_details
          #
          #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails, nil]
          required :purchase_details,
                   -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails },
                   nil?: true

          # @!attribute transaction_id
          #   #/components/schemas/card_settlement/properties/transaction_id
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute type
          #   #/components/schemas/card_settlement/properties/type
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardSettlement::Type }

          # @!parse
          #   # #/components/schemas/card_payment/properties/elements/items/properties/card_settlement
          #   #
          #   # @param id [String]
          #   # @param amount [Integer]
          #   # @param card_authorization [String, nil]
          #   # @param card_payment_id [String]
          #   # @param cashback [Increase::Models::CardPayment::Element::CardSettlement::Cashback, nil]
          #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Currency]
          #   # @param interchange [Increase::Models::CardPayment::Element::CardSettlement::Interchange, nil]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_city [String]
          #   # @param merchant_country [String]
          #   # @param merchant_name [String]
          #   # @param merchant_postal_code [String, nil]
          #   # @param merchant_state [String, nil]
          #   # @param network_identifiers [Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers]
          #   # @param pending_transaction_id [String, nil]
          #   # @param presentment_amount [Integer]
          #   # @param presentment_currency [String]
          #   # @param purchase_details [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails, nil]
          #   # @param transaction_id [String]
          #   # @param type [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Type]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     card_authorization:,
          #     card_payment_id:,
          #     cashback:,
          #     currency:,
          #     interchange:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_city:,
          #     merchant_country:,
          #     merchant_name:,
          #     merchant_postal_code:,
          #     merchant_state:,
          #     network_identifiers:,
          #     pending_transaction_id:,
          #     presentment_amount:,
          #     presentment_currency:,
          #     purchase_details:,
          #     transaction_id:,
          #     type:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::CardPayment::Element::CardSettlement#cashback
          class Cashback < Increase::Internal::Type::BaseModel
            # @!attribute amount
            #   #/components/schemas/card_settlement/properties/cashback/anyOf/0/properties/amount
            #
            #   @return [String]
            required :amount, String

            # @!attribute currency
            #   #/components/schemas/card_settlement/properties/cashback/anyOf/0/properties/currency
            #
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency]
            required :currency,
                     enum: -> { Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency }

            # @!parse
            #   # #/components/schemas/card_settlement/properties/cashback
            #   #
            #   # @param amount [String]
            #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Cashback::Currency]
            #   #
            #   def initialize(amount:, currency:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_settlement/properties/cashback/anyOf/0/properties/currency
            #
            # @see Increase::Models::CardPayment::Element::CardSettlement::Cashback#currency
            module Currency
              extend Increase::Internal::Type::Enum

              # Canadian Dollar (CAD)
              CAD = :CAD

              # Swiss Franc (CHF)
              CHF = :CHF

              # Euro (EUR)
              EUR = :EUR

              # British Pound (GBP)
              GBP = :GBP

              # Japanese Yen (JPY)
              JPY = :JPY

              # US Dollar (USD)
              USD = :USD

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end
          end

          # #/components/schemas/card_settlement/properties/currency
          #
          # @see Increase::Models::CardPayment::Element::CardSettlement#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::CardPayment::Element::CardSettlement#interchange
          class Interchange < Increase::Internal::Type::BaseModel
            # @!attribute amount
            #   #/components/schemas/card_settlement/properties/interchange/anyOf/0/properties/amount
            #
            #   @return [String]
            required :amount, String

            # @!attribute code
            #   #/components/schemas/card_settlement/properties/interchange/anyOf/0/properties/code
            #
            #   @return [String, nil]
            required :code, String, nil?: true

            # @!attribute currency
            #   #/components/schemas/card_settlement/properties/interchange/anyOf/0/properties/currency
            #
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency]
            required :currency,
                     enum: -> { Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency }

            # @!parse
            #   # #/components/schemas/card_settlement/properties/interchange
            #   #
            #   # @param amount [String]
            #   # @param code [String, nil]
            #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency]
            #   #
            #   def initialize(amount:, code:, currency:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_settlement/properties/interchange/anyOf/0/properties/currency
            #
            # @see Increase::Models::CardPayment::Element::CardSettlement::Interchange#currency
            module Currency
              extend Increase::Internal::Type::Enum

              # Canadian Dollar (CAD)
              CAD = :CAD

              # Swiss Franc (CHF)
              CHF = :CHF

              # Euro (EUR)
              EUR = :EUR

              # British Pound (GBP)
              GBP = :GBP

              # Japanese Yen (JPY)
              JPY = :JPY

              # US Dollar (USD)
              USD = :USD

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end
          end

          # @see Increase::Models::CardPayment::Element::CardSettlement#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute acquirer_business_id
            #   #/components/schemas/card_settlement/properties/network_identifiers/properties/acquirer_business_id
            #
            #   @return [String]
            required :acquirer_business_id, String

            # @!attribute acquirer_reference_number
            #   #/components/schemas/card_settlement/properties/network_identifiers/properties/acquirer_reference_number
            #
            #   @return [String]
            required :acquirer_reference_number, String

            # @!attribute transaction_id
            #   #/components/schemas/card_settlement/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_settlement/properties/network_identifiers
            #   #
            #   # @param acquirer_business_id [String]
            #   # @param acquirer_reference_number [String]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(acquirer_business_id:, acquirer_reference_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # @see Increase::Models::CardPayment::Element::CardSettlement#purchase_details
          class PurchaseDetails < Increase::Internal::Type::BaseModel
            # @!attribute car_rental
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental
            #
            #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental, nil]
            required :car_rental,
                     -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental },
                     nil?: true

            # @!attribute customer_reference_identifier
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/customer_reference_identifier
            #
            #   @return [String, nil]
            required :customer_reference_identifier, String, nil?: true

            # @!attribute local_tax_amount
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/local_tax_amount
            #
            #   @return [Integer, nil]
            required :local_tax_amount, Integer, nil?: true

            # @!attribute local_tax_currency
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/local_tax_currency
            #
            #   @return [String, nil]
            required :local_tax_currency, String, nil?: true

            # @!attribute lodging
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging
            #
            #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging, nil]
            required :lodging,
                     -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging },
                     nil?: true

            # @!attribute national_tax_amount
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/national_tax_amount
            #
            #   @return [Integer, nil]
            required :national_tax_amount, Integer, nil?: true

            # @!attribute national_tax_currency
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/national_tax_currency
            #
            #   @return [String, nil]
            required :national_tax_currency, String, nil?: true

            # @!attribute purchase_identifier
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/purchase_identifier
            #
            #   @return [String, nil]
            required :purchase_identifier, String, nil?: true

            # @!attribute purchase_identifier_format
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/purchase_identifier_format
            #
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat, nil]
            required :purchase_identifier_format,
                     enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat },
                     nil?: true

            # @!attribute travel
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel
            #
            #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel, nil]
            required :travel,
                     -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel },
                     nil?: true

            # @!parse
            #   # #/components/schemas/card_settlement/properties/purchase_details
            #   #
            #   # @param car_rental [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental, nil]
            #   # @param customer_reference_identifier [String, nil]
            #   # @param local_tax_amount [Integer, nil]
            #   # @param local_tax_currency [String, nil]
            #   # @param lodging [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging, nil]
            #   # @param national_tax_amount [Integer, nil]
            #   # @param national_tax_currency [String, nil]
            #   # @param purchase_identifier [String, nil]
            #   # @param purchase_identifier_format [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat, nil]
            #   # @param travel [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel, nil]
            #   #
            #   def initialize(
            #     car_rental:,
            #     customer_reference_identifier:,
            #     local_tax_amount:,
            #     local_tax_currency:,
            #     lodging:,
            #     national_tax_amount:,
            #     national_tax_currency:,
            #     purchase_identifier:,
            #     purchase_identifier_format:,
            #     travel:,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails#car_rental
            class CarRental < Increase::Internal::Type::BaseModel
              # @!attribute car_class_code
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/car_class_code
              #
              #   @return [String, nil]
              required :car_class_code, String, nil?: true

              # @!attribute checkout_date
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/checkout_date
              #
              #   @return [Date, nil]
              required :checkout_date, Date, nil?: true

              # @!attribute daily_rental_rate_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/daily_rental_rate_amount
              #
              #   @return [Integer, nil]
              required :daily_rental_rate_amount, Integer, nil?: true

              # @!attribute daily_rental_rate_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/daily_rental_rate_currency
              #
              #   @return [String, nil]
              required :daily_rental_rate_currency, String, nil?: true

              # @!attribute days_rented
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/days_rented
              #
              #   @return [Integer, nil]
              required :days_rented, Integer, nil?: true

              # @!attribute extra_charges
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/extra_charges
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges },
                       nil?: true

              # @!attribute fuel_charges_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/fuel_charges_amount
              #
              #   @return [Integer, nil]
              required :fuel_charges_amount, Integer, nil?: true

              # @!attribute fuel_charges_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/fuel_charges_currency
              #
              #   @return [String, nil]
              required :fuel_charges_currency, String, nil?: true

              # @!attribute insurance_charges_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/insurance_charges_amount
              #
              #   @return [Integer, nil]
              required :insurance_charges_amount, Integer, nil?: true

              # @!attribute insurance_charges_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/insurance_charges_currency
              #
              #   @return [String, nil]
              required :insurance_charges_currency, String, nil?: true

              # @!attribute no_show_indicator
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/no_show_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator },
                       nil?: true

              # @!attribute one_way_drop_off_charges_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/one_way_drop_off_charges_amount
              #
              #   @return [Integer, nil]
              required :one_way_drop_off_charges_amount, Integer, nil?: true

              # @!attribute one_way_drop_off_charges_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/one_way_drop_off_charges_currency
              #
              #   @return [String, nil]
              required :one_way_drop_off_charges_currency, String, nil?: true

              # @!attribute renter_name
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/renter_name
              #
              #   @return [String, nil]
              required :renter_name, String, nil?: true

              # @!attribute weekly_rental_rate_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/weekly_rental_rate_amount
              #
              #   @return [Integer, nil]
              required :weekly_rental_rate_amount, Integer, nil?: true

              # @!attribute weekly_rental_rate_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/weekly_rental_rate_currency
              #
              #   @return [String, nil]
              required :weekly_rental_rate_currency, String, nil?: true

              # @!parse
              #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental
              #   #
              #   # @param car_class_code [String, nil]
              #   # @param checkout_date [Date, nil]
              #   # @param daily_rental_rate_amount [Integer, nil]
              #   # @param daily_rental_rate_currency [String, nil]
              #   # @param days_rented [Integer, nil]
              #   # @param extra_charges [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges, nil]
              #   # @param fuel_charges_amount [Integer, nil]
              #   # @param fuel_charges_currency [String, nil]
              #   # @param insurance_charges_amount [Integer, nil]
              #   # @param insurance_charges_currency [String, nil]
              #   # @param no_show_indicator [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator, nil]
              #   # @param one_way_drop_off_charges_amount [Integer, nil]
              #   # @param one_way_drop_off_charges_currency [String, nil]
              #   # @param renter_name [String, nil]
              #   # @param weekly_rental_rate_amount [Integer, nil]
              #   # @param weekly_rental_rate_currency [String, nil]
              #   #
              #   def initialize(
              #     car_class_code:,
              #     checkout_date:,
              #     daily_rental_rate_amount:,
              #     daily_rental_rate_currency:,
              #     days_rented:,
              #     extra_charges:,
              #     fuel_charges_amount:,
              #     fuel_charges_currency:,
              #     insurance_charges_amount:,
              #     insurance_charges_currency:,
              #     no_show_indicator:,
              #     one_way_drop_off_charges_amount:,
              #     one_way_drop_off_charges_currency:,
              #     renter_name:,
              #     weekly_rental_rate_amount:,
              #     weekly_rental_rate_currency:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/extra_charges
              #
              # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental#extra_charges
              module ExtraCharges
                extend Increase::Internal::Type::Enum

                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Gas
                GAS = :gas

                # Extra mileage
                EXTRA_MILEAGE = :extra_mileage

                # Late return
                LATE_RETURN = :late_return

                # One way service fee
                ONE_WAY_SERVICE_FEE = :one_way_service_fee

                # Parking violation
                PARKING_VIOLATION = :parking_violation

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/no_show_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental#no_show_indicator
              module NoShowIndicator
                extend Increase::Internal::Type::Enum

                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = :no_show_for_specialized_vehicle

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails#lodging
            class Lodging < Increase::Internal::Type::BaseModel
              # @!attribute check_in_date
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/check_in_date
              #
              #   @return [Date, nil]
              required :check_in_date, Date, nil?: true

              # @!attribute daily_room_rate_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/daily_room_rate_amount
              #
              #   @return [Integer, nil]
              required :daily_room_rate_amount, Integer, nil?: true

              # @!attribute daily_room_rate_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/daily_room_rate_currency
              #
              #   @return [String, nil]
              required :daily_room_rate_currency, String, nil?: true

              # @!attribute extra_charges
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/extra_charges
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges },
                       nil?: true

              # @!attribute folio_cash_advances_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/folio_cash_advances_amount
              #
              #   @return [Integer, nil]
              required :folio_cash_advances_amount, Integer, nil?: true

              # @!attribute folio_cash_advances_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/folio_cash_advances_currency
              #
              #   @return [String, nil]
              required :folio_cash_advances_currency, String, nil?: true

              # @!attribute food_beverage_charges_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/food_beverage_charges_amount
              #
              #   @return [Integer, nil]
              required :food_beverage_charges_amount, Integer, nil?: true

              # @!attribute food_beverage_charges_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/food_beverage_charges_currency
              #
              #   @return [String, nil]
              required :food_beverage_charges_currency, String, nil?: true

              # @!attribute no_show_indicator
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/no_show_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator },
                       nil?: true

              # @!attribute prepaid_expenses_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/prepaid_expenses_amount
              #
              #   @return [Integer, nil]
              required :prepaid_expenses_amount, Integer, nil?: true

              # @!attribute prepaid_expenses_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/prepaid_expenses_currency
              #
              #   @return [String, nil]
              required :prepaid_expenses_currency, String, nil?: true

              # @!attribute room_nights
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/room_nights
              #
              #   @return [Integer, nil]
              required :room_nights, Integer, nil?: true

              # @!attribute total_room_tax_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_room_tax_amount
              #
              #   @return [Integer, nil]
              required :total_room_tax_amount, Integer, nil?: true

              # @!attribute total_room_tax_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_room_tax_currency
              #
              #   @return [String, nil]
              required :total_room_tax_currency, String, nil?: true

              # @!attribute total_tax_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_tax_amount
              #
              #   @return [Integer, nil]
              required :total_tax_amount, Integer, nil?: true

              # @!attribute total_tax_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_tax_currency
              #
              #   @return [String, nil]
              required :total_tax_currency, String, nil?: true

              # @!parse
              #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging
              #   #
              #   # @param check_in_date [Date, nil]
              #   # @param daily_room_rate_amount [Integer, nil]
              #   # @param daily_room_rate_currency [String, nil]
              #   # @param extra_charges [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges, nil]
              #   # @param folio_cash_advances_amount [Integer, nil]
              #   # @param folio_cash_advances_currency [String, nil]
              #   # @param food_beverage_charges_amount [Integer, nil]
              #   # @param food_beverage_charges_currency [String, nil]
              #   # @param no_show_indicator [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator, nil]
              #   # @param prepaid_expenses_amount [Integer, nil]
              #   # @param prepaid_expenses_currency [String, nil]
              #   # @param room_nights [Integer, nil]
              #   # @param total_room_tax_amount [Integer, nil]
              #   # @param total_room_tax_currency [String, nil]
              #   # @param total_tax_amount [Integer, nil]
              #   # @param total_tax_currency [String, nil]
              #   #
              #   def initialize(
              #     check_in_date:,
              #     daily_room_rate_amount:,
              #     daily_room_rate_currency:,
              #     extra_charges:,
              #     folio_cash_advances_amount:,
              #     folio_cash_advances_currency:,
              #     food_beverage_charges_amount:,
              #     food_beverage_charges_currency:,
              #     no_show_indicator:,
              #     prepaid_expenses_amount:,
              #     prepaid_expenses_currency:,
              #     room_nights:,
              #     total_room_tax_amount:,
              #     total_room_tax_currency:,
              #     total_tax_amount:,
              #     total_tax_currency:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/extra_charges
              #
              # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging#extra_charges
              module ExtraCharges
                extend Increase::Internal::Type::Enum

                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Restaurant
                RESTAURANT = :restaurant

                # Gift shop
                GIFT_SHOP = :gift_shop

                # Mini bar
                MINI_BAR = :mini_bar

                # Telephone
                TELEPHONE = :telephone

                # Other
                OTHER = :other

                # Laundry
                LAUNDRY = :laundry

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/no_show_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging#no_show_indicator
              module NoShowIndicator
                extend Increase::Internal::Type::Enum

                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show
                NO_SHOW = :no_show

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/purchase_identifier_format
            #
            # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails#purchase_identifier_format
            module PurchaseIdentifierFormat
              extend Increase::Internal::Type::Enum

              # Free text
              FREE_TEXT = :free_text

              # Order number
              ORDER_NUMBER = :order_number

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = :rental_agreement_number

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = :hotel_folio_number

              # Invoice number
              INVOICE_NUMBER = :invoice_number

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails#travel
            class Travel < Increase::Internal::Type::BaseModel
              # @!attribute ancillary
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary
              #
              #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary, nil]
              required :ancillary,
                       -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary },
                       nil?: true

              # @!attribute computerized_reservation_system
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/computerized_reservation_system
              #
              #   @return [String, nil]
              required :computerized_reservation_system, String, nil?: true

              # @!attribute credit_reason_indicator
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/credit_reason_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator, nil]
              required :credit_reason_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator },
                       nil?: true

              # @!attribute departure_date
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/departure_date
              #
              #   @return [Date, nil]
              required :departure_date, Date, nil?: true

              # @!attribute origination_city_airport_code
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/origination_city_airport_code
              #
              #   @return [String, nil]
              required :origination_city_airport_code, String, nil?: true

              # @!attribute passenger_name
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/passenger_name
              #
              #   @return [String, nil]
              required :passenger_name, String, nil?: true

              # @!attribute restricted_ticket_indicator
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/restricted_ticket_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator, nil]
              required :restricted_ticket_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator },
                       nil?: true

              # @!attribute ticket_change_indicator
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_change_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator, nil]
              required :ticket_change_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator },
                       nil?: true

              # @!attribute ticket_number
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_number
              #
              #   @return [String, nil]
              required :ticket_number, String, nil?: true

              # @!attribute travel_agency_code
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/travel_agency_code
              #
              #   @return [String, nil]
              required :travel_agency_code, String, nil?: true

              # @!attribute travel_agency_name
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/travel_agency_name
              #
              #   @return [String, nil]
              required :travel_agency_name, String, nil?: true

              # @!attribute trip_legs
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs
              #
              #   @return [Array<Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg>, nil]
              required :trip_legs,
                       -> { Increase::Internal::Type::ArrayOf[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg] },
                       nil?: true

              # @!parse
              #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel
              #   #
              #   # @param ancillary [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary, nil]
              #   # @param computerized_reservation_system [String, nil]
              #   # @param credit_reason_indicator [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator, nil]
              #   # @param departure_date [Date, nil]
              #   # @param origination_city_airport_code [String, nil]
              #   # @param passenger_name [String, nil]
              #   # @param restricted_ticket_indicator [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator, nil]
              #   # @param ticket_change_indicator [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator, nil]
              #   # @param ticket_number [String, nil]
              #   # @param travel_agency_code [String, nil]
              #   # @param travel_agency_name [String, nil]
              #   # @param trip_legs [Array<Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg>, nil]
              #   #
              #   def initialize(
              #     ancillary:,
              #     computerized_reservation_system:,
              #     credit_reason_indicator:,
              #     departure_date:,
              #     origination_city_airport_code:,
              #     passenger_name:,
              #     restricted_ticket_indicator:,
              #     ticket_change_indicator:,
              #     ticket_number:,
              #     travel_agency_code:,
              #     travel_agency_name:,
              #     trip_legs:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel#ancillary
              class Ancillary < Increase::Internal::Type::BaseModel
                # @!attribute connected_ticket_document_number
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/connected_ticket_document_number
                #
                #   @return [String, nil]
                required :connected_ticket_document_number, String, nil?: true

                # @!attribute credit_reason_indicator
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/credit_reason_indicator
                #
                #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator, nil]
                required :credit_reason_indicator,
                         enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator },
                         nil?: true

                # @!attribute passenger_name_or_description
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/passenger_name_or_description
                #
                #   @return [String, nil]
                required :passenger_name_or_description, String, nil?: true

                # @!attribute services
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services
                #
                #   @return [Array<Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         -> { Increase::Internal::Type::ArrayOf[Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service] }

                # @!attribute ticket_document_number
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/ticket_document_number
                #
                #   @return [String, nil]
                required :ticket_document_number, String, nil?: true

                # @!parse
                #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary
                #   #
                #   # @param connected_ticket_document_number [String, nil]
                #   # @param credit_reason_indicator [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator, nil]
                #   # @param passenger_name_or_description [String, nil]
                #   # @param services [Array<Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service>]
                #   # @param ticket_document_number [String, nil]
                #   #
                #   def initialize(
                #     connected_ticket_document_number:,
                #     credit_reason_indicator:,
                #     passenger_name_or_description:,
                #     services:,
                #     ticket_document_number:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/credit_reason_indicator
                #
                # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary#credit_reason_indicator
                module CreditReasonIndicator
                  extend Increase::Internal::Type::Enum

                  # No credit
                  NO_CREDIT = :no_credit

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    :passenger_transport_ancillary_purchase_cancellation

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                  # Other
                  OTHER = :other

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end

                class Service < Increase::Internal::Type::BaseModel
                  # @!attribute category
                  #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/category
                  #
                  #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category, nil]
                  required :category,
                           enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category },
                           nil?: true

                  # @!attribute sub_category
                  #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/sub_category
                  #
                  #   @return [String, nil]
                  required :sub_category, String, nil?: true

                  # @!parse
                  #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items
                  #   #
                  #   # @param category [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category, nil]
                  #   # @param sub_category [String, nil]
                  #   #
                  #   def initialize(category:, sub_category:, **) = super

                  # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                  # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/category
                  #
                  # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service#category
                  module Category
                    extend Increase::Internal::Type::Enum

                    # None
                    NONE = :none

                    # Bundled service
                    BUNDLED_SERVICE = :bundled_service

                    # Baggage fee
                    BAGGAGE_FEE = :baggage_fee

                    # Change fee
                    CHANGE_FEE = :change_fee

                    # Cargo
                    CARGO = :cargo

                    # Carbon offset
                    CARBON_OFFSET = :carbon_offset

                    # Frequent flyer
                    FREQUENT_FLYER = :frequent_flyer

                    # Gift card
                    GIFT_CARD = :gift_card

                    # Ground transport
                    GROUND_TRANSPORT = :ground_transport

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = :in_flight_entertainment

                    # Lounge
                    LOUNGE = :lounge

                    # Medical
                    MEDICAL = :medical

                    # Meal beverage
                    MEAL_BEVERAGE = :meal_beverage

                    # Other
                    OTHER = :other

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = :passenger_assist_fee

                    # Pets
                    PETS = :pets

                    # Seat fees
                    SEAT_FEES = :seat_fees

                    # Standby
                    STANDBY = :standby

                    # Service fee
                    SERVICE_FEE = :service_fee

                    # Store
                    STORE = :store

                    # Travel service
                    TRAVEL_SERVICE = :travel_service

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = :unaccompanied_travel

                    # Upgrades
                    UPGRADES = :upgrades

                    # Wi-fi
                    WIFI = :wifi

                    finalize!

                    # @!parse
                    #   # @return [Array<Symbol>]
                    #   def self.values; end
                  end
                end
              end

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/credit_reason_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel#credit_reason_indicator
              module CreditReasonIndicator
                extend Increase::Internal::Type::Enum

                # No credit
                NO_CREDIT = :no_credit

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  :passenger_transport_ancillary_purchase_cancellation

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = :airline_ticket_cancellation

                # Other
                OTHER = :other

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = :partial_refund_of_airline_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/restricted_ticket_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel#restricted_ticket_indicator
              module RestrictedTicketIndicator
                extend Increase::Internal::Type::Enum

                # No restrictions
                NO_RESTRICTIONS = :no_restrictions

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = :restricted_non_refundable_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_change_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel#ticket_change_indicator
              module TicketChangeIndicator
                extend Increase::Internal::Type::Enum

                # None
                NONE = :none

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = :change_to_existing_ticket

                # New ticket
                NEW_TICKET = :new_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              class TripLeg < Increase::Internal::Type::BaseModel
                # @!attribute carrier_code
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/carrier_code
                #
                #   @return [String, nil]
                required :carrier_code, String, nil?: true

                # @!attribute destination_city_airport_code
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/destination_city_airport_code
                #
                #   @return [String, nil]
                required :destination_city_airport_code, String, nil?: true

                # @!attribute fare_basis_code
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/fare_basis_code
                #
                #   @return [String, nil]
                required :fare_basis_code, String, nil?: true

                # @!attribute flight_number
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/flight_number
                #
                #   @return [String, nil]
                required :flight_number, String, nil?: true

                # @!attribute service_class
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/service_class
                #
                #   @return [String, nil]
                required :service_class, String, nil?: true

                # @!attribute stop_over_code
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/stop_over_code
                #
                #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode, nil]
                required :stop_over_code,
                         enum: -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode },
                         nil?: true

                # @!parse
                #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items
                #   #
                #   # @param carrier_code [String, nil]
                #   # @param destination_city_airport_code [String, nil]
                #   # @param fare_basis_code [String, nil]
                #   # @param flight_number [String, nil]
                #   # @param service_class [String, nil]
                #   # @param stop_over_code [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode, nil]
                #   #
                #   def initialize(
                #     carrier_code:,
                #     destination_city_airport_code:,
                #     fare_basis_code:,
                #     flight_number:,
                #     service_class:,
                #     stop_over_code:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/stop_over_code
                #
                # @see Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg#stop_over_code
                module StopOverCode
                  extend Increase::Internal::Type::Enum

                  # None
                  NONE = :none

                  # Stop over allowed
                  STOP_OVER_ALLOWED = :stop_over_allowed

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = :stop_over_not_allowed

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end
              end
            end
          end

          # #/components/schemas/card_settlement/properties/type
          #
          # @see Increase::Models::CardPayment::Element::CardSettlement#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_SETTLEMENT = :card_settlement

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::CardPayment::Element#card_validation
        class CardValidation < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_validation/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute actioner
          #   #/components/schemas/card_validation/properties/actioner
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::Actioner]
          required :actioner, enum: -> { Increase::Models::CardPayment::Element::CardValidation::Actioner }

          # @!attribute card_payment_id
          #   #/components/schemas/card_validation/properties/card_payment_id
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute currency
          #   #/components/schemas/card_validation/properties/currency
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardValidation::Currency }

          # @!attribute digital_wallet_token_id
          #   #/components/schemas/card_validation/properties/digital_wallet_token_id
          #
          #   @return [String, nil]
          required :digital_wallet_token_id, String, nil?: true

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/card_validation/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/card_validation/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   #/components/schemas/card_validation/properties/merchant_city
          #
          #   @return [String, nil]
          required :merchant_city, String, nil?: true

          # @!attribute merchant_country
          #   #/components/schemas/card_validation/properties/merchant_country
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_descriptor
          #   #/components/schemas/card_validation/properties/merchant_descriptor
          #
          #   @return [String]
          required :merchant_descriptor, String

          # @!attribute merchant_postal_code
          #   #/components/schemas/card_validation/properties/merchant_postal_code
          #
          #   @return [String, nil]
          required :merchant_postal_code, String, nil?: true

          # @!attribute merchant_state
          #   #/components/schemas/card_validation/properties/merchant_state
          #
          #   @return [String, nil]
          required :merchant_state, String, nil?: true

          # @!attribute network_details
          #   #/components/schemas/card_validation/properties/network_details
          #
          #   @return [Increase::Models::CardPayment::Element::CardValidation::NetworkDetails]
          required :network_details, -> { Increase::Models::CardPayment::Element::CardValidation::NetworkDetails }

          # @!attribute network_identifiers
          #   #/components/schemas/card_validation/properties/network_identifiers
          #
          #   @return [Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers }

          # @!attribute network_risk_score
          #   #/components/schemas/card_validation/properties/network_risk_score
          #
          #   @return [Integer, nil]
          required :network_risk_score, Integer, nil?: true

          # @!attribute physical_card_id
          #   #/components/schemas/card_validation/properties/physical_card_id
          #
          #   @return [String, nil]
          required :physical_card_id, String, nil?: true

          # @!attribute real_time_decision_id
          #   #/components/schemas/card_validation/properties/real_time_decision_id
          #
          #   @return [String, nil]
          required :real_time_decision_id, String, nil?: true

          # @!attribute terminal_id
          #   #/components/schemas/card_validation/properties/terminal_id
          #
          #   @return [String, nil]
          required :terminal_id, String, nil?: true

          # @!attribute type
          #   #/components/schemas/card_validation/properties/type
          #
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardValidation::Type }

          # @!attribute verification
          #   #/components/schemas/card_validation/properties/verification
          #
          #   @return [Increase::Models::CardPayment::Element::CardValidation::Verification]
          required :verification, -> { Increase::Models::CardPayment::Element::CardValidation::Verification }

          # @!parse
          #   # #/components/schemas/card_payment/properties/elements/items/properties/card_validation
          #   #
          #   # @param id [String]
          #   # @param actioner [Symbol, Increase::Models::CardPayment::Element::CardValidation::Actioner]
          #   # @param card_payment_id [String]
          #   # @param currency [Symbol, Increase::Models::CardPayment::Element::CardValidation::Currency]
          #   # @param digital_wallet_token_id [String, nil]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_city [String, nil]
          #   # @param merchant_country [String]
          #   # @param merchant_descriptor [String]
          #   # @param merchant_postal_code [String, nil]
          #   # @param merchant_state [String, nil]
          #   # @param network_details [Increase::Models::CardPayment::Element::CardValidation::NetworkDetails]
          #   # @param network_identifiers [Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers]
          #   # @param network_risk_score [Integer, nil]
          #   # @param physical_card_id [String, nil]
          #   # @param real_time_decision_id [String, nil]
          #   # @param terminal_id [String, nil]
          #   # @param type [Symbol, Increase::Models::CardPayment::Element::CardValidation::Type]
          #   # @param verification [Increase::Models::CardPayment::Element::CardValidation::Verification]
          #   #
          #   def initialize(
          #     id:,
          #     actioner:,
          #     card_payment_id:,
          #     currency:,
          #     digital_wallet_token_id:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_city:,
          #     merchant_country:,
          #     merchant_descriptor:,
          #     merchant_postal_code:,
          #     merchant_state:,
          #     network_details:,
          #     network_identifiers:,
          #     network_risk_score:,
          #     physical_card_id:,
          #     real_time_decision_id:,
          #     terminal_id:,
          #     type:,
          #     verification:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/card_validation/properties/actioner
          #
          # @see Increase::Models::CardPayment::Element::CardValidation#actioner
          module Actioner
            extend Increase::Internal::Type::Enum

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/card_validation/properties/currency
          #
          # @see Increase::Models::CardPayment::Element::CardValidation#currency
          module Currency
            extend Increase::Internal::Type::Enum

            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::CardPayment::Element::CardValidation#network_details
          class NetworkDetails < Increase::Internal::Type::BaseModel
            # @!attribute category
            #   #/components/schemas/card_validation/properties/network_details/properties/category
            #
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category]
            required :category,
                     enum: -> { Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category }

            # @!attribute visa
            #   #/components/schemas/card_validation/properties/network_details/properties/visa
            #
            #   @return [Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa, nil]
            required :visa,
                     -> { Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa },
                     nil?: true

            # @!parse
            #   # #/components/schemas/card_validation/properties/network_details
            #   #
            #   # @param category [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category]
            #   # @param visa [Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa, nil]
            #   #
            #   def initialize(category:, visa:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_validation/properties/network_details/properties/category
            #
            # @see Increase::Models::CardPayment::Element::CardValidation::NetworkDetails#category
            module Category
              extend Increase::Internal::Type::Enum

              # Visa
              VISA = :visa

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::CardPayment::Element::CardValidation::NetworkDetails#visa
            class Visa < Increase::Internal::Type::BaseModel
              # @!attribute electronic_commerce_indicator
              #   #/components/schemas/card_validation/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              required :electronic_commerce_indicator,
                       enum: -> { Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator },
                       nil?: true

              # @!attribute point_of_service_entry_mode
              #   #/components/schemas/card_validation/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              required :point_of_service_entry_mode,
                       enum: -> { Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode },
                       nil?: true

              # @!attribute stand_in_processing_reason
              #   #/components/schemas/card_validation/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason, nil]
              required :stand_in_processing_reason,
                       enum: -> { Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason },
                       nil?: true

              # @!parse
              #   # #/components/schemas/card_validation/properties/network_details/properties/visa
              #   #
              #   # @param electronic_commerce_indicator [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              #   # @param point_of_service_entry_mode [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              #   # @param stand_in_processing_reason [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason, nil]
              #   #
              #   def initialize(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_validation/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              #
              # @see Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa#electronic_commerce_indicator
              module ElectronicCommerceIndicator
                extend Increase::Internal::Type::Enum

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER = :mail_phone_order

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING = :recurring

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT = :installment

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER = :unknown_mail_phone_order

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE = :secure_electronic_commerce

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  :non_authenticated_security_transaction_at_3ds_capable_merchant

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = :non_authenticated_security_transaction

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = :non_secure_transaction

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_validation/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              #
              # @see Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa#point_of_service_entry_mode
              module PointOfServiceEntryMode
                extend Increase::Internal::Type::Enum

                # Unknown
                UNKNOWN = :unknown

                # Manual key entry
                MANUAL = :manual

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV = :magnetic_stripe_no_cvv

                # Optical code
                OPTICAL_CODE = :optical_code

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD = :integrated_circuit_card

                # Contactless read of chip card
                CONTACTLESS = :contactless

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE = :credential_on_file

                # Magnetic stripe read
                MAGNETIC_STRIPE = :magnetic_stripe

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE = :contactless_magnetic_stripe

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV = :integrated_circuit_card_no_cvv

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_validation/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              #
              # @see Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa#stand_in_processing_reason
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

          # @see Increase::Models::CardPayment::Element::CardValidation#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute retrieval_reference_number
            #   #/components/schemas/card_validation/properties/network_identifiers/properties/retrieval_reference_number
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String, nil?: true

            # @!attribute trace_number
            #   #/components/schemas/card_validation/properties/network_identifiers/properties/trace_number
            #
            #   @return [String, nil]
            required :trace_number, String, nil?: true

            # @!attribute transaction_id
            #   #/components/schemas/card_validation/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_validation/properties/network_identifiers
            #   #
            #   # @param retrieval_reference_number [String, nil]
            #   # @param trace_number [String, nil]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(retrieval_reference_number:, trace_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # #/components/schemas/card_validation/properties/type
          #
          # @see Increase::Models::CardPayment::Element::CardValidation#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_VALIDATION = :card_validation

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::CardPayment::Element::CardValidation#verification
          class Verification < Increase::Internal::Type::BaseModel
            # @!attribute card_verification_code
            #   #/components/schemas/card_validation/properties/verification/properties/card_verification_code
            #
            #   @return [Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode }

            # @!attribute cardholder_address
            #   #/components/schemas/card_validation/properties/verification/properties/cardholder_address
            #
            #   @return [Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress }

            # @!parse
            #   # #/components/schemas/card_validation/properties/verification
            #   #
            #   # @param card_verification_code [Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode]
            #   # @param cardholder_address [Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress]
            #   #
            #   def initialize(card_verification_code:, cardholder_address:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::CardPayment::Element::CardValidation::Verification#card_verification_code
            class CardVerificationCode < Increase::Internal::Type::BaseModel
              # @!attribute result
              #   #/components/schemas/card_validation/properties/verification/properties/card_verification_code/properties/result
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result]
              required :result,
                       enum: -> { Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result }

              # @!parse
              #   # #/components/schemas/card_validation/properties/verification/properties/card_verification_code
              #   #
              #   # @param result [Symbol, Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result]
              #   #
              #   def initialize(result:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_validation/properties/verification/properties/card_verification_code/properties/result
              #
              # @see Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode#result
              module Result
                extend Increase::Internal::Type::Enum

                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # @see Increase::Models::CardPayment::Element::CardValidation::Verification#cardholder_address
            class CardholderAddress < Increase::Internal::Type::BaseModel
              # @!attribute actual_line1
              #   #/components/schemas/card_validation/properties/verification/properties/cardholder_address/properties/actual_line1
              #
              #   @return [String, nil]
              required :actual_line1, String, nil?: true

              # @!attribute actual_postal_code
              #   #/components/schemas/card_validation/properties/verification/properties/cardholder_address/properties/actual_postal_code
              #
              #   @return [String, nil]
              required :actual_postal_code, String, nil?: true

              # @!attribute provided_line1
              #   #/components/schemas/card_validation/properties/verification/properties/cardholder_address/properties/provided_line1
              #
              #   @return [String, nil]
              required :provided_line1, String, nil?: true

              # @!attribute provided_postal_code
              #   #/components/schemas/card_validation/properties/verification/properties/cardholder_address/properties/provided_postal_code
              #
              #   @return [String, nil]
              required :provided_postal_code, String, nil?: true

              # @!attribute result
              #   #/components/schemas/card_validation/properties/verification/properties/cardholder_address/properties/result
              #
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result]
              required :result,
                       enum: -> { Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result }

              # @!parse
              #   # #/components/schemas/card_validation/properties/verification/properties/cardholder_address
              #   #
              #   # @param actual_line1 [String, nil]
              #   # @param actual_postal_code [String, nil]
              #   # @param provided_line1 [String, nil]
              #   # @param provided_postal_code [String, nil]
              #   # @param result [Symbol, Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result]
              #   #
              #   def initialize(actual_line1:, actual_postal_code:, provided_line1:, provided_postal_code:, result:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_validation/properties/verification/properties/cardholder_address/properties/result
              #
              # @see Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress#result
              module Result
                extend Increase::Internal::Type::Enum

                # No address was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED = :postal_code_match_address_not_checked

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH = :postal_code_match_address_no_match

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH = :postal_code_no_match_address_match

                # Postal code and street address match.
                MATCH = :match

                # Postal code and street address do not match.
                NO_MATCH = :no_match

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end
        end

        # #/components/schemas/card_payment/properties/elements/items/properties/category
        #
        # @see Increase::Models::CardPayment::Element#category
        module Category
          extend Increase::Internal::Type::Enum

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION = :card_authorization

          # Card Authentication: details will be under the `card_authentication` object.
          CARD_AUTHENTICATION = :card_authentication

          # Card Validation: details will be under the `card_validation` object.
          CARD_VALIDATION = :card_validation

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE = :card_decline

          # Card Reversal: details will be under the `card_reversal` object.
          CARD_REVERSAL = :card_reversal

          # Card Authorization Expiration: details will be under the `card_authorization_expiration` object.
          CARD_AUTHORIZATION_EXPIRATION = :card_authorization_expiration

          # Card Increment: details will be under the `card_increment` object.
          CARD_INCREMENT = :card_increment

          # Card Settlement: details will be under the `card_settlement` object.
          CARD_SETTLEMENT = :card_settlement

          # Card Refund: details will be under the `card_refund` object.
          CARD_REFUND = :card_refund

          # Card Fuel Confirmation: details will be under the `card_fuel_confirmation` object.
          CARD_FUEL_CONFIRMATION = :card_fuel_confirmation

          # Unknown card payment element.
          OTHER = :other

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::CardPayment#state
      class State < Increase::Internal::Type::BaseModel
        # @!attribute authorized_amount
        #   #/components/schemas/card_payment/properties/state/properties/authorized_amount
        #
        #   @return [Integer]
        required :authorized_amount, Integer

        # @!attribute fuel_confirmed_amount
        #   #/components/schemas/card_payment/properties/state/properties/fuel_confirmed_amount
        #
        #   @return [Integer]
        required :fuel_confirmed_amount, Integer

        # @!attribute incremented_amount
        #   #/components/schemas/card_payment/properties/state/properties/incremented_amount
        #
        #   @return [Integer]
        required :incremented_amount, Integer

        # @!attribute reversed_amount
        #   #/components/schemas/card_payment/properties/state/properties/reversed_amount
        #
        #   @return [Integer]
        required :reversed_amount, Integer

        # @!attribute settled_amount
        #   #/components/schemas/card_payment/properties/state/properties/settled_amount
        #
        #   @return [Integer]
        required :settled_amount, Integer

        # @!parse
        #   # #/components/schemas/card_payment/properties/state
        #   #
        #   # @param authorized_amount [Integer]
        #   # @param fuel_confirmed_amount [Integer]
        #   # @param incremented_amount [Integer]
        #   # @param reversed_amount [Integer]
        #   # @param settled_amount [Integer]
        #   #
        #   def initialize(authorized_amount:, fuel_confirmed_amount:, incremented_amount:, reversed_amount:, settled_amount:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/card_payment/properties/type
      #
      # @see Increase::Models::CardPayment#type
      module Type
        extend Increase::Internal::Type::Enum

        CARD_PAYMENT = :card_payment

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
