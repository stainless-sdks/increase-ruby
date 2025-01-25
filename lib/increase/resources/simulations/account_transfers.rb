# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class AccountTransfers
        # If your account is configured to require approval for each transfer, this
        #   endpoint simulates the approval of an [Account Transfer](#account-transfers).
        #   You can also approve sandbox Account Transfers in the dashboard. This transfer
        #   must first have a `status` of `pending_approval`.
        #
        # @param account_transfer_id [String] The identifier of the Account Transfer you wish to complete.
        #
        # @param params [Increase::Models::Simulations::AccountTransferCompleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Increase::Models::AccountTransfer]
        #
        def complete(account_transfer_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/account_transfers/%0s/complete", account_transfer_id],
            model: Increase::Models::AccountTransfer,
            options: params[:request_options]
          )
        end

        # @param client [Increase::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
