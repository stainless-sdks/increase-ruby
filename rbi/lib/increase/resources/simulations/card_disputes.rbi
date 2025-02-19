# typed: strong

module Increase
  module Resources
    class Simulations
      class CardDisputes
        sig do
          params(
              card_dispute_id: String,
              status: Symbol,
              explanation: String,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::CardDispute)
        end
        def action(card_dispute_id, status:, explanation: nil, request_options: {})
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
