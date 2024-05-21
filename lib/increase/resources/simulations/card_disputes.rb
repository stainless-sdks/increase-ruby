# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardDisputes
        def initialize(client:)
          @client = client
        end

        # After a [Card Dispute](#card-disputes) is created in production, the dispute
        #   will be reviewed. Since no review happens in sandbox, this endpoint simulates
        #   moving a Card Dispute into a rejected or accepted state. A Card Dispute can only
        #   be actioned one time and must have a status of `pending_reviewing`.
        # 
        # @param card_dispute_id [String] The dispute you would like to action.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [Symbol] :status The status to move the dispute to.
        # @option params [String] :explanation Why the dispute was rejected. Not required for accepting disputes.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::CardDispute]
        def action(card_dispute_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/card_disputes/#{card_dispute_id}/action"
          req[:body] = params
          req[:model] = Increase::Models::CardDispute
          @client.request(req, opts)
        end
      end
    end
  end
end
