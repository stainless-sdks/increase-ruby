# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class Cards
        def initialize(client:)
          @client = client
        end

        # Simulates a purchase authorization on a [Card](#cards). Depending on the balance
        #   available to the card and the `amount` submitted, the authorization activity
        #   will result in a [Pending Transaction](#pending-transactions) of type
        #   `card_authorization` or a [Declined Transaction](#declined-transactions) of type
        #   `card_decline`. You can pass either a Card id or a
        #   [Digital Wallet Token](#digital-wallet-tokens) id to simulate the two different
        #   ways purchases can be made.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [Integer] :amount The authorization amount in cents.
        # @option params [String] :card_id The identifier of the Card to be authorized.
        # @option params [String] :digital_wallet_token_id The identifier of the Digital Wallet Token to be authorized.
        # @option params [String] :event_subscription_id The identifier of the Event Subscription to use. If provided, will override the
        #   default real time event subscription. Because you can only create one real time
        #   decision event subscription, you can use this field to route events to any
        #   specified event subscription for testing purposes.
        # @option params [String] :merchant_acceptor_id The merchant identifier (commonly abbreviated as MID) of the merchant the card
        #   is transacting with.
        # @option params [String] :merchant_category_code The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
        #   card is transacting with.
        # @option params [String] :merchant_city The city the merchant resides in.
        # @option params [String] :merchant_country The country the merchant resides in.
        # @option params [String] :merchant_descriptor The merchant descriptor of the merchant the card is transacting with.
        # @option params [String] :physical_card_id The identifier of the Physical Card to be authorized.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::CardAuthorizationSimulation]
        def authorize(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/card_authorizations"
          req[:body] = params
          req[:model] = Increase::Models::CardAuthorizationSimulation
          @client.request(req, opts)
        end

        # Simulates the settlement of an authorization by a card acquirer. After a card
        #   authorization is created, the merchant will eventually send a settlement. This
        #   simulates that event, which may occur many days after the purchase in
        #   production. The amount settled can be different from the amount originally
        #   authorized, for example, when adding a tip to a restaurant bill.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :card_id The identifier of the Card to create a settlement on.
        # @option params [String] :pending_transaction_id The identifier of the Pending Transaction for the Card Authorization you wish to
        #   settle.
        # @option params [Integer] :amount The amount to be settled. This defaults to the amount of the Pending Transaction
        #   being settled.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::Transaction]
        def settlement(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/card_settlements"
          req[:body] = params
          req[:model] = Increase::Models::Transaction
          @client.request(req, opts)
        end
      end
    end
  end
end
