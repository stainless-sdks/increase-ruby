# frozen_string_literal: true

module Increase
  module Resources
    class RealTimeDecisions
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve a Real-Time Decision
      #
      # @param real_time_decision_id [String] The identifier of the Real-Time Decision.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RealTimeDecision]
      def retrieve(real_time_decision_id, opts = {})
        req = {
          method: :get,
          path: "/real_time_decisions/#{real_time_decision_id}",
          model: Increase::Models::RealTimeDecision
        }
        @client.request(req, opts)
      end

      # Action a Real-Time Decision
      #
      # @param real_time_decision_id [String] The identifier of the Real-Time Decision.
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [CardAuthentication, nil] :card_authentication If the Real-Time Decision relates to a 3DS card authentication attempt, this
      #     object contains your response to the authentication.
      #   @option params [CardAuthenticationChallenge, nil] :card_authentication_challenge If the Real-Time Decision relates to 3DS card authentication challenge delivery,
      #     this object contains your response.
      #   @option params [CardAuthorization, nil] :card_authorization If the Real-Time Decision relates to a card authorization attempt, this object
      #     contains your response to the authorization.
      #   @option params [DigitalWalletAuthentication, nil] :digital_wallet_authentication If the Real-Time Decision relates to a digital wallet authentication attempt,
      #     this object contains your response to the authentication.
      #   @option params [DigitalWalletToken, nil] :digital_wallet_token If the Real-Time Decision relates to a digital wallet token provisioning
      #     attempt, this object contains your response to the attempt.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RealTimeDecision]
      def action(real_time_decision_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/real_time_decisions/#{real_time_decision_id}/action",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::RealTimeDecision
        }
        @client.request(req, opts)
      end
    end
  end
end
