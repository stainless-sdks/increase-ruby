# frozen_string_literal: true

module Increase
  module Resources
    class RealTimeDecisions
      # Retrieve a Real-Time Decision
      #
      # @param real_time_decision_id [String] The identifier of the Real-Time Decision.
      #
      # @param params [Increase::Models::RealTimeDecisionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::RealTimeDecision]
      def retrieve(real_time_decision_id, params = {})
        @client.request(
          method: :get,
          path: ["real_time_decisions/%1$s", real_time_decision_id],
          model: Increase::Models::RealTimeDecision,
          options: params[:request_options]
        )
      end

      # Action a Real-Time Decision
      #
      # @param real_time_decision_id [String] The identifier of the Real-Time Decision.
      #
      # @param params [Increase::Models::RealTimeDecisionActionParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::RealTimeDecisionActionParams::CardAuthentication] :card_authentication If the Real-Time Decision relates to a 3DS card authentication attempt, this
      #     object contains your response to the authentication.
      #
      #   @option params [Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge] :card_authentication_challenge If the Real-Time Decision relates to 3DS card authentication challenge delivery,
      #     this object contains your response.
      #
      #   @option params [Increase::Models::RealTimeDecisionActionParams::CardAuthorization] :card_authorization If the Real-Time Decision relates to a card authorization attempt, this object
      #     contains your response to the authorization.
      #
      #   @option params [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication] :digital_wallet_authentication If the Real-Time Decision relates to a digital wallet authentication attempt,
      #     this object contains your response to the authentication.
      #
      #   @option params [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken] :digital_wallet_token If the Real-Time Decision relates to a digital wallet token provisioning
      #     attempt, this object contains your response to the attempt.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::RealTimeDecision]
      def action(real_time_decision_id, params = {})
        parsed, options = Increase::Models::RealTimeDecisionActionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["real_time_decisions/%1$s/action", real_time_decision_id],
          body: parsed,
          model: Increase::Models::RealTimeDecision,
          options: options
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
