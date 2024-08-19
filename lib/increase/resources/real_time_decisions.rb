# frozen_string_literal: true

module Increase
  module Resources
    class RealTimeDecisions
      def initialize(client:)
        @client = client
      end

      # Retrieve a Real-Time Decision
      # 
      # @param real_time_decision_id [String] The identifier of the Real-Time Decision.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::RealTimeDecision]
      def retrieve(real_time_decision_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/real_time_decisions/#{real_time_decision_id}"
        req[:model] = Increase::Models::RealTimeDecision
        @client.request(req, opts)
      end

      # Action a Real-Time Decision
      # 
      # @param real_time_decision_id [String] The identifier of the Real-Time Decision.
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [CardAuthorization] :card_authorization If the Real-Time Decision relates to a card authorization attempt, this object
      #   contains your response to the authorization.
      # @option params [DigitalWalletAuthentication] :digital_wallet_authentication If the Real-Time Decision relates to a digital wallet authentication attempt,
      #   this object contains your response to the authentication.
      # @option params [DigitalWalletToken] :digital_wallet_token If the Real-Time Decision relates to a digital wallet token provisioning
      #   attempt, this object contains your response to the attempt.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::RealTimeDecision]
      def action(real_time_decision_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/real_time_decisions/#{real_time_decision_id}/action"
        req[:body] = params
        req[:model] = Increase::Models::RealTimeDecision
        @client.request(req, opts)
      end
    end
  end
end
