# typed: strong

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
        sig do
          params(
            amount: Integer,
            authenticated_card_payment_id: String,
            card_id: String,
            decline_reason: Increase::Models::Simulations::CardAuthorizationCreateParams::DeclineReason::OrSymbol,
            digital_wallet_token_id: String,
            direction: Increase::Models::Simulations::CardAuthorizationCreateParams::Direction::OrSymbol,
            event_subscription_id: String,
            merchant_acceptor_id: String,
            merchant_category_code: String,
            merchant_city: String,
            merchant_country: String,
            merchant_descriptor: String,
            merchant_state: String,
            network_details: T.any(
              Increase::Models::Simulations::CardAuthorizationCreateParams::NetworkDetails,
              Increase::Internal::AnyHash
            ),
            network_risk_score: Integer,
            physical_card_id: String,
            terminal_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::Simulations::CardAuthorizationCreateResponse)
        end
        def create(
          # The authorization amount in cents.
          amount:,
          # The identifier of a Card Payment with a `card_authentication` if you want to
          # simulate an authenticated authorization.
          authenticated_card_payment_id: nil,
          # The identifier of the Card to be authorized.
          card_id: nil,
          # Forces a card decline with a specific reason. No real time decision will be
          # sent.
          decline_reason: nil,
          # The identifier of the Digital Wallet Token to be authorized.
          digital_wallet_token_id: nil,
          # The direction describes the direction the funds will move, either from the
          # cardholder to the merchant or from the merchant to the cardholder.
          direction: nil,
          # The identifier of the Event Subscription to use. If provided, will override the
          # default real time event subscription. Because you can only create one real time
          # decision event subscription, you can use this field to route events to any
          # specified event subscription for testing purposes.
          event_subscription_id: nil,
          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          # is transacting with.
          merchant_acceptor_id: nil,
          # The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          # card is transacting with.
          merchant_category_code: nil,
          # The city the merchant resides in.
          merchant_city: nil,
          # The country the merchant resides in.
          merchant_country: nil,
          # The merchant descriptor of the merchant the card is transacting with.
          merchant_descriptor: nil,
          # The state the merchant resides in.
          merchant_state: nil,
          # Fields specific to a given card network.
          network_details: nil,
          # The risk score generated by the card network. For Visa this is the Visa Advanced
          # Authorization risk score, from 0 to 99, where 99 is the riskiest.
          network_risk_score: nil,
          # The identifier of the Physical Card to be authorized.
          physical_card_id: nil,
          # The terminal identifier (commonly abbreviated as TID) of the terminal the card
          # is transacting with.
          terminal_id: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
