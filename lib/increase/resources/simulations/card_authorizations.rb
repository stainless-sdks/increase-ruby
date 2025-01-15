# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardAuthorizations
        # Simulates a purchase authorization on a [Card](#cards). Depending on the balance
        #   available to the card and the `amount` submitted, the authorization activity
        #   will result in a [Pending Transaction](#pending-transactions) of type
        #   `card_authorization` or a [Declined Transaction](#declined-transactions) of type
        #   `card_decline`. You can pass either a Card id or a
        #   [Digital Wallet Token](#digital-wallet-tokens) id to simulate the two different
        #   ways purchases can be made.
        #
        # @param params [Increase::Models::Simulations::CardAuthorizationCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [Integer] :amount The authorization amount in cents.
        #
        #   @option params [String] :authenticated_card_payment_id The identifier of a Card Payment with a `card_authentication` if you want to
        #     simulate an authenticated authorization.
        #
        #   @option params [String] :card_id The identifier of the Card to be authorized.
        #
        #   @option params [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::DeclineReason] :decline_reason Forces a card decline with a specific reason. No real time decision will be
        #     sent.
        #
        #   @option params [String] :digital_wallet_token_id The identifier of the Digital Wallet Token to be authorized.
        #
        #   @option params [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::Direction] :direction The direction describes the direction the funds will move, either from the
        #     cardholder to the merchant or from the merchant to the cardholder.
        #
        #   @option params [String] :event_subscription_id The identifier of the Event Subscription to use. If provided, will override the
        #     default real time event subscription. Because you can only create one real time
        #     decision event subscription, you can use this field to route events to any
        #     specified event subscription for testing purposes.
        #
        #   @option params [String] :merchant_acceptor_id The merchant identifier (commonly abbreviated as MID) of the merchant the card
        #     is transacting with.
        #
        #   @option params [String] :merchant_category_code The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
        #     card is transacting with.
        #
        #   @option params [String] :merchant_city The city the merchant resides in.
        #
        #   @option params [String] :merchant_country The country the merchant resides in.
        #
        #   @option params [String] :merchant_descriptor The merchant descriptor of the merchant the card is transacting with.
        #
        #   @option params [String] :merchant_state The state the merchant resides in.
        #
        #   @option params [String] :physical_card_id The identifier of the Physical Card to be authorized.
        #
        #   @option params [String] :terminal_id The terminal identifier (commonly abbreviated as TID) of the terminal the card
        #     is transacting with.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Simulations::CardAuthorizationCreateResponse]
        #
        def create(params = {}, opts = {})
          parsed = Increase::Models::Simulations::CardAuthorizationCreateParams.dump(params)
          req = {
            method: :post,
            path: "simulations/card_authorizations",
            body: parsed,
            model: Increase::Models::Simulations::CardAuthorizationCreateResponse
          }
          @client.request(req, opts)
        end

        # @param client [Increase::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
