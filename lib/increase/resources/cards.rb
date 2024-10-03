# frozen_string_literal: true

module Increase
  module Resources
    class Cards
      def initialize(client:)
        @client = client
      end

      # Create a Card
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The Account the card should belong to.
      # @option params [BillingAddress, nil] :billing_address The card's billing address.
      # @option params [String, nil] :description The description you choose to give the card.
      # @option params [DigitalWallet, nil] :digital_wallet The contact information used in the two-factor steps for digital wallet card
      #   creation. To add the card to a digital wallet, you may supply an email or phone
      #   number with this request. Otherwise, subscribe and then action a Real Time
      #   Decision with the category `digital_wallet_token_requested` or
      #   `digital_wallet_authentication_requested`.
      # @option params [String, nil] :entity_id The Entity the card belongs to. You only need to supply this in rare situations
      #   when the card is not for the Account holder.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Card]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/cards",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Card
        }
        @client.request(req, opts)
      end

      # Retrieve a Card
      #
      # @param card_id [String] The identifier of the Card.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Card]
      def retrieve(card_id, opts = {})
        req = {
          method: :get,
          path: "/cards/#{card_id}",
          model: Increase::Models::Card
        }
        @client.request(req, opts)
      end

      # Update a Card
      #
      # @param card_id [String] The card identifier.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [BillingAddress, nil] :billing_address The card's updated billing address.
      # @option params [String, nil] :description The description you choose to give the card.
      # @option params [DigitalWallet, nil] :digital_wallet The contact information used in the two-factor steps for digital wallet card
      #   creation. At least one field must be present to complete the digital wallet
      #   steps.
      # @option params [String, nil] :entity_id The Entity the card belongs to. You only need to supply this in rare situations
      #   when the card is not for the Account holder.
      # @option params [Symbol, Status, nil] :status The status to update the Card with.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Card]
      def update(card_id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/cards/#{card_id}",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::Card
        }
        @client.request(req, opts)
      end

      # List Cards
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Cards to ones belonging to the specified Account.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Card>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/cards",
          query: params,
          page: Increase::Page,
          model: Increase::Models::Card
        }
        @client.request(req, opts)
      end

      # Retrieve sensitive details for a Card
      #
      # @param card_id [String] The identifier of the Card to retrieve details for.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardDetails]
      def details(card_id, opts = {})
        req = {
          method: :get,
          path: "/cards/#{card_id}/details",
          model: Increase::Models::CardDetails
        }
        @client.request(req, opts)
      end
    end
  end
end
