# typed: strong

module Increase
  module Resources
    class CardDisputes
      # Create a Card Dispute
      sig do
        params(
          disputed_transaction_id: String,
          explanation: String,
          amount: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CardDispute)
      end
      def create(
        # #/components/schemas/create_a_card_dispute_parameters/properties/disputed_transaction_id
        disputed_transaction_id:,
        # #/components/schemas/create_a_card_dispute_parameters/properties/explanation
        explanation:,
        # #/components/schemas/create_a_card_dispute_parameters/properties/amount
        amount: nil,
        request_options: {}
      ); end
      # Retrieve a Card Dispute
      sig do
        params(
          card_dispute_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CardDispute)
      end
      def retrieve(
        # #/paths//card_disputes/{card_dispute_id}/get/parameters/0/schema
        card_dispute_id,
        request_options: {}
      ); end
      # List Card Disputes
      sig do
        params(
          created_at: T.any(Increase::Models::CardDisputeListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::CardDisputeListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::CardDispute])
      end
      def list(
        created_at: nil,
        # #/paths//card_disputes/get/parameters/0/schema
        cursor: nil,
        # #/paths//card_disputes/get/parameters/7/schema
        idempotency_key: nil,
        # #/paths//card_disputes/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
