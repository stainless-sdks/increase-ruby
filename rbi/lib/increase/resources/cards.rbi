# typed: strong

module Increase
  module Resources
    class Cards
      # Create a Card
      sig do
        params(
          account_id: String,
          billing_address: T.any(Increase::Models::CardCreateParams::BillingAddress, Increase::Internal::AnyHash),
          description: String,
          digital_wallet: T.any(Increase::Models::CardCreateParams::DigitalWallet, Increase::Internal::AnyHash),
          entity_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Card)
      end
      def create(
        # #/components/schemas/create_a_card_parameters/properties/account_id
        account_id:,
        # #/components/schemas/create_a_card_parameters/properties/billing_address
        billing_address: nil,
        # #/components/schemas/create_a_card_parameters/properties/description
        description: nil,
        # #/components/schemas/create_a_card_parameters/properties/digital_wallet
        digital_wallet: nil,
        # #/components/schemas/create_a_card_parameters/properties/entity_id
        entity_id: nil,
        request_options: {}
      ); end
      # Retrieve a Card
      sig do
        params(
          card_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Card)
      end
      def retrieve(
        # #/paths//cards/{card_id}/get/parameters/0/schema
        card_id,
        request_options: {}
      ); end
      # Update a Card
      sig do
        params(
          card_id: String,
          billing_address: T.any(Increase::Models::CardUpdateParams::BillingAddress, Increase::Internal::AnyHash),
          description: String,
          digital_wallet: T.any(Increase::Models::CardUpdateParams::DigitalWallet, Increase::Internal::AnyHash),
          entity_id: String,
          status: Increase::Models::CardUpdateParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::Card)
      end
      def update(
        # #/paths//cards/{card_id}/patch/parameters/0/schema
        card_id,
        # #/components/schemas/update_a_card_parameters/properties/billing_address
        billing_address: nil,
        # #/components/schemas/update_a_card_parameters/properties/description
        description: nil,
        # #/components/schemas/update_a_card_parameters/properties/digital_wallet
        digital_wallet: nil,
        # #/components/schemas/update_a_card_parameters/properties/entity_id
        entity_id: nil,
        # #/components/schemas/update_a_card_parameters/properties/status
        status: nil,
        request_options: {}
      ); end
      # List Cards
      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::CardListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::CardListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::Card])
      end
      def list(
        # #/paths//cards/get/parameters/2/schema
        account_id: nil,
        created_at: nil,
        # #/paths//cards/get/parameters/0/schema
        cursor: nil,
        # #/paths//cards/get/parameters/8/schema
        idempotency_key: nil,
        # #/paths//cards/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # Retrieve sensitive details for a Card
      sig do
        params(
          card_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CardDetails)
      end
      def details(
        # #/paths//cards/{card_id}/details/get/parameters/0/schema
        card_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
