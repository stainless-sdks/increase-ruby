# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::RealTimeDecisions#retrieve
    class RealTimeDecision < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/real_time_decision/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute card_authentication
      #   #/components/schemas/real_time_decision/properties/card_authentication
      #
      #   @return [Increase::Models::RealTimeDecision::CardAuthentication, nil]
      required :card_authentication, -> { Increase::Models::RealTimeDecision::CardAuthentication }, nil?: true

      # @!attribute card_authentication_challenge
      #   #/components/schemas/real_time_decision/properties/card_authentication_challenge
      #
      #   @return [Increase::Models::RealTimeDecision::CardAuthenticationChallenge, nil]
      required :card_authentication_challenge,
               -> { Increase::Models::RealTimeDecision::CardAuthenticationChallenge },
               nil?: true

      # @!attribute card_authorization
      #   #/components/schemas/real_time_decision/properties/card_authorization
      #
      #   @return [Increase::Models::RealTimeDecision::CardAuthorization, nil]
      required :card_authorization, -> { Increase::Models::RealTimeDecision::CardAuthorization }, nil?: true

      # @!attribute category
      #   #/components/schemas/real_time_decision/properties/category
      #
      #   @return [Symbol, Increase::Models::RealTimeDecision::Category]
      required :category, enum: -> { Increase::Models::RealTimeDecision::Category }

      # @!attribute created_at
      #   #/components/schemas/real_time_decision/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute digital_wallet_authentication
      #   #/components/schemas/real_time_decision/properties/digital_wallet_authentication
      #
      #   @return [Increase::Models::RealTimeDecision::DigitalWalletAuthentication, nil]
      required :digital_wallet_authentication,
               -> { Increase::Models::RealTimeDecision::DigitalWalletAuthentication },
               nil?: true

      # @!attribute digital_wallet_token
      #   #/components/schemas/real_time_decision/properties/digital_wallet_token
      #
      #   @return [Increase::Models::RealTimeDecision::DigitalWalletToken, nil]
      required :digital_wallet_token, -> { Increase::Models::RealTimeDecision::DigitalWalletToken }, nil?: true

      # @!attribute status
      #   #/components/schemas/real_time_decision/properties/status
      #
      #   @return [Symbol, Increase::Models::RealTimeDecision::Status]
      required :status, enum: -> { Increase::Models::RealTimeDecision::Status }

      # @!attribute timeout_at
      #   #/components/schemas/real_time_decision/properties/timeout_at
      #
      #   @return [Time]
      required :timeout_at, Time

      # @!attribute type
      #   #/components/schemas/real_time_decision/properties/type
      #
      #   @return [Symbol, Increase::Models::RealTimeDecision::Type]
      required :type, enum: -> { Increase::Models::RealTimeDecision::Type }

      # @!parse
      #   # #/components/schemas/real_time_decision
      #   #
      #   # @param id [String]
      #   # @param card_authentication [Increase::Models::RealTimeDecision::CardAuthentication, nil]
      #   # @param card_authentication_challenge [Increase::Models::RealTimeDecision::CardAuthenticationChallenge, nil]
      #   # @param card_authorization [Increase::Models::RealTimeDecision::CardAuthorization, nil]
      #   # @param category [Symbol, Increase::Models::RealTimeDecision::Category]
      #   # @param created_at [Time]
      #   # @param digital_wallet_authentication [Increase::Models::RealTimeDecision::DigitalWalletAuthentication, nil]
      #   # @param digital_wallet_token [Increase::Models::RealTimeDecision::DigitalWalletToken, nil]
      #   # @param status [Symbol, Increase::Models::RealTimeDecision::Status]
      #   # @param timeout_at [Time]
      #   # @param type [Symbol, Increase::Models::RealTimeDecision::Type]
      #   #
      #   def initialize(
      #     id:,
      #     card_authentication:,
      #     card_authentication_challenge:,
      #     card_authorization:,
      #     category:,
      #     created_at:,
      #     digital_wallet_authentication:,
      #     digital_wallet_token:,
      #     status:,
      #     timeout_at:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::RealTimeDecision#card_authentication
      class CardAuthentication < Increase::Internal::Type::BaseModel
        # @!attribute account_id
        #   #/components/schemas/real_time_decision/properties/card_authentication/anyOf/0/properties/account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute card_id
        #   #/components/schemas/real_time_decision/properties/card_authentication/anyOf/0/properties/card_id
        #
        #   @return [String]
        required :card_id, String

        # @!attribute decision
        #   #/components/schemas/real_time_decision/properties/card_authentication/anyOf/0/properties/decision
        #
        #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthentication::Decision, nil]
        required :decision,
                 enum: -> { Increase::Models::RealTimeDecision::CardAuthentication::Decision },
                 nil?: true

        # @!attribute upcoming_card_payment_id
        #   #/components/schemas/real_time_decision/properties/card_authentication/anyOf/0/properties/upcoming_card_payment_id
        #
        #   @return [String]
        required :upcoming_card_payment_id, String

        # @!parse
        #   # #/components/schemas/real_time_decision/properties/card_authentication
        #   #
        #   # @param account_id [String]
        #   # @param card_id [String]
        #   # @param decision [Symbol, Increase::Models::RealTimeDecision::CardAuthentication::Decision, nil]
        #   # @param upcoming_card_payment_id [String]
        #   #
        #   def initialize(account_id:, card_id:, decision:, upcoming_card_payment_id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/real_time_decision/properties/card_authentication/anyOf/0/properties/decision
        #
        # @see Increase::Models::RealTimeDecision::CardAuthentication#decision
        module Decision
          extend Increase::Internal::Type::Enum

          # Approve the authentication attempt without triggering a challenge.
          APPROVE = :approve

          # Request further validation before approving the authentication attempt.
          CHALLENGE = :challenge

          # Deny the authentication attempt.
          DENY = :deny

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::RealTimeDecision#card_authentication_challenge
      class CardAuthenticationChallenge < Increase::Internal::Type::BaseModel
        # @!attribute account_id
        #   #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute card_id
        #   #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/card_id
        #
        #   @return [String]
        required :card_id, String

        # @!attribute card_payment_id
        #   #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/card_payment_id
        #
        #   @return [String]
        required :card_payment_id, String

        # @!attribute one_time_code
        #   #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/one_time_code
        #
        #   @return [String]
        required :one_time_code, String

        # @!attribute result
        #   #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/result
        #
        #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result, nil]
        required :result,
                 enum: -> { Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result },
                 nil?: true

        # @!parse
        #   # #/components/schemas/real_time_decision/properties/card_authentication_challenge
        #   #
        #   # @param account_id [String]
        #   # @param card_id [String]
        #   # @param card_payment_id [String]
        #   # @param one_time_code [String]
        #   # @param result [Symbol, Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result, nil]
        #   #
        #   def initialize(account_id:, card_id:, card_payment_id:, one_time_code:, result:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/real_time_decision/properties/card_authentication_challenge/anyOf/0/properties/result
        #
        # @see Increase::Models::RealTimeDecision::CardAuthenticationChallenge#result
        module Result
          extend Increase::Internal::Type::Enum

          # Your application successfully delivered the one-time code to the cardholder.
          SUCCESS = :success

          # Your application was unable to deliver the one-time code to the cardholder.
          FAILURE = :failure

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::RealTimeDecision#card_authorization
      class CardAuthorization < Increase::Internal::Type::BaseModel
        # @!attribute account_id
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute card_id
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/card_id
        #
        #   @return [String]
        required :card_id, String

        # @!attribute decision
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/decision
        #
        #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Decision, nil]
        required :decision,
                 enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::Decision },
                 nil?: true

        # @!attribute digital_wallet_token_id
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/digital_wallet_token_id
        #
        #   @return [String, nil]
        required :digital_wallet_token_id, String, nil?: true

        # @!attribute direction
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/direction
        #
        #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Direction]
        required :direction, enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::Direction }

        # @!attribute merchant_acceptor_id
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_acceptor_id
        #
        #   @return [String]
        required :merchant_acceptor_id, String

        # @!attribute merchant_category_code
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_category_code
        #
        #   @return [String]
        required :merchant_category_code, String

        # @!attribute merchant_city
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_city
        #
        #   @return [String, nil]
        required :merchant_city, String, nil?: true

        # @!attribute merchant_country
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_country
        #
        #   @return [String]
        required :merchant_country, String

        # @!attribute merchant_descriptor
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_descriptor
        #
        #   @return [String]
        required :merchant_descriptor, String

        # @!attribute merchant_postal_code
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_postal_code
        #
        #   @return [String, nil]
        required :merchant_postal_code, String, nil?: true

        # @!attribute merchant_state
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/merchant_state
        #
        #   @return [String, nil]
        required :merchant_state, String, nil?: true

        # @!attribute network_details
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details
        #
        #   @return [Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails]
        required :network_details, -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails }

        # @!attribute network_identifiers
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_identifiers
        #
        #   @return [Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers]
        required :network_identifiers,
                 -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers }

        # @!attribute network_risk_score
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_risk_score
        #
        #   @return [Integer, nil]
        required :network_risk_score, Integer, nil?: true

        # @!attribute physical_card_id
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/physical_card_id
        #
        #   @return [String, nil]
        required :physical_card_id, String, nil?: true

        # @!attribute presentment_amount
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/presentment_amount
        #
        #   @return [Integer]
        required :presentment_amount, Integer

        # @!attribute presentment_currency
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/presentment_currency
        #
        #   @return [String]
        required :presentment_currency, String

        # @!attribute processing_category
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/processing_category
        #
        #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory]
        required :processing_category,
                 enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory }

        # @!attribute request_details
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details
        #
        #   @return [Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails]
        required :request_details, -> { Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails }

        # @!attribute settlement_amount
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/settlement_amount
        #
        #   @return [Integer]
        required :settlement_amount, Integer

        # @!attribute settlement_currency
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/settlement_currency
        #
        #   @return [String]
        required :settlement_currency, String

        # @!attribute terminal_id
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/terminal_id
        #
        #   @return [String, nil]
        required :terminal_id, String, nil?: true

        # @!attribute upcoming_card_payment_id
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/upcoming_card_payment_id
        #
        #   @return [String]
        required :upcoming_card_payment_id, String

        # @!attribute verification
        #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification
        #
        #   @return [Increase::Models::RealTimeDecision::CardAuthorization::Verification]
        required :verification, -> { Increase::Models::RealTimeDecision::CardAuthorization::Verification }

        # @!parse
        #   # #/components/schemas/real_time_decision/properties/card_authorization
        #   #
        #   # @param account_id [String]
        #   # @param card_id [String]
        #   # @param decision [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Decision, nil]
        #   # @param digital_wallet_token_id [String, nil]
        #   # @param direction [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Direction]
        #   # @param merchant_acceptor_id [String]
        #   # @param merchant_category_code [String]
        #   # @param merchant_city [String, nil]
        #   # @param merchant_country [String]
        #   # @param merchant_descriptor [String]
        #   # @param merchant_postal_code [String, nil]
        #   # @param merchant_state [String, nil]
        #   # @param network_details [Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails]
        #   # @param network_identifiers [Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers]
        #   # @param network_risk_score [Integer, nil]
        #   # @param physical_card_id [String, nil]
        #   # @param presentment_amount [Integer]
        #   # @param presentment_currency [String]
        #   # @param processing_category [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory]
        #   # @param request_details [Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails]
        #   # @param settlement_amount [Integer]
        #   # @param settlement_currency [String]
        #   # @param terminal_id [String, nil]
        #   # @param upcoming_card_payment_id [String]
        #   # @param verification [Increase::Models::RealTimeDecision::CardAuthorization::Verification]
        #   #
        #   def initialize(
        #     account_id:,
        #     card_id:,
        #     decision:,
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
        #     request_details:,
        #     settlement_amount:,
        #     settlement_currency:,
        #     terminal_id:,
        #     upcoming_card_payment_id:,
        #     verification:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/decision
        #
        # @see Increase::Models::RealTimeDecision::CardAuthorization#decision
        module Decision
          extend Increase::Internal::Type::Enum

          # Approve the authorization.
          APPROVE = :approve

          # Decline the authorization.
          DECLINE = :decline

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/direction
        #
        # @see Increase::Models::RealTimeDecision::CardAuthorization#direction
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

        # @see Increase::Models::RealTimeDecision::CardAuthorization#network_details
        class NetworkDetails < Increase::Internal::Type::BaseModel
          # @!attribute category
          #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/category
          #
          #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category]
          required :category,
                   enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category }

          # @!attribute visa
          #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa
          #
          #   @return [Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa, nil]
          required :visa,
                   -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa },
                   nil?: true

          # @!parse
          #   # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details
          #   #
          #   # @param category [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category]
          #   # @param visa [Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa, nil]
          #   #
          #   def initialize(category:, visa:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/category
          #
          # @see Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails#category
          module Category
            extend Increase::Internal::Type::Enum

            # Visa
            VISA = :visa

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails#visa
          class Visa < Increase::Internal::Type::BaseModel
            # @!attribute electronic_commerce_indicator
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
            #
            #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
            required :electronic_commerce_indicator,
                     enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator },
                     nil?: true

            # @!attribute point_of_service_entry_mode
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
            #
            #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
            required :point_of_service_entry_mode,
                     enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode },
                     nil?: true

            # @!attribute stand_in_processing_reason
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
            #
            #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason, nil]
            required :stand_in_processing_reason,
                     enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason },
                     nil?: true

            # @!parse
            #   # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa
            #   #
            #   # @param electronic_commerce_indicator [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
            #   # @param point_of_service_entry_mode [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
            #   # @param stand_in_processing_reason [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason, nil]
            #   #
            #   def initialize(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
            #
            # @see Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa#electronic_commerce_indicator
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

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
            #
            # @see Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa#point_of_service_entry_mode
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

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
            #
            # @see Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa#stand_in_processing_reason
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

        # @see Increase::Models::RealTimeDecision::CardAuthorization#network_identifiers
        class NetworkIdentifiers < Increase::Internal::Type::BaseModel
          # @!attribute retrieval_reference_number
          #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_identifiers/properties/retrieval_reference_number
          #
          #   @return [String, nil]
          required :retrieval_reference_number, String, nil?: true

          # @!attribute trace_number
          #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_identifiers/properties/trace_number
          #
          #   @return [String, nil]
          required :trace_number, String, nil?: true

          # @!attribute transaction_id
          #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_identifiers/properties/transaction_id
          #
          #   @return [String, nil]
          required :transaction_id, String, nil?: true

          # @!parse
          #   # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/network_identifiers
          #   #
          #   # @param retrieval_reference_number [String, nil]
          #   # @param trace_number [String, nil]
          #   # @param transaction_id [String, nil]
          #   #
          #   def initialize(retrieval_reference_number:, trace_number:, transaction_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/processing_category
        #
        # @see Increase::Models::RealTimeDecision::CardAuthorization#processing_category
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

        # @see Increase::Models::RealTimeDecision::CardAuthorization#request_details
        class RequestDetails < Increase::Internal::Type::BaseModel
          # @!attribute category
          #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/category
          #
          #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category]
          required :category,
                   enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category }

          # @!attribute incremental_authorization
          #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/incremental_authorization
          #
          #   @return [Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization, nil]
          required :incremental_authorization,
                   -> { Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization },
                   nil?: true

          # @!attribute initial_authorization
          #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/initial_authorization
          #
          #   @return [Object, nil]
          required :initial_authorization, Increase::Internal::Type::Unknown, nil?: true

          # @!parse
          #   # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details
          #   #
          #   # @param category [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category]
          #   # @param incremental_authorization [Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization, nil]
          #   # @param initial_authorization [Object, nil]
          #   #
          #   def initialize(category:, incremental_authorization:, initial_authorization:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/category
          #
          # @see Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails#category
          module Category
            extend Increase::Internal::Type::Enum

            # A regular, standalone authorization.
            INITIAL_AUTHORIZATION = :initial_authorization

            # An incremental request to increase the amount of an existing authorization.
            INCREMENTAL_AUTHORIZATION = :incremental_authorization

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails#incremental_authorization
          class IncrementalAuthorization < Increase::Internal::Type::BaseModel
            # @!attribute card_payment_id
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/incremental_authorization/anyOf/0/properties/card_payment_id
            #
            #   @return [String]
            required :card_payment_id, String

            # @!attribute original_card_authorization_id
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/incremental_authorization/anyOf/0/properties/original_card_authorization_id
            #
            #   @return [String]
            required :original_card_authorization_id, String

            # @!parse
            #   # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/request_details/properties/incremental_authorization
            #   #
            #   # @param card_payment_id [String]
            #   # @param original_card_authorization_id [String]
            #   #
            #   def initialize(card_payment_id:, original_card_authorization_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end
        end

        # @see Increase::Models::RealTimeDecision::CardAuthorization#verification
        class Verification < Increase::Internal::Type::BaseModel
          # @!attribute card_verification_code
          #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/card_verification_code
          #
          #   @return [Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode]
          required :card_verification_code,
                   -> { Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode }

          # @!attribute cardholder_address
          #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address
          #
          #   @return [Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress]
          required :cardholder_address,
                   -> { Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress }

          # @!parse
          #   # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification
          #   #
          #   # @param card_verification_code [Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode]
          #   # @param cardholder_address [Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress]
          #   #
          #   def initialize(card_verification_code:, cardholder_address:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::RealTimeDecision::CardAuthorization::Verification#card_verification_code
          class CardVerificationCode < Increase::Internal::Type::BaseModel
            # @!attribute result
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/card_verification_code/properties/result
            #
            #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result]
            required :result,
                     enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result }

            # @!parse
            #   # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/card_verification_code
            #   #
            #   # @param result [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result]
            #   #
            #   def initialize(result:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/card_verification_code/properties/result
            #
            # @see Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode#result
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

          # @see Increase::Models::RealTimeDecision::CardAuthorization::Verification#cardholder_address
          class CardholderAddress < Increase::Internal::Type::BaseModel
            # @!attribute actual_line1
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/actual_line1
            #
            #   @return [String, nil]
            required :actual_line1, String, nil?: true

            # @!attribute actual_postal_code
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/actual_postal_code
            #
            #   @return [String, nil]
            required :actual_postal_code, String, nil?: true

            # @!attribute provided_line1
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/provided_line1
            #
            #   @return [String, nil]
            required :provided_line1, String, nil?: true

            # @!attribute provided_postal_code
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/provided_postal_code
            #
            #   @return [String, nil]
            required :provided_postal_code, String, nil?: true

            # @!attribute result
            #   #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/result
            #
            #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result]
            required :result,
                     enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result }

            # @!parse
            #   # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address
            #   #
            #   # @param actual_line1 [String, nil]
            #   # @param actual_postal_code [String, nil]
            #   # @param provided_line1 [String, nil]
            #   # @param provided_postal_code [String, nil]
            #   # @param result [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result]
            #   #
            #   def initialize(actual_line1:, actual_postal_code:, provided_line1:, provided_postal_code:, result:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/real_time_decision/properties/card_authorization/anyOf/0/properties/verification/properties/cardholder_address/properties/result
            #
            # @see Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress#result
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

      # #/components/schemas/real_time_decision/properties/category
      #
      # @see Increase::Models::RealTimeDecision#category
      module Category
        extend Increase::Internal::Type::Enum

        # A card is being authorized.
        CARD_AUTHORIZATION_REQUESTED = :card_authorization_requested

        # 3DS authentication is requested.
        CARD_AUTHENTICATION_REQUESTED = :card_authentication_requested

        # 3DS authentication challenge requires cardholder involvement.
        CARD_AUTHENTICATION_CHALLENGE_REQUESTED = :card_authentication_challenge_requested

        # A card is being loaded into a digital wallet.
        DIGITAL_WALLET_TOKEN_REQUESTED = :digital_wallet_token_requested

        # A card is being loaded into a digital wallet and requires cardholder authentication.
        DIGITAL_WALLET_AUTHENTICATION_REQUESTED = :digital_wallet_authentication_requested

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::RealTimeDecision#digital_wallet_authentication
      class DigitalWalletAuthentication < Increase::Internal::Type::BaseModel
        # @!attribute card_id
        #   #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/card_id
        #
        #   @return [String]
        required :card_id, String

        # @!attribute channel
        #   #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/channel
        #
        #   @return [Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel]
        required :channel, enum: -> { Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel }

        # @!attribute digital_wallet
        #   #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/digital_wallet
        #
        #   @return [Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet]
        required :digital_wallet,
                 enum: -> { Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet }

        # @!attribute email
        #   #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/email
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute one_time_passcode
        #   #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/one_time_passcode
        #
        #   @return [String]
        required :one_time_passcode, String

        # @!attribute phone
        #   #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/phone
        #
        #   @return [String, nil]
        required :phone, String, nil?: true

        # @!attribute result
        #   #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/result
        #
        #   @return [Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result, nil]
        required :result,
                 enum: -> { Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result },
                 nil?: true

        # @!parse
        #   # #/components/schemas/real_time_decision/properties/digital_wallet_authentication
        #   #
        #   # @param card_id [String]
        #   # @param channel [Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel]
        #   # @param digital_wallet [Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet]
        #   # @param email [String, nil]
        #   # @param one_time_passcode [String]
        #   # @param phone [String, nil]
        #   # @param result [Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result, nil]
        #   #
        #   def initialize(card_id:, channel:, digital_wallet:, email:, one_time_passcode:, phone:, result:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/channel
        #
        # @see Increase::Models::RealTimeDecision::DigitalWalletAuthentication#channel
        module Channel
          extend Increase::Internal::Type::Enum

          # Send one-time passcodes over SMS.
          SMS = :sms

          # Send one-time passcodes over email.
          EMAIL = :email

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/digital_wallet
        #
        # @see Increase::Models::RealTimeDecision::DigitalWalletAuthentication#digital_wallet
        module DigitalWallet
          extend Increase::Internal::Type::Enum

          # Apple Pay
          APPLE_PAY = :apple_pay

          # Google Pay
          GOOGLE_PAY = :google_pay

          # Samsung Pay
          SAMSUNG_PAY = :samsung_pay

          # Unknown
          UNKNOWN = :unknown

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/real_time_decision/properties/digital_wallet_authentication/anyOf/0/properties/result
        #
        # @see Increase::Models::RealTimeDecision::DigitalWalletAuthentication#result
        module Result
          extend Increase::Internal::Type::Enum

          # Your application successfully delivered the one-time passcode to the cardholder.
          SUCCESS = :success

          # Your application failed to deliver the one-time passcode to the cardholder.
          FAILURE = :failure

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::RealTimeDecision#digital_wallet_token
      class DigitalWalletToken < Increase::Internal::Type::BaseModel
        # @!attribute card_id
        #   #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/card_id
        #
        #   @return [String]
        required :card_id, String

        # @!attribute card_profile_id
        #   #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/card_profile_id
        #
        #   @return [String, nil]
        required :card_profile_id, String, nil?: true

        # @!attribute decision
        #   #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/decision
        #
        #   @return [Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision, nil]
        required :decision,
                 enum: -> { Increase::Models::RealTimeDecision::DigitalWalletToken::Decision },
                 nil?: true

        # @!attribute device
        #   #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/device
        #
        #   @return [Increase::Models::RealTimeDecision::DigitalWalletToken::Device]
        required :device, -> { Increase::Models::RealTimeDecision::DigitalWalletToken::Device }

        # @!attribute digital_wallet
        #   #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/digital_wallet
        #
        #   @return [Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet]
        required :digital_wallet,
                 enum: -> { Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet }

        # @!parse
        #   # #/components/schemas/real_time_decision/properties/digital_wallet_token
        #   #
        #   # @param card_id [String]
        #   # @param card_profile_id [String, nil]
        #   # @param decision [Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision, nil]
        #   # @param device [Increase::Models::RealTimeDecision::DigitalWalletToken::Device]
        #   # @param digital_wallet [Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet]
        #   #
        #   def initialize(card_id:, card_profile_id:, decision:, device:, digital_wallet:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/decision
        #
        # @see Increase::Models::RealTimeDecision::DigitalWalletToken#decision
        module Decision
          extend Increase::Internal::Type::Enum

          # Approve the provisioning request.
          APPROVE = :approve

          # Decline the provisioning request.
          DECLINE = :decline

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::RealTimeDecision::DigitalWalletToken#device
        class Device < Increase::Internal::Type::BaseModel
          # @!attribute identifier
          #   #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/device/properties/identifier
          #
          #   @return [String, nil]
          required :identifier, String, nil?: true

          # @!parse
          #   # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/device
          #   #
          #   # @param identifier [String, nil]
          #   #
          #   def initialize(identifier:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/real_time_decision/properties/digital_wallet_token/anyOf/0/properties/digital_wallet
        #
        # @see Increase::Models::RealTimeDecision::DigitalWalletToken#digital_wallet
        module DigitalWallet
          extend Increase::Internal::Type::Enum

          # Apple Pay
          APPLE_PAY = :apple_pay

          # Google Pay
          GOOGLE_PAY = :google_pay

          # Samsung Pay
          SAMSUNG_PAY = :samsung_pay

          # Unknown
          UNKNOWN = :unknown

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/real_time_decision/properties/status
      #
      # @see Increase::Models::RealTimeDecision#status
      module Status
        extend Increase::Internal::Type::Enum

        # The decision is pending action via real-time webhook.
        PENDING = :pending

        # Your webhook actioned the real-time decision.
        RESPONDED = :responded

        # Your webhook failed to respond to the authorization in time.
        TIMED_OUT = :timed_out

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/real_time_decision/properties/type
      #
      # @see Increase::Models::RealTimeDecision#type
      module Type
        extend Increase::Internal::Type::Enum

        REAL_TIME_DECISION = :real_time_decision

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
