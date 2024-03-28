# frozen_string_literal: true

module Increase
  module Resources
    module Simulations
      class DigitalWalletTokenRequestsResource
        def initialize(client:)
          @client = client
        end

        # Simulates a user attempting add a [Card](#cards) to a digital wallet such as
        #   Apple Pay.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :card_id The identifier of the Card to be authorized.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::DigitalWalletTokenRequestCreateResponse]
        def create(params = {}, opts = {})
          request = {}
          request[:method] = :post
          request[:path] = "/simulations/digital_wallet_token_requests"
          body_params = [:card_id]
          request[:body] = params.filter { |k, _| body_params.include?(k) }
          request[:model] = Increase::Models::DigitalWalletTokenRequestCreateResponse
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
