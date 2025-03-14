# typed: strong

module Increase
  module Resources
    class Simulations
      class DigitalWalletTokenRequests
        # Simulates a user attempting add a [Card](#cards) to a digital wallet such as
        #   Apple Pay.
        sig do
          params(
            card_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse)
        end
        def create(card_id:, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
