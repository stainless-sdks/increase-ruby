# typed: strong

module Increase
  module Resources
    class PhysicalCards
      sig do
        params(
          card_id: String,
          cardholder: Increase::Models::PhysicalCardCreateParams::Cardholder,
          shipment: Increase::Models::PhysicalCardCreateParams::Shipment,
          physical_card_profile_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::PhysicalCard)
      end
      def create(card_id:, cardholder:, shipment:, physical_card_profile_id: nil, request_options: {})
      end

      sig do
        params(
          physical_card_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::PhysicalCard)
      end
      def retrieve(physical_card_id, request_options: {})
      end

      sig do
        params(
          physical_card_id: String,
          status: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::PhysicalCard)
      end
      def update(physical_card_id, status:, request_options: {})
      end

      sig do
        params(
          card_id: String,
          created_at: Increase::Models::PhysicalCardListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Page[Increase::Models::PhysicalCard])
      end
      def list(
        card_id: nil,
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
