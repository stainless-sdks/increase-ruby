# typed: strong

module Increase
  module Models
    class RealTimeDecisionActionParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # If the Real-Time Decision relates to a 3DS card authentication attempt, this
      #   object contains your response to the authentication.
      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthentication)) }
      def card_authentication
      end

      sig do
        params(_: Increase::Models::RealTimeDecisionActionParams::CardAuthentication)
          .returns(Increase::Models::RealTimeDecisionActionParams::CardAuthentication)
      end
      def card_authentication=(_)
      end

      # If the Real-Time Decision relates to 3DS card authentication challenge delivery,
      #   this object contains your response.
      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge)) }
      def card_authentication_challenge
      end

      sig do
        params(_: Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge)
          .returns(Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge)
      end
      def card_authentication_challenge=(_)
      end

      # If the Real-Time Decision relates to a card authorization attempt, this object
      #   contains your response to the authorization.
      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthorization)) }
      def card_authorization
      end

      sig do
        params(_: Increase::Models::RealTimeDecisionActionParams::CardAuthorization)
          .returns(Increase::Models::RealTimeDecisionActionParams::CardAuthorization)
      end
      def card_authorization=(_)
      end

      # If the Real-Time Decision relates to a digital wallet authentication attempt,
      #   this object contains your response to the authentication.
      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication)) }
      def digital_wallet_authentication
      end

      sig do
        params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication)
          .returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication)
      end
      def digital_wallet_authentication=(_)
      end

      # If the Real-Time Decision relates to a digital wallet token provisioning
      #   attempt, this object contains your response to the attempt.
      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken)) }
      def digital_wallet_token
      end

      sig do
        params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken)
          .returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken)
      end
      def digital_wallet_token=(_)
      end

      sig do
        params(
          card_authentication: Increase::Models::RealTimeDecisionActionParams::CardAuthentication,
          card_authentication_challenge: Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge,
          card_authorization: Increase::Models::RealTimeDecisionActionParams::CardAuthorization,
          digital_wallet_authentication: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication,
          digital_wallet_token: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        card_authentication: nil,
        card_authentication_challenge: nil,
        card_authorization: nil,
        digital_wallet_authentication: nil,
        digital_wallet_token: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              card_authentication: Increase::Models::RealTimeDecisionActionParams::CardAuthentication,
              card_authentication_challenge: Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge,
              card_authorization: Increase::Models::RealTimeDecisionActionParams::CardAuthorization,
              digital_wallet_authentication: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication,
              digital_wallet_token: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class CardAuthentication < Increase::BaseModel
        # Whether the card authentication attempt should be approved or declined.
        sig { returns(Symbol) }
        def decision
        end

        sig { params(_: Symbol).returns(Symbol) }
        def decision=(_)
        end

        # If the Real-Time Decision relates to a 3DS card authentication attempt, this
        #   object contains your response to the authentication.
        sig { params(decision: Symbol).returns(T.attached_class) }
        def self.new(decision:)
        end

        sig { override.returns({decision: Symbol}) }
        def to_hash
        end

        # Whether the card authentication attempt should be approved or declined.
        class Decision < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # Approve the authentication attempt without triggering a challenge.
          APPROVE = :approve

          # Request further validation before approving the authentication attempt.
          CHALLENGE = :challenge

          # Deny the authentication attempt.
          DENY = :deny
        end
      end

      class CardAuthenticationChallenge < Increase::BaseModel
        # Whether the card authentication challenge was successfully delivered to the
        #   cardholder.
        sig { returns(Symbol) }
        def result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def result=(_)
        end

        # If the Real-Time Decision relates to 3DS card authentication challenge delivery,
        #   this object contains your response.
        sig { params(result: Symbol).returns(T.attached_class) }
        def self.new(result:)
        end

        sig { override.returns({result: Symbol}) }
        def to_hash
        end

        # Whether the card authentication challenge was successfully delivered to the
        #   cardholder.
        class Result < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # Your application successfully delivered the one-time code to the cardholder.
          SUCCESS = :success

          # Your application was unable to deliver the one-time code to the cardholder.
          FAILURE = :failure
        end
      end

      class CardAuthorization < Increase::BaseModel
        # Whether the card authorization should be approved or declined.
        sig { returns(Symbol) }
        def decision
        end

        sig { params(_: Symbol).returns(Symbol) }
        def decision=(_)
        end

        # The reason the card authorization was declined. This translates to a specific
        #   decline code that is sent to the card network.
        sig { returns(T.nilable(Symbol)) }
        def decline_reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def decline_reason=(_)
        end

        # If the Real-Time Decision relates to a card authorization attempt, this object
        #   contains your response to the authorization.
        sig { params(decision: Symbol, decline_reason: Symbol).returns(T.attached_class) }
        def self.new(decision:, decline_reason: nil)
        end

        sig { override.returns({decision: Symbol, decline_reason: Symbol}) }
        def to_hash
        end

        # Whether the card authorization should be approved or declined.
        class Decision < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # Approve the authorization.
          APPROVE = :approve

          # Decline the authorization.
          DECLINE = :decline
        end

        # The reason the card authorization was declined. This translates to a specific
        #   decline code that is sent to the card network.
        class DeclineReason < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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
        end
      end

      class DigitalWalletAuthentication < Increase::BaseModel
        # Whether your application was able to deliver the one-time passcode.
        sig { returns(Symbol) }
        def result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def result=(_)
        end

        sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success)) }
        def success
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success)
            .returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success)
        end
        def success=(_)
        end

        # If the Real-Time Decision relates to a digital wallet authentication attempt,
        #   this object contains your response to the authentication.
        sig do
          params(
            result: Symbol,
            success: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success
          )
            .returns(T.attached_class)
        end
        def self.new(result:, success: nil)
        end

        sig do
          override
            .returns(
              {
                result: Symbol,
                success: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success
              }
            )
        end
        def to_hash
        end

        # Whether your application was able to deliver the one-time passcode.
        class Result < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # Your application successfully delivered the one-time passcode to the cardholder.
          SUCCESS = :success

          # Your application failed to deliver the one-time passcode to the cardholder.
          FAILURE = :failure
        end

        class Success < Increase::BaseModel
          # The email address that was used to verify the cardholder via one-time passcode.
          sig { returns(T.nilable(String)) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          # The phone number that was used to verify the cardholder via one-time passcode
          #   over SMS.
          sig { returns(T.nilable(String)) }
          def phone
          end

          sig { params(_: String).returns(String) }
          def phone=(_)
          end

          sig { params(email: String, phone: String).returns(T.attached_class) }
          def self.new(email: nil, phone: nil)
          end

          sig { override.returns({email: String, phone: String}) }
          def to_hash
          end
        end
      end

      class DigitalWalletToken < Increase::BaseModel
        # If your application approves the provisioning attempt, this contains metadata
        #   about the digital wallet token that will be generated.
        sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval)) }
        def approval
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval)
            .returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval)
        end
        def approval=(_)
        end

        # If your application declines the provisioning attempt, this contains details
        #   about the decline.
        sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline)) }
        def decline
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline)
            .returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline)
        end
        def decline=(_)
        end

        # If the Real-Time Decision relates to a digital wallet token provisioning
        #   attempt, this object contains your response to the attempt.
        sig do
          params(
            approval: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval,
            decline: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline
          )
            .returns(T.attached_class)
        end
        def self.new(approval: nil, decline: nil)
        end

        sig do
          override
            .returns(
              {
                approval: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval,
                decline: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline
              }
            )
        end
        def to_hash
        end

        class Approval < Increase::BaseModel
          # An email address that can be used to verify the cardholder via one-time
          #   passcode.
          sig { returns(T.nilable(String)) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          # A phone number that can be used to verify the cardholder via one-time passcode
          #   over SMS.
          sig { returns(T.nilable(String)) }
          def phone
          end

          sig { params(_: String).returns(String) }
          def phone=(_)
          end

          # If your application approves the provisioning attempt, this contains metadata
          #   about the digital wallet token that will be generated.
          sig { params(email: String, phone: String).returns(T.attached_class) }
          def self.new(email: nil, phone: nil)
          end

          sig { override.returns({email: String, phone: String}) }
          def to_hash
          end
        end

        class Decline < Increase::BaseModel
          # Why the tokenization attempt was declined. This is for logging purposes only and
          #   is not displayed to the end-user.
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: String).returns(String) }
          def reason=(_)
          end

          # If your application declines the provisioning attempt, this contains details
          #   about the decline.
          sig { params(reason: String).returns(T.attached_class) }
          def self.new(reason: nil)
          end

          sig { override.returns({reason: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
