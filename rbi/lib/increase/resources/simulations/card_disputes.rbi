# typed: strong

module Increase
  module Resources
    class Simulations
      class CardDisputes
        # After a [Card Dispute](#card-disputes) is created in production, the dispute
        # will be reviewed. Since no review happens in sandbox, this endpoint simulates
        # moving a Card Dispute into a rejected or accepted state. A Card Dispute can only
        # be actioned one time and must have a status of `pending_reviewing`.
        sig do
          params(
            card_dispute_id: String,
            status: Increase::Models::Simulations::CardDisputeActionParams::Status::OrSymbol,
            explanation: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::CardDispute)
        end
        def action(
          # #/paths//simulations/card_disputes/{card_dispute_id}/action/post/parameters/0/schema
          card_dispute_id,
          # #/components/schemas/sandbox_advance_the_state_of_a_card_dispute_parameters/properties/status
          status:,
          # #/components/schemas/sandbox_advance_the_state_of_a_card_dispute_parameters/properties/explanation
          explanation: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
