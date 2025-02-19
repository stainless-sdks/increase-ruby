# typed: strong

module Increase
  module Resources
    class Simulations
      class CardFuelConfirmations
        sig do
          params(
              amount: Integer,
              card_payment_id: String,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::CardPayment)
        end
        def create(amount:, card_payment_id:, request_options: {})
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
