# frozen_string_literal: true

module Increase
  module Resources
    class RealTimeDecisions
      # @api private
      private def initialize_resources; end

      # Retrieve a Real-Time Decision
      #
      # @overload retrieve(real_time_decision_id, request_options: {})
      #
      # @param real_time_decision_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::RealTimeDecision]
      #
      # @see Increase::Models::RealTimeDecisionRetrieveParams
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
      # @overload action(real_time_decision_id, card_authentication: nil, card_authentication_challenge: nil, card_authorization: nil, digital_wallet_authentication: nil, digital_wallet_token: nil, request_options: {})
      #
      # @param real_time_decision_id [String]
      # @param card_authentication [Increase::Models::RealTimeDecisionActionParams::CardAuthentication]
      # @param card_authentication_challenge [Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge]
      # @param card_authorization [Increase::Models::RealTimeDecisionActionParams::CardAuthorization]
      # @param digital_wallet_authentication [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication]
      # @param digital_wallet_token [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::RealTimeDecision]
      #
      # @see Increase::Models::RealTimeDecisionActionParams
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

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
