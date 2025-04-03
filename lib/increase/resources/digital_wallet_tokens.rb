# frozen_string_literal: true

module Increase
  module Resources
    class DigitalWalletTokens
      # Retrieve a Digital Wallet Token
      #
      # @overload retrieve(digital_wallet_token_id, request_options: {})
      #
      # @param digital_wallet_token_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::DigitalWalletToken]
      #
      # @see Increase::Models::DigitalWalletTokenRetrieveParams
      def retrieve(digital_wallet_token_id, params = {})
        @client.request(
          method: :get,
          path: ["digital_wallet_tokens/%1$s", digital_wallet_token_id],
          model: Increase::Models::DigitalWalletToken,
          options: params[:request_options]
        )
      end

      # List Digital Wallet Tokens
      #
      # @overload list(card_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param card_id [String]
      # @param created_at [Increase::Models::DigitalWalletTokenListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::DigitalWalletToken>]
      #
      # @see Increase::Models::DigitalWalletTokenListParams
      def list(params = {})
        parsed, options = Increase::Models::DigitalWalletTokenListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "digital_wallet_tokens",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::DigitalWalletToken,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
