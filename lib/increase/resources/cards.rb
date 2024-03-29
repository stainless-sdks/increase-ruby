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
      # @option params [Hash] :billing_address The card's billing address.
      # @option params [String] :description The description you choose to give the card.
      # @option params [Hash] :digital_wallet The contact information used in the two-factor steps for digital wallet card
      #   creation. To add the card to a digital wallet, you may supply an email or phone
      #   number with this request. Otherwise, subscribe and then action a Real Time
      #   Decision with the category `digital_wallet_token_requested` or
      #   `digital_wallet_authentication_requested`.
      # @option params [String] :entity_id The Entity the card belongs to. You only need to supply this in rare situations
      #   when the card is not for the Account holder.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Card]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/cards"
        body_params = [:account_id, :billing_address, :description, :digital_wallet, :entity_id]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::Card
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a Card
      #
      # @param card_id [String] The identifier of the Card.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Card]
      def retrieve(card_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/cards/#{card_id}"
        request[:model] = Increase::Models::Card
        request.merge!(opts)
        @client.request(request)
      end

      # Update a Card
      #
      # @param card_id [String] The card identifier.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :billing_address The card's updated billing address.
      # @option params [String] :description The description you choose to give the card.
      # @option params [Hash] :digital_wallet The contact information used in the two-factor steps for digital wallet card
      #   creation. At least one field must be present to complete the digital wallet
      #   steps.
      # @option params [String] :entity_id The Entity the card belongs to. You only need to supply this in rare situations
      #   when the card is not for the Account holder.
      # @option params [Symbol] :status The status to update the Card with.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Card]
      def update(card_id, params = {}, opts = {})
        request = {}
        request[:method] = :patch
        request[:path] = "/cards/#{card_id}"
        body_params = [:billing_address, :description, :digital_wallet, :entity_id, :status]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::Card
        request.merge!(opts)
        @client.request(request)
      end

      # List Cards
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Cards to ones belonging to the specified Account.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Card]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/cards"
        query_params = [:account_id, :created_at, :cursor, :idempotency_key, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::Card
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve sensitive details for a Card
      #
      # @param card_id [String] The identifier of the Card to retrieve details for.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardDetails]
      def retrieve_sensitive_details(card_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/cards/#{card_id}/details"
        request[:model] = Increase::Models::CardDetails
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
