# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::RealTimeDecisions#action
    class RealTimeDecisionActionParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] card_authentication
      #   #/components/schemas/action_a_real_time_decision_parameters/properties/card_authentication
      #
      #   @return [Increase::Models::RealTimeDecisionActionParams::CardAuthentication, nil]
      optional :card_authentication, -> { Increase::Models::RealTimeDecisionActionParams::CardAuthentication }

      # @!parse
      #   # @return [Increase::Models::RealTimeDecisionActionParams::CardAuthentication]
      #   attr_writer :card_authentication

      # @!attribute [r] card_authentication_challenge
      #   #/components/schemas/action_a_real_time_decision_parameters/properties/card_authentication_challenge
      #
      #   @return [Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge, nil]
      optional :card_authentication_challenge,
               -> { Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge }

      # @!parse
      #   # @return [Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge]
      #   attr_writer :card_authentication_challenge

      # @!attribute [r] card_authorization
      #   #/components/schemas/action_a_real_time_decision_parameters/properties/card_authorization
      #
      #   @return [Increase::Models::RealTimeDecisionActionParams::CardAuthorization, nil]
      optional :card_authorization, -> { Increase::Models::RealTimeDecisionActionParams::CardAuthorization }

      # @!parse
      #   # @return [Increase::Models::RealTimeDecisionActionParams::CardAuthorization]
      #   attr_writer :card_authorization

      # @!attribute [r] digital_wallet_authentication
      #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_authentication
      #
      #   @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication, nil]
      optional :digital_wallet_authentication,
               -> { Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication }

      # @!parse
      #   # @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication]
      #   attr_writer :digital_wallet_authentication

      # @!attribute [r] digital_wallet_token
      #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_token
      #
      #   @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken, nil]
      optional :digital_wallet_token, -> { Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken }

      # @!parse
      #   # @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken]
      #   attr_writer :digital_wallet_token

      # @!parse
      #   # @param card_authentication [Increase::Models::RealTimeDecisionActionParams::CardAuthentication]
      #   # @param card_authentication_challenge [Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge]
      #   # @param card_authorization [Increase::Models::RealTimeDecisionActionParams::CardAuthorization]
      #   # @param digital_wallet_authentication [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication]
      #   # @param digital_wallet_token [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     card_authentication: nil,
      #     card_authentication_challenge: nil,
      #     card_authorization: nil,
      #     digital_wallet_authentication: nil,
      #     digital_wallet_token: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class CardAuthentication < Increase::Internal::Type::BaseModel
        # @!attribute decision
        #   #/components/schemas/action_a_real_time_decision_parameters/properties/card_authentication/properties/decision
        #
        #   @return [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision]
        required :decision,
                 enum: -> { Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision }

        # @!parse
        #   # #/components/schemas/action_a_real_time_decision_parameters/properties/card_authentication
        #   #
        #   # @param decision [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision]
        #   #
        #   def initialize(decision:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/action_a_real_time_decision_parameters/properties/card_authentication/properties/decision
        #
        # @see Increase::Models::RealTimeDecisionActionParams::CardAuthentication#decision
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

      class CardAuthenticationChallenge < Increase::Internal::Type::BaseModel
        # @!attribute result
        #   #/components/schemas/action_a_real_time_decision_parameters/properties/card_authentication_challenge/properties/result
        #
        #   @return [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result]
        required :result,
                 enum: -> { Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result }

        # @!parse
        #   # #/components/schemas/action_a_real_time_decision_parameters/properties/card_authentication_challenge
        #   #
        #   # @param result [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result]
        #   #
        #   def initialize(result:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/action_a_real_time_decision_parameters/properties/card_authentication_challenge/properties/result
        #
        # @see Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge#result
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

      class CardAuthorization < Increase::Internal::Type::BaseModel
        # @!attribute decision
        #   #/components/schemas/action_a_real_time_decision_parameters/properties/card_authorization/properties/decision
        #
        #   @return [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision]
        required :decision,
                 enum: -> { Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision }

        # @!attribute [r] decline_reason
        #   #/components/schemas/action_a_real_time_decision_parameters/properties/card_authorization/properties/decline_reason
        #
        #   @return [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason, nil]
        optional :decline_reason,
                 enum: -> { Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason }

        # @!parse
        #   # @return [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason]
        #   attr_writer :decline_reason

        # @!parse
        #   # #/components/schemas/action_a_real_time_decision_parameters/properties/card_authorization
        #   #
        #   # @param decision [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision]
        #   # @param decline_reason [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason]
        #   #
        #   def initialize(decision:, decline_reason: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/action_a_real_time_decision_parameters/properties/card_authorization/properties/decision
        #
        # @see Increase::Models::RealTimeDecisionActionParams::CardAuthorization#decision
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

        # #/components/schemas/action_a_real_time_decision_parameters/properties/card_authorization/properties/decline_reason
        #
        # @see Increase::Models::RealTimeDecisionActionParams::CardAuthorization#decline_reason
        module DeclineReason
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
      end

      class DigitalWalletAuthentication < Increase::Internal::Type::BaseModel
        # @!attribute result
        #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_authentication/properties/result
        #
        #   @return [Symbol, Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result]
        required :result,
                 enum: -> { Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result }

        # @!attribute [r] success
        #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_authentication/properties/success
        #
        #   @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success, nil]
        optional :success,
                 -> { Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success }

        # @!parse
        #   # @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success]
        #   attr_writer :success

        # @!parse
        #   # #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_authentication
        #   #
        #   # @param result [Symbol, Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result]
        #   # @param success [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success]
        #   #
        #   def initialize(result:, success: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_authentication/properties/result
        #
        # @see Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication#result
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

        # @see Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication#success
        class Success < Increase::Internal::Type::BaseModel
          # @!attribute [r] email
          #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_authentication/properties/success/properties/email
          #
          #   @return [String, nil]
          optional :email, String

          # @!parse
          #   # @return [String]
          #   attr_writer :email

          # @!attribute [r] phone
          #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_authentication/properties/success/properties/phone
          #
          #   @return [String, nil]
          optional :phone, String

          # @!parse
          #   # @return [String]
          #   attr_writer :phone

          # @!parse
          #   # #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_authentication/properties/success
          #   #
          #   # @param email [String]
          #   # @param phone [String]
          #   #
          #   def initialize(email: nil, phone: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      class DigitalWalletToken < Increase::Internal::Type::BaseModel
        # @!attribute [r] approval
        #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_token/properties/approval
        #
        #   @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval, nil]
        optional :approval, -> { Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval }

        # @!parse
        #   # @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval]
        #   attr_writer :approval

        # @!attribute [r] decline
        #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_token/properties/decline
        #
        #   @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline, nil]
        optional :decline, -> { Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline }

        # @!parse
        #   # @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline]
        #   attr_writer :decline

        # @!parse
        #   # #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_token
        #   #
        #   # @param approval [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval]
        #   # @param decline [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline]
        #   #
        #   def initialize(approval: nil, decline: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken#approval
        class Approval < Increase::Internal::Type::BaseModel
          # @!attribute [r] email
          #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_token/properties/approval/properties/email
          #
          #   @return [String, nil]
          optional :email, String

          # @!parse
          #   # @return [String]
          #   attr_writer :email

          # @!attribute [r] phone
          #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_token/properties/approval/properties/phone
          #
          #   @return [String, nil]
          optional :phone, String

          # @!parse
          #   # @return [String]
          #   attr_writer :phone

          # @!parse
          #   # #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_token/properties/approval
          #   #
          #   # @param email [String]
          #   # @param phone [String]
          #   #
          #   def initialize(email: nil, phone: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken#decline
        class Decline < Increase::Internal::Type::BaseModel
          # @!attribute [r] reason
          #   #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_token/properties/decline/properties/reason
          #
          #   @return [String, nil]
          optional :reason, String

          # @!parse
          #   # @return [String]
          #   attr_writer :reason

          # @!parse
          #   # #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_token/properties/decline
          #   #
          #   # @param reason [String]
          #   #
          #   def initialize(reason: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
