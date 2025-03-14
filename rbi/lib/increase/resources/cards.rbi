# typed: strong

module Increase
  module Resources
    class Cards
      # Create a Card
      sig do
        params(
          account_id: String,
          billing_address: Increase::Models::CardCreateParams::BillingAddress,
          description: String,
          digital_wallet: Increase::Models::CardCreateParams::DigitalWallet,
          entity_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Card)
      end
      def create(
        account_id:,
        billing_address: nil,
        description: nil,
        digital_wallet: nil,
        entity_id: nil,
        request_options: {}
      )
      end

      # Retrieve a Card
      sig do
        params(
          card_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Card)
      end
      def retrieve(card_id, request_options: {})
      end

      # Update a Card
      sig do
        params(
          card_id: String,
          billing_address: Increase::Models::CardUpdateParams::BillingAddress,
          description: String,
          digital_wallet: Increase::Models::CardUpdateParams::DigitalWallet,
          entity_id: String,
          status: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Card)
      end
      def update(
        card_id,
        billing_address: nil,
        description: nil,
        digital_wallet: nil,
        entity_id: nil,
        status: nil,
        request_options: {}
      )
      end

      # List Cards
      sig do
        params(
          account_id: String,
          created_at: Increase::Models::CardListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::CardListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::Card])
      end
      def list(
        account_id: nil,
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      # Retrieve sensitive details for a Card
      sig do
        params(
          card_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::CardDetails)
      end
      def details(card_id, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
