# typed: strong

module Increase
  module Resources
    class Simulations
      class CardReversals
        sig do
          params(
            card_payment_id: String,
            amount: Integer,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Increase::Models::CardPayment)
        end
        def create(card_payment_id:, amount: nil, request_options: {})
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
