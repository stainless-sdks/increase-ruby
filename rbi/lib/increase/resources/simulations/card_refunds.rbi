# typed: strong

module Increase
  module Resources
    class Simulations
      class CardRefunds
        # @api private
        sig { void }
        private def initialize_resources; end

        # Simulates refunding a card transaction. The full value of the original sandbox
        # transaction is refunded.
        sig do
          params(
            transaction_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::Transaction)
        end
        def create(
          # The identifier for the Transaction to refund. The Transaction's source must have
          # a category of card_settlement.
          transaction_id:,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
