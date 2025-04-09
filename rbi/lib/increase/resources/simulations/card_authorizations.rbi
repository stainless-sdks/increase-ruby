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
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/amount
          amount:,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/authenticated_card_payment_id
          authenticated_card_payment_id: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/card_id
          card_id: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/decline_reason
          decline_reason: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/digital_wallet_token_id
          digital_wallet_token_id: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/direction
          direction: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/event_subscription_id
          event_subscription_id: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_acceptor_id
          merchant_acceptor_id: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_category_code
          merchant_category_code: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_city
          merchant_city: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_country
          merchant_country: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_descriptor
          merchant_descriptor: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/merchant_state
          merchant_state: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/network_details
          network_details: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/network_risk_score
          network_risk_score: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/physical_card_id
          physical_card_id: nil,
          # #/components/schemas/sandbox_create_a_card_authorization_parameters/properties/terminal_id
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
