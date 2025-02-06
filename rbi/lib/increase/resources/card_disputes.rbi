# typed: strong

module Increase
  module Resources
    class CardDisputes
      sig do
        params(
          disputed_transaction_id: String,
          explanation: String,
          amount: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::CardDispute)
      end
      def create(disputed_transaction_id:, explanation:, amount: nil, request_options: {})
      end

      sig do
        params(
          card_dispute_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::CardDispute)
      end
      def retrieve(card_dispute_id, request_options: {})
      end

      sig do
        params(
          created_at: Increase::Models::CardDisputeListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::CardDisputeListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Page[Increase::Models::CardDispute])
      end
      def list(
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
