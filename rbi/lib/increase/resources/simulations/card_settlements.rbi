# typed: strong

module Increase
  module Resources
    class Simulations
      class CardSettlements
        # Simulates the settlement of an authorization by a card acquirer. After a card
        # authorization is created, the merchant will eventually send a settlement. This
        # simulates that event, which may occur many days after the purchase in
        # production. The amount settled can be different from the amount originally
        # authorized, for example, when adding a tip to a restaurant bill.
        sig do
          params(
            card_id: String,
            pending_transaction_id: String,
            amount: Integer,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::Transaction)
        end
        def create(
          # #/components/schemas/sandbox_settle_a_card_authorization_parameters/properties/card_id
          card_id:,
          # #/components/schemas/sandbox_settle_a_card_authorization_parameters/properties/pending_transaction_id
          pending_transaction_id:,
          # #/components/schemas/sandbox_settle_a_card_authorization_parameters/properties/amount
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
