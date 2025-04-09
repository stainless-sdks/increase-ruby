# typed: strong

module Increase
  module Resources
    class PhysicalCards
      # Create a Physical Card
      sig do
        params(
          card_id: String,
          cardholder: T.any(Increase::Models::PhysicalCardCreateParams::Cardholder, Increase::Internal::AnyHash),
          shipment: T.any(Increase::Models::PhysicalCardCreateParams::Shipment, Increase::Internal::AnyHash),
          physical_card_profile_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::PhysicalCard)
      end
      def create(
        # #/components/schemas/create_a_physical_card_parameters/properties/card_id
        card_id:,
        # #/components/schemas/create_a_physical_card_parameters/properties/cardholder
        cardholder:,
        # #/components/schemas/create_a_physical_card_parameters/properties/shipment
        shipment:,
        # #/components/schemas/create_a_physical_card_parameters/properties/physical_card_profile_id
        physical_card_profile_id: nil,
        request_options: {}
      ); end
      # Retrieve a Physical Card
      sig do
        params(
          physical_card_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::PhysicalCard)
      end
      def retrieve(
        # #/paths//physical_cards/{physical_card_id}/get/parameters/0/schema
        physical_card_id,
        request_options: {}
      ); end
      # Update a Physical Card
      sig do
        params(
          physical_card_id: String,
          status: Increase::Models::PhysicalCardUpdateParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::PhysicalCard)
      end
      def update(
        # #/paths//physical_cards/{physical_card_id}/patch/parameters/0/schema
        physical_card_id,
        # #/components/schemas/update_a_physical_card_parameters/properties/status
        status:,
        request_options: {}
      ); end
      # List Physical Cards
      sig do
        params(
          card_id: String,
          created_at: T.any(Increase::Models::PhysicalCardListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::PhysicalCard])
      end
      def list(
        # #/paths//physical_cards/get/parameters/2/schema
        card_id: nil,
        created_at: nil,
        # #/paths//physical_cards/get/parameters/0/schema
        cursor: nil,
        # #/paths//physical_cards/get/parameters/7/schema
        idempotency_key: nil,
        # #/paths//physical_cards/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
