# typed: strong

module Increase
  module Resources
    class DigitalWalletTokens
      # Retrieve a Digital Wallet Token
      sig do
        params(
          digital_wallet_token_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::DigitalWalletToken)
      end
      def retrieve(
        # #/paths//digital_wallet_tokens/{digital_wallet_token_id}/get/parameters/0/schema
        digital_wallet_token_id,
        request_options: {}
      ); end
      # List Digital Wallet Tokens
      sig do
        params(
          card_id: String,
          created_at: T.any(Increase::Models::DigitalWalletTokenListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::DigitalWalletToken])
      end
      def list(
        # #/paths//digital_wallet_tokens/get/parameters/2/schema
        card_id: nil,
        created_at: nil,
        # #/paths//digital_wallet_tokens/get/parameters/0/schema
        cursor: nil,
        # #/paths//digital_wallet_tokens/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
