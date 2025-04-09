# typed: strong

module Increase
  module Resources
    class RealTimeDecisions
      # Retrieve a Real-Time Decision
      sig do
        params(
          real_time_decision_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::RealTimeDecision)
      end
      def retrieve(
        # #/paths//real_time_decisions/{real_time_decision_id}/get/parameters/0/schema
        real_time_decision_id,
        request_options: {}
      ); end
      # Action a Real-Time Decision
      sig do
        params(
          real_time_decision_id: String,
          card_authentication: T.any(Increase::Models::RealTimeDecisionActionParams::CardAuthentication, Increase::Internal::AnyHash),
          card_authentication_challenge: T.any(
            Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge,
            Increase::Internal::AnyHash
          ),
          card_authorization: T.any(Increase::Models::RealTimeDecisionActionParams::CardAuthorization, Increase::Internal::AnyHash),
          digital_wallet_authentication: T.any(
            Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication,
            Increase::Internal::AnyHash
          ),
          digital_wallet_token: T.any(Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::RealTimeDecision)
      end
      def action(
        # #/paths//real_time_decisions/{real_time_decision_id}/action/post/parameters/0/schema
        real_time_decision_id,
        # #/components/schemas/action_a_real_time_decision_parameters/properties/card_authentication
        card_authentication: nil,
        # #/components/schemas/action_a_real_time_decision_parameters/properties/card_authentication_challenge
        card_authentication_challenge: nil,
        # #/components/schemas/action_a_real_time_decision_parameters/properties/card_authorization
        card_authorization: nil,
        # #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_authentication
        digital_wallet_authentication: nil,
        # #/components/schemas/action_a_real_time_decision_parameters/properties/digital_wallet_token
        digital_wallet_token: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
