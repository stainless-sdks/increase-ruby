# typed: strong

module Increase
  module Resources
    class RealTimeDecisions
      sig do
        params(
          real_time_decision_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::RealTimeDecision)
      end
      def retrieve(real_time_decision_id, request_options: {})
      end

      sig do
        params(
          real_time_decision_id: String,
          card_authentication: Increase::Models::RealTimeDecisionActionParams::CardAuthentication,
          card_authentication_challenge: Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge,
          card_authorization: Increase::Models::RealTimeDecisionActionParams::CardAuthorization,
          digital_wallet_authentication: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication,
          digital_wallet_token: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::RealTimeDecision)
      end
      def action(
        real_time_decision_id,
        card_authentication: nil,
        card_authentication_challenge: nil,
        card_authorization: nil,
        digital_wallet_authentication: nil,
        digital_wallet_token: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
