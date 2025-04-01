# frozen_string_literal: true

module Increase
  module Resources
    class DigitalWalletTokens
      # Retrieve a Digital Wallet Token
      #
      # @param digital_wallet_token_id [String] The identifier of the Digital Wallet Token.
      #
      # @param params [Increase::Models::DigitalWalletTokenRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
      # @param params [Increase::Models::DigitalWalletTokenListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::DigitalWalletToken>]
      #
      # @see Increase::Models::DigitalWalletTokenListParams
      def list(params = {})
        parsed, options = Increase::Models::DigitalWalletTokenListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "digital_wallet_tokens",
          query: parsed,
          page: Increase::Page,
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
