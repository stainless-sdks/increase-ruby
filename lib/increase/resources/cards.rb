# frozen_string_literal: true

module Increase
  module Resources
    class Cards
      # Create a Card
      #
      # @param params [Increase::Models::CardCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id The Account the card should belong to.
      #
      #   @option params [Increase::Models::CardCreateParams::BillingAddress] :billing_address The card's billing address.
      #
      #   @option params [String] :description The description you choose to give the card.
      #
      #   @option params [Increase::Models::CardCreateParams::DigitalWallet] :digital_wallet The contact information used in the two-factor steps for digital wallet card
      #     creation. To add the card to a digital wallet, you may supply an email or phone
      #     number with this request. Otherwise, subscribe and then action a Real Time
      #     Decision with the category `digital_wallet_token_requested` or
      #     `digital_wallet_authentication_requested`.
      #
      #   @option params [String] :entity_id The Entity the card belongs to. You only need to supply this in rare situations
      #     when the card is not for the Account holder.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Card]
      #
      # @see Increase::Models::CardCreateParams
      def create(params)
        parsed, options = Increase::Models::CardCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "cards",
          body: parsed,
          model: Increase::Models::Card,
          options: options
        )
      end

      # Retrieve a Card
      #
      # @param card_id [String] The identifier of the Card.
      #
      # @param params [Increase::Models::CardRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Card]
      #
      # @see Increase::Models::CardRetrieveParams
      def retrieve(card_id, params = {})
        @client.request(
          method: :get,
          path: ["cards/%1$s", card_id],
          model: Increase::Models::Card,
          options: params[:request_options]
        )
      end

      # Update a Card
      #
      # @param card_id [String] The card identifier.
      #
      # @param params [Increase::Models::CardUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::CardUpdateParams::BillingAddress] :billing_address The card's updated billing address.
      #
      #   @option params [String] :description The description you choose to give the card.
      #
      #   @option params [Increase::Models::CardUpdateParams::DigitalWallet] :digital_wallet The contact information used in the two-factor steps for digital wallet card
      #     creation. At least one field must be present to complete the digital wallet
      #     steps.
      #
      #   @option params [String] :entity_id The Entity the card belongs to. You only need to supply this in rare situations
      #     when the card is not for the Account holder.
      #
      #   @option params [Symbol, Increase::Models::CardUpdateParams::Status] :status The status to update the Card with.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Card]
      #
      # @see Increase::Models::CardUpdateParams
      def update(card_id, params = {})
        parsed, options = Increase::Models::CardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["cards/%1$s", card_id],
          body: parsed,
          model: Increase::Models::Card,
          options: options
        )
      end

      # List Cards
      #
      # @param params [Increase::Models::CardListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Cards to ones belonging to the specified Account.
      #
      #   @option params [Increase::Models::CardListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::Models::CardListParams::Status] :status
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::Card>]
      #
      # @see Increase::Models::CardListParams
      def list(params = {})
        parsed, options = Increase::Models::CardListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "cards",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Card,
          options: options
        )
      end

      # Retrieve sensitive details for a Card
      #
      # @param card_id [String] The identifier of the Card to retrieve details for.
      #
      # @param params [Increase::Models::CardDetailsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::CardDetails]
      #
      # @see Increase::Models::CardDetailsParams
      def details(card_id, params = {})
        @client.request(
          method: :get,
          path: ["cards/%1$s/details", card_id],
          model: Increase::Models::CardDetails,
          options: params[:request_options]
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
