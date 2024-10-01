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
        # @option params [Symbol, Status] :status The status to move the dispute to.
        # @option params [String, nil] :explanation Why the dispute was rejected. Not required for accepting disputes.
        #
        # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
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

        # The status to move the dispute to.
        class Status < Increase::Enum
          # The Card Dispute has been accepted and your funds have been returned. The card dispute will eventually transition into `won` or `lost` depending on the outcome.
          ACCEPTED = :accepted

          # The Card Dispute has been rejected.
          REJECTED = :rejected

          # The Card Dispute has been lost and funds previously credited from the acceptance have been debited.
          LOST = :lost

          # The Card Dispute has been won and no further action can be taken.
          WON = :won
        end
      end
    end
  end
end
