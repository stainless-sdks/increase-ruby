# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardDisputes
        # After a [Card Dispute](#card-disputes) is created in production, the dispute
        #   will be reviewed. Since no review happens in sandbox, this endpoint simulates
        #   moving a Card Dispute into a rejected or accepted state. A Card Dispute can only
        #   be actioned one time and must have a status of `pending_reviewing`.
        #
        # @param card_dispute_id [String] The dispute you would like to action.
        #
        # @param params [Increase::Models::Simulations::CardDisputeActionParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, Increase::Models::Simulations::CardDisputeActionParams::Status] :status The status to move the dispute to.
        #
        #   @option params [String] :explanation Why the dispute was rejected. Not required for accepting disputes.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::CardDispute]
        def action(card_dispute_id, params)
          parsed, options = Increase::Models::Simulations::CardDisputeActionParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["simulations/card_disputes/%1$s/action", card_dispute_id],
            body: parsed,
            model: Increase::Models::CardDispute,
            options: options
          )
        end

        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
