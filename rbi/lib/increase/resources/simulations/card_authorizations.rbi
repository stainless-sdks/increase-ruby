# typed: strong

module Increase
  module Resources
    class Simulations
      class CardAuthorizations
        sig do
          params(
            amount: Integer,
            authenticated_card_payment_id: String,
            card_id: String,
            decline_reason: Symbol,
            digital_wallet_token_id: String,
            direction: Symbol,
            event_subscription_id: String,
            merchant_acceptor_id: String,
            merchant_category_code: String,
            merchant_city: String,
            merchant_country: String,
            merchant_descriptor: String,
            merchant_state: String,
            physical_card_id: String,
            terminal_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Increase::Models::Simulations::CardAuthorizationCreateResponse)
        end
        def create(
          amount:,
          authenticated_card_payment_id: nil,
          card_id: nil,
          decline_reason: nil,
          digital_wallet_token_id: nil,
          direction: nil,
          event_subscription_id: nil,
          merchant_acceptor_id: nil,
          merchant_category_code: nil,
          merchant_city: nil,
          merchant_country: nil,
          merchant_descriptor: nil,
          merchant_state: nil,
          physical_card_id: nil,
          terminal_id: nil,
          request_options: {}
        )
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
