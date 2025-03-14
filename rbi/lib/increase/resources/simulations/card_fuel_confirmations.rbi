# typed: strong

module Increase
  module Resources
    class Simulations
      class CardFuelConfirmations
        # Simulates the fuel confirmation of an authorization by a card acquirer. This
        #   happens asynchronously right after a fuel pump transaction is completed. A fuel
        #   confirmation can only happen once per authorization.
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

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
