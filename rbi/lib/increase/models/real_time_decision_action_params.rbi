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
        params(
          _: T.any(Increase::Models::RealTimeDecisionActionParams::CardAuthentication, Increase::Util::AnyHash)
        )
          .returns(
            T.any(Increase::Models::RealTimeDecisionActionParams::CardAuthentication, Increase::Util::AnyHash)
          )
      end
      def card_authentication=(_)
      end

      # If the Real-Time Decision relates to 3DS card authentication challenge delivery,
      #   this object contains your response.
      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge)) }
      def card_authentication_challenge
      end

      sig do
        params(
          _: T.any(
            Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge,
            Increase::Util::AnyHash
          )
        )
          .returns(
            T.any(
              Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge,
              Increase::Util::AnyHash
            )
          )
      end
      def card_authentication_challenge=(_)
      end

      # If the Real-Time Decision relates to a card authorization attempt, this object
      #   contains your response to the authorization.
      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthorization)) }
      def card_authorization
      end

      sig do
        params(
          _: T.any(Increase::Models::RealTimeDecisionActionParams::CardAuthorization, Increase::Util::AnyHash)
        )
          .returns(T.any(Increase::Models::RealTimeDecisionActionParams::CardAuthorization, Increase::Util::AnyHash))
      end
      def card_authorization=(_)
      end

      # If the Real-Time Decision relates to a digital wallet authentication attempt,
      #   this object contains your response to the authentication.
      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication)) }
      def digital_wallet_authentication
      end

      sig do
        params(
          _: T.any(
            Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication,
            Increase::Util::AnyHash
          )
        )
          .returns(
            T.any(
              Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication,
              Increase::Util::AnyHash
            )
          )
      end
      def digital_wallet_authentication=(_)
      end

      # If the Real-Time Decision relates to a digital wallet token provisioning
      #   attempt, this object contains your response to the attempt.
      sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken)) }
      def digital_wallet_token
      end

      sig do
        params(
          _: T.any(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken, Increase::Util::AnyHash)
        )
          .returns(
            T.any(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken, Increase::Util::AnyHash)
          )
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
        sig { returns(Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision::OrSymbol) }
        def decision
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision::OrSymbol)
            .returns(Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision::OrSymbol)
        end
        def decision=(_)
        end

        # If the Real-Time Decision relates to a 3DS card authentication attempt, this
        #   object contains your response to the authentication.
        sig do
          params(decision: Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(decision:)
        end

        sig do
          override
            .returns(
              {decision: Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision::OrSymbol}
            )
        end
        def to_hash
        end

        # Whether the card authentication attempt should be approved or declined.
        module Decision
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision::TaggedSymbol) }

          # Approve the authentication attempt without triggering a challenge.
          APPROVE =
            T.let(:approve, Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision::OrSymbol)

          # Request further validation before approving the authentication attempt.
          CHALLENGE =
            T.let(:challenge, Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision::OrSymbol)

          # Deny the authentication attempt.
          DENY =
            T.let(:deny, Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision::OrSymbol)
        end
      end

      class CardAuthenticationChallenge < Increase::BaseModel
        # Whether the card authentication challenge was successfully delivered to the
        #   cardholder.
        sig { returns(Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result::OrSymbol) }
        def result
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result::OrSymbol)
            .returns(Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result::OrSymbol)
        end
        def result=(_)
        end

        # If the Real-Time Decision relates to 3DS card authentication challenge delivery,
        #   this object contains your response.
        sig do
          params(
            result: Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(result:)
        end

        sig do
          override
            .returns(
              {result: Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result::OrSymbol}
            )
        end
        def to_hash
        end

        # Whether the card authentication challenge was successfully delivered to the
        #   cardholder.
        module Result
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result::TaggedSymbol
              )
            end

          # Your application successfully delivered the one-time code to the cardholder.
          SUCCESS =
            T.let(
              :success,
              Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result::OrSymbol
            )

          # Your application was unable to deliver the one-time code to the cardholder.
          FAILURE =
            T.let(
              :failure,
              Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result::OrSymbol
            )
        end
      end

      class CardAuthorization < Increase::BaseModel
        # Whether the card authorization should be approved or declined.
        sig { returns(Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision::OrSymbol) }
        def decision
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision::OrSymbol)
            .returns(Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision::OrSymbol)
        end
        def decision=(_)
        end

        # The reason the card authorization was declined. This translates to a specific
        #   decline code that is sent to the card network.
        sig do
          returns(
            T.nilable(Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol)
          )
        end
        def decline_reason
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol)
            .returns(Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol)
        end
        def decline_reason=(_)
        end

        # If the Real-Time Decision relates to a card authorization attempt, this object
        #   contains your response to the authorization.
        sig do
          params(
            decision: Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision::OrSymbol,
            decline_reason: Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(decision:, decline_reason: nil)
        end

        sig do
          override
            .returns(
              {
                decision: Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision::OrSymbol,
                decline_reason: Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol
              }
            )
        end
        def to_hash
        end

        # Whether the card authorization should be approved or declined.
        module Decision
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision::TaggedSymbol) }

          # Approve the authorization.
          APPROVE =
            T.let(:approve, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision::OrSymbol)

          # Decline the authorization.
          DECLINE =
            T.let(:decline, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision::OrSymbol)
        end

        # The reason the card authorization was declined. This translates to a specific
        #   decline code that is sent to the card network.
        module DeclineReason
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::TaggedSymbol
              )
            end

          # The cardholder does not have sufficient funds to cover the transaction. The merchant may attempt to process the transaction again.
          INSUFFICIENT_FUNDS =
            T.let(
              :insufficient_funds,
              Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol
            )

          # This type of transaction is not allowed for this card. This transaction should not be retried.
          TRANSACTION_NEVER_ALLOWED =
            T.let(
              :transaction_never_allowed,
              Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol
            )

          # The transaction amount exceeds the cardholder's approval limit. The merchant may attempt to process the transaction again.
          EXCEEDS_APPROVAL_LIMIT =
            T.let(
              :exceeds_approval_limit,
              Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol
            )

          # The card has been temporarily disabled or not yet activated. The merchant may attempt to process the transaction again.
          CARD_TEMPORARILY_DISABLED =
            T.let(
              :card_temporarily_disabled,
              Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol
            )

          # The transaction is suspected to be fraudulent. The merchant may attempt to process the transaction again.
          SUSPECTED_FRAUD =
            T.let(
              :suspected_fraud,
              Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol
            )

          # The transaction was declined for another reason. The merchant may attempt to process the transaction again. This should be used sparingly.
          OTHER =
            T.let(:other, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason::OrSymbol)
        end
      end

      class DigitalWalletAuthentication < Increase::BaseModel
        # Whether your application was able to deliver the one-time passcode.
        sig { returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result::OrSymbol) }
        def result
        end

        sig do
          params(_: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result::OrSymbol)
            .returns(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result::OrSymbol)
        end
        def result=(_)
        end

        sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success)) }
        def success
        end

        sig do
          params(
            _: T.any(
              Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success,
              Increase::Util::AnyHash
            )
          )
            .returns(
              T.any(
                Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success,
                Increase::Util::AnyHash
              )
            )
        end
        def success=(_)
        end

        # If the Real-Time Decision relates to a digital wallet authentication attempt,
        #   this object contains your response to the authentication.
        sig do
          params(
            result: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result::OrSymbol,
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
                result: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result::OrSymbol,
                success: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success
              }
            )
        end
        def to_hash
        end

        # Whether your application was able to deliver the one-time passcode.
        module Result
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result::TaggedSymbol
              )
            end

          # Your application successfully delivered the one-time passcode to the cardholder.
          SUCCESS =
            T.let(
              :success,
              Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result::OrSymbol
            )

          # Your application failed to deliver the one-time passcode to the cardholder.
          FAILURE =
            T.let(
              :failure,
              Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result::OrSymbol
            )
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
          params(
            _: T.any(
              Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval,
              Increase::Util::AnyHash
            )
          )
            .returns(
              T.any(
                Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval,
                Increase::Util::AnyHash
              )
            )
        end
        def approval=(_)
        end

        # If your application declines the provisioning attempt, this contains details
        #   about the decline.
        sig { returns(T.nilable(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline)) }
        def decline
        end

        sig do
          params(
            _: T.any(
              Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline,
              Increase::Util::AnyHash
            )
          )
            .returns(
              T.any(
                Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline,
                Increase::Util::AnyHash
              )
            )
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
