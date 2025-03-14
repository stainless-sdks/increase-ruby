# typed: strong

module Increase
  module Resources
    class Simulations
      class CardIncrements
        # Simulates the increment of an authorization by a card acquirer. An authorization
        #   can be incremented multiple times.
        sig do
          params(
            amount: Integer,
            card_payment_id: String,
            event_subscription_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::CardPayment)
        end
        def create(amount:, card_payment_id:, event_subscription_id: nil, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
