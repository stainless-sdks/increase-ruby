# typed: strong

module Increase
  module Models
    class RealTimeDecisionActionParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthentication)) }
      def card_authentication
      end

      sig do
        params(_: Increase::Models::RealTimeDecisionActionParams::CardAuthentication).returns(Increase::Models::RealTimeDecisionActionParams::CardAuthentication)
      end
      def card_authentication=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge)) }
      def card_authentication_challenge
      end

      sig do
        params(_: Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge).returns(Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge)
      end
      def card_authentication_challenge=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthorization)) }
      def card_authorization
      end

      sig do
        params(_: Increase::Models::RealTimeDecisionActionParams::CardAuthorization).returns(Increase::Models::RealTimeDecisionActionParams::CardAuthorization)
      end
      def card_authorization=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication)) }
      def digital_wallet_authentication
      end

      sig do
        params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication).returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication)
      end
      def digital_wallet_authentication=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken)) }
      def digital_wallet_token
      end

      sig do
        params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken).returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken)
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
        ).void
      end
      def initialize(
        card_authentication: nil,
        card_authentication_challenge: nil,
        card_authorization: nil,
        digital_wallet_authentication: nil,
        digital_wallet_token: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
        sig { returns(Symbol) }
        def decision
        end

        sig { params(_: Symbol).returns(Symbol) }
        def decision=(_)
        end

        sig { params(decision: Symbol).void }
        def initialize(decision:)
        end

        sig { override.returns({decision: Symbol}) }
        def to_hash
        end

        class Decision < Increase::Enum
          abstract!

          # Approve the authentication attempt without triggering a challenge.
          APPROVE = :approve

          # Request further validation before approving the authentication attempt.
          CHALLENGE = :challenge

          # Deny the authentication attempt.
          DENY = :deny

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class CardAuthenticationChallenge < Increase::BaseModel
        sig { returns(Symbol) }
        def result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def result=(_)
        end

        sig { params(result: Symbol).void }
        def initialize(result:)
        end

        sig { override.returns({result: Symbol}) }
        def to_hash
        end

        class Result < Increase::Enum
          abstract!

          # Your application successfully delivered the one-time code to the cardholder.
          SUCCESS = :success

          # Your application was unable to deliver the one-time code to the cardholder.
          FAILURE = :failure

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class CardAuthorization < Increase::BaseModel
        sig { returns(Symbol) }
        def decision
        end

        sig { params(_: Symbol).returns(Symbol) }
        def decision=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def decline_reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def decline_reason=(_)
        end

        sig { params(decision: Symbol, decline_reason: Symbol).void }
        def initialize(decision:, decline_reason: nil)
        end

        sig { override.returns({decision: Symbol, decline_reason: Symbol}) }
        def to_hash
        end

        class Decision < Increase::Enum
          abstract!

          # Approve the authorization.
          APPROVE = :approve

          # Decline the authorization.
          DECLINE = :decline

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DeclineReason < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class DigitalWalletAuthentication < Increase::BaseModel
        sig { returns(Symbol) }
        def result
        end

        sig { params(_: Symbol).returns(Symbol) }
        def result=(_)
        end

        sig do
          returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success))
        end
        def success
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success).returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success)
        end
        def success=(_)
        end

        sig do
          params(
            result: Symbol,
            success: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success
          ).void
        end
        def initialize(result:, success: nil)
        end

        sig do
          override.returns(
            {
              result: Symbol,
              success: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success
            }
          )
        end
        def to_hash
        end

        class Result < Increase::Enum
          abstract!

          # Your application successfully delivered the one-time passcode to the cardholder.
          SUCCESS = :success

          # Your application failed to deliver the one-time passcode to the cardholder.
          FAILURE = :failure

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Success < Increase::BaseModel
          sig { returns(T.nilable(String)) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          sig { returns(T.nilable(String)) }
          def phone
          end

          sig { params(_: String).returns(String) }
          def phone=(_)
          end

          sig { params(email: String, phone: String).void }
          def initialize(email: nil, phone: nil)
          end

          sig { override.returns({email: String, phone: String}) }
          def to_hash
          end
        end
      end

      class DigitalWalletToken < Increase::BaseModel
        sig do
          returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval))
        end
        def approval
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval).returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval)
        end
        def approval=(_)
        end

        sig do
          returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline))
        end
        def decline
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline).returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline)
        end
        def decline=(_)
        end

        sig do
          params(
            approval: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval,
            decline: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline
          ).void
        end
        def initialize(approval: nil, decline: nil)
        end

        sig do
          override.returns(
            {
              approval: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval,
              decline: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline
            }
          )
        end
        def to_hash
        end

        class Approval < Increase::BaseModel
          sig { returns(T.nilable(String)) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          sig { returns(T.nilable(String)) }
          def phone
          end

          sig { params(_: String).returns(String) }
          def phone=(_)
          end

          sig { params(email: String, phone: String).void }
          def initialize(email: nil, phone: nil)
          end

          sig { override.returns({email: String, phone: String}) }
          def to_hash
          end
        end

        class Decline < Increase::BaseModel
          sig { returns(T.nilable(String)) }
          def reason
          end

          sig { params(_: String).returns(String) }
          def reason=(_)
          end

          sig { params(reason: String).void }
          def initialize(reason: nil)
          end

          sig { override.returns({reason: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
