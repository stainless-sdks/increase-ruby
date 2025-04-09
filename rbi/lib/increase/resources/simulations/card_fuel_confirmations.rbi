# typed: strong

module Increase
  module Resources
    class Simulations
      class CardFuelConfirmations
        # Simulates the fuel confirmation of an authorization by a card acquirer. This
        # happens asynchronously right after a fuel pump transaction is completed. A fuel
        # confirmation can only happen once per authorization.
        sig do
          params(
            amount: Integer,
            card_payment_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::CardPayment)
        end
        def create(
          # #/components/schemas/sandbox_confirm_the_fuel_pump_amount_for_a_card_authorization_parameters/properties/amount
          amount:,
          # #/components/schemas/sandbox_confirm_the_fuel_pump_amount_for_a_card_authorization_parameters/properties/card_payment_id
          card_payment_id:,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
