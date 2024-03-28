# frozen_string_literal: true

module Increase
  module Resources
    class RealTimeDecisionsResource
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
        request = {}
        request[:method] = :get
        request[:path] = "/real_time_decisions/#{real_time_decision_id}"
        request[:model] = Increase::Models::RealTimeDecision
        request.merge!(opts)
        @client.request(request)
      end

      # Action a Real-Time Decision
      #
      # @param real_time_decision_id [String] The identifier of the Real-Time Decision.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :card_authorization If the Real-Time Decision relates to a card authorization attempt, this object
      #   contains your response to the authorization.
      # @option params [Hash] :digital_wallet_authentication If the Real-Time Decision relates to a digital wallet authentication attempt,
      #   this object contains your response to the authentication.
      # @option params [Hash] :digital_wallet_token If the Real-Time Decision relates to a digital wallet token provisioning
      #   attempt, this object contains your response to the attempt.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RealTimeDecision]
      def action(real_time_decision_id, params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/real_time_decisions/#{real_time_decision_id}/action"
        body_params = [:card_authorization, :digital_wallet_authentication, :digital_wallet_token]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::RealTimeDecision
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
