# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardAuthorizations
        # Simulates a purchase authorization on a [Card](#cards). Depending on the balance
        # available to the card and the `amount` submitted, the authorization activity
        # will result in a [Pending Transaction](#pending-transactions) of type
        # `card_authorization` or a [Declined Transaction](#declined-transactions) of type
        # `card_decline`. You can pass either a Card id or a
        # [Digital Wallet Token](#digital-wallet-tokens) id to simulate the two different
        # ways purchases can be made.
        #
        # @overload create(amount:, authenticated_card_payment_id: nil, card_id: nil, decline_reason: nil, digital_wallet_token_id: nil, direction: nil, event_subscription_id: nil, merchant_acceptor_id: nil, merchant_category_code: nil, merchant_city: nil, merchant_country: nil, merchant_descriptor: nil, merchant_state: nil, network_details: nil, network_risk_score: nil, physical_card_id: nil, terminal_id: nil, request_options: {})
        #
        # @param amount [Integer]
        # @param authenticated_card_payment_id [String]
        # @param card_id [String]
        # @param decline_reason [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::DeclineReason]
        # @param digital_wallet_token_id [String]
        # @param direction [Symbol, Increase::Models::Simulations::CardAuthorizationCreateParams::Direction]
        # @param event_subscription_id [String]
        # @param merchant_acceptor_id [String]
        # @param merchant_category_code [String]
        # @param merchant_city [String]
        # @param merchant_country [String]
        # @param merchant_descriptor [String]
        # @param merchant_state [String]
        # @param network_details [Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails]
        # @param network_risk_score [Integer]
        # @param physical_card_id [String]
        # @param terminal_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::Simulations::CardAuthorizationCreateResponse]
        #
        # @see Increase::Models::Simulations::CardAuthorizationCreateParams
        def create(params)
          parsed, options = Increase::Models::Simulations::CardAuthorizationCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/card_authorizations",
            body: parsed,
            model: Increase::Models::Simulations::CardAuthorizationCreateResponse,
            options: options
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
end
