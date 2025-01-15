# frozen_string_literal: true

module Increase
  module Resources
    class DigitalWalletTokens
      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Retrieve a Digital Wallet Token
      #
      # @param digital_wallet_token_id [String] The identifier of the Digital Wallet Token.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DigitalWalletToken]
      #
      def retrieve(digital_wallet_token_id, opts = {})
        req = {
          method: :get,
          path: ["digital_wallet_tokens/%0s", digital_wallet_token_id],
          model: Increase::Models::DigitalWalletToken
        }
        @client.request(req, opts)
      end

      # List Digital Wallet Tokens
      #
      # @param params [Increase::Models::DigitalWalletTokenListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :card_id Filter Digital Wallet Tokens to ones belonging to the specified Card.
      #
      #   @option params [Increase::Models::DigitalWalletTokenListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::DigitalWalletToken>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::DigitalWalletTokenListParams.dump(params)
        req = {
          method: :get,
          path: "digital_wallet_tokens",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::DigitalWalletToken
        }
        @client.request(req, opts)
      end
    end
  end
end
