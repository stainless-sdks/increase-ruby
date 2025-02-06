# typed: strong

module Increase
  module Models
    class RealTimeDecisionActionParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthentication)) }
      attr_reader :card_authentication

      sig do
        params(card_authentication: Increase::Models::RealTimeDecisionActionParams::CardAuthentication).void
      end
      attr_writer :card_authentication

      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge)) }
      attr_reader :card_authentication_challenge

      sig do
        params(
          card_authentication_challenge: Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge
        ).void
      end
      attr_writer :card_authentication_challenge

      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthorization)) }
      attr_reader :card_authorization

      sig do
        params(card_authorization: Increase::Models::RealTimeDecisionActionParams::CardAuthorization).void
      end
      attr_writer :card_authorization

      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication)) }
      attr_reader :digital_wallet_authentication

      sig do
        params(
          digital_wallet_authentication: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication
        ).void
      end
      attr_writer :digital_wallet_authentication

      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken)) }
      attr_reader :digital_wallet_token

      sig do
        params(digital_wallet_token: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken).void
      end
      attr_writer :digital_wallet_token

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
        attr_accessor :decision

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
        attr_accessor :result

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
        attr_accessor :decision

        sig { returns(T.nilable(Symbol)) }
        attr_reader :decline_reason

        sig { params(decline_reason: Symbol).void }
        attr_writer :decline_reason

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
        attr_accessor :result

        sig do
          returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success))
        end
        attr_reader :success

        sig do
          params(success: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success).void
        end
        attr_writer :success

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
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          sig { returns(T.nilable(String)) }
          attr_reader :phone

          sig { params(phone: String).void }
          attr_writer :phone

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
        attr_reader :approval

        sig do
          params(approval: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval).void
        end
        attr_writer :approval

        sig do
          returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline))
        end
        attr_reader :decline

        sig do
          params(decline: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline).void
        end
        attr_writer :decline

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
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          sig { returns(T.nilable(String)) }
          attr_reader :phone

          sig { params(phone: String).void }
          attr_writer :phone

          sig { params(email: String, phone: String).void }
          def initialize(email: nil, phone: nil)
          end

          sig { override.returns({email: String, phone: String}) }
          def to_hash
          end
        end

        class Decline < Increase::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :reason

          sig { params(reason: String).void }
          attr_writer :reason

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
