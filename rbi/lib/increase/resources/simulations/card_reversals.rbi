# typed: strong

module Increase
  module Resources
    class Simulations
      class CardReversals
        # Simulates the reversal of an authorization by a card acquirer. An authorization
        # can be partially reversed multiple times, up until the total authorized amount.
        # Marks the pending transaction as complete if the authorization is fully
        # reversed.
        sig do
          params(
            card_payment_id: String,
            amount: Integer,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::CardPayment)
        end
        def create(
          # #/components/schemas/sandbox_reverse_a_card_authorization_parameters/properties/card_payment_id
          card_payment_id:,
          # #/components/schemas/sandbox_reverse_a_card_authorization_parameters/properties/amount
          amount: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
