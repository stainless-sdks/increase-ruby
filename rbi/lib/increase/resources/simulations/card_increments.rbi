# typed: strong

module Increase
  module Resources
    class Simulations
      class CardIncrements
        # Simulates the increment of an authorization by a card acquirer. An authorization
        # can be incremented multiple times.
        sig do
          params(
            amount: Integer,
            card_payment_id: String,
            event_subscription_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::CardPayment)
        end
        def create(
          # #/components/schemas/sandbox_increment_a_card_authorization_parameters/properties/amount
          amount:,
          # #/components/schemas/sandbox_increment_a_card_authorization_parameters/properties/card_payment_id
          card_payment_id:,
          # #/components/schemas/sandbox_increment_a_card_authorization_parameters/properties/event_subscription_id
          event_subscription_id: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
