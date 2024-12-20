# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class AccountTransfers
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

        # If your account is configured to require approval for each transfer, this
        #   endpoint simulates the approval of an [Account Transfer](#account-transfers).
        #   You can also approve sandbox Account Transfers in the dashboard. This transfer
        #   must first have a `status` of `pending_approval`.
        #
        # @param account_transfer_id [String] The identifier of the Account Transfer you wish to complete.
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::AccountTransfer]
        def complete(account_transfer_id, opts = {})
          req = {
            method: :post,
            path: "/simulations/account_transfers/#{account_transfer_id}/complete",
            model: Increase::Models::AccountTransfer
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
