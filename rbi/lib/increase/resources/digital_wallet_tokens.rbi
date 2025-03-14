# typed: strong

module Increase
  module Resources
    class DigitalWalletTokens
      sig do
        params(
          digital_wallet_token_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::DigitalWalletToken)
      end
      def retrieve(digital_wallet_token_id, request_options: {})
      end

      sig do
        params(
          card_id: String,
          created_at: Increase::Models::DigitalWalletTokenListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::DigitalWalletToken])
      end
      def list(card_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
