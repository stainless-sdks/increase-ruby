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

      # List Digital Wallet Tokens
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :card_id Filter Digital Wallet Tokens to ones belonging to the specified Card.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::DigitalWalletToken>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/digital_wallet_tokens"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::DigitalWalletToken
        @client.request(req, opts)
      end
    end
  end
end
