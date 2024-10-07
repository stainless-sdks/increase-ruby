# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CheckTransfers
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

        # Simulates the mailing of a [Check Transfer](#check-transfers), which happens
        #   periodically throughout the day in production but can be sped up in sandbox.
        #   This transfer must first have a `status` of `pending_approval` or
        #   `pending_submission`.
        #
        # @param check_transfer_id [String] The identifier of the Check Transfer you wish to mail.
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CheckTransfer]
        def mail(check_transfer_id, opts = {})
          req = {
            method: :post,
            path: "/simulations/check_transfers/#{check_transfer_id}/mail",
            model: Increase::Models::CheckTransfer
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
