# frozen_string_literal: true

module Increase
  module Resources
    class DigitalWalletTokens
      def initialize(client:)
        @client = client
      end

      # Retrieve a Digital Wallet Token
      #
      # @param digital_wallet_token_id [String] The identifier of the Digital Wallet Token.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DigitalWalletToken]
      def retrieve(digital_wallet_token_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/digital_wallet_tokens/#{digital_wallet_token_id}"
        request[:model] = Increase::Models::DigitalWalletToken
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
