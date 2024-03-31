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
        req = {}
        req[:method] = :get
        req[:path] = "/digital_wallet_tokens/#{digital_wallet_token_id}"
        req[:model] = Increase::Models::DigitalWalletToken
        @client.request(req, opts)
      end
    end
  end
end
