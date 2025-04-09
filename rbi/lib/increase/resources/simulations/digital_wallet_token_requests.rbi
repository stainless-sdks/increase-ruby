# typed: strong

module Increase
  module Resources
    class Simulations
      class DigitalWalletTokenRequests
        # Simulates a user attempting add a [Card](#cards) to a digital wallet such as
        # Apple Pay.
        sig do
          params(
            card_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse)
        end
        def create(
          # #/components/schemas/sandbox_create_a_digital_wallet_token_request_parameters/properties/card_id
          card_id:,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
