# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class ACHTransfers
        # Simulates the acknowledgement of an [ACH Transfer](#ach-transfers) by the
        #   Federal Reserve. This transfer must first have a `status` of `submitted` . In
        #   production, the Federal Reserve generally acknowledges submitted ACH files
        #   within 30 minutes. Since sandbox ACH Transfers are not submitted to the Federal
        #   Reserve, this endpoint allows you to skip that delay and add the acknowledgment
        #   subresource to the ACH Transfer.
        #
        # @param ach_transfer_id [String] The identifier of the ACH Transfer you wish to become acknowledged.
        #
        # @param params [Increase::Models::Simulations::ACHTransferAcknowledgeParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::ACHTransfer]
        def acknowledge(ach_transfer_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/ach_transfers/%1$s/acknowledge", ach_transfer_id],
            model: Increase::Models::ACHTransfer,
            options: params[:request_options]
          )
        end

        # Simulates receiving a Notification of Change for an
        #   [ACH Transfer](#ach-transfers).
        #
        # @param ach_transfer_id [String] The identifier of the ACH Transfer you wish to create a notification of change
        #   for.
        #
        # @param params [Increase::Models::Simulations::ACHTransferCreateNotificationOfChangeParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, Increase::Models::Simulations::ACHTransferCreateNotificationOfChangeParams::ChangeCode] :change_code The reason for the notification of change.
        #
        #   @option params [String] :corrected_data The corrected data for the notification of change (e.g., a new routing number).
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::ACHTransfer]
        def create_notification_of_change(ach_transfer_id, params)
          parsed, options =
            Increase::Models::Simulations::ACHTransferCreateNotificationOfChangeParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["simulations/ach_transfers/%1$s/create_notification_of_change", ach_transfer_id],
            body: parsed,
            model: Increase::Models::ACHTransfer,
            options: options
          )
        end

        # Simulates the return of an [ACH Transfer](#ach-transfers) by the Federal Reserve
        #   due to an error condition. This will also create a Transaction to account for
        #   the returned funds. This transfer must first have a `status` of `submitted`.
        #
        # @param ach_transfer_id [String] The identifier of the ACH Transfer you wish to return.
        #
        # @param params [Increase::Models::Simulations::ACHTransferReturnParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, Increase::Models::Simulations::ACHTransferReturnParams::Reason] :reason The reason why the Federal Reserve or destination bank returned this transfer.
        #     Defaults to `no_account`.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::ACHTransfer]
        def return_(ach_transfer_id, params = {})
          parsed, options = Increase::Models::Simulations::ACHTransferReturnParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["simulations/ach_transfers/%1$s/return", ach_transfer_id],
            body: parsed,
            model: Increase::Models::ACHTransfer,
            options: options
          )
        end

        # Simulates the settlement of an [ACH Transfer](#ach-transfers) by the Federal
        #   Reserve. This transfer must first have a `status` of `pending_submission` or
        #   `submitted`. For convenience, if the transfer is in `status`:
        #   `pending_submission`, the simulation will also submit the transfer. Without this
        #   simulation the transfer will eventually settle on its own following the same
        #   Federal Reserve timeline as in production.
        #
        # @param ach_transfer_id [String] The identifier of the ACH Transfer you wish to become settled.
        #
        # @param params [Increase::Models::Simulations::ACHTransferSettleParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::ACHTransfer]
        def settle(ach_transfer_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/ach_transfers/%1$s/settle", ach_transfer_id],
            model: Increase::Models::ACHTransfer,
            options: params[:request_options]
          )
        end

        # Simulates the submission of an [ACH Transfer](#ach-transfers) to the Federal
        #   Reserve. This transfer must first have a `status` of `pending_approval` or
        #   `pending_submission`. In production, Increase submits ACH Transfers to the
        #   Federal Reserve three times per day on weekdays. Since sandbox ACH Transfers are
        #   not submitted to the Federal Reserve, this endpoint allows you to skip that
        #   delay and transition the ACH Transfer to a status of `submitted`.
        #
        # @param ach_transfer_id [String] The identifier of the ACH Transfer you wish to submit.
        #
        # @param params [Increase::Models::Simulations::ACHTransferSubmitParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::ACHTransfer]
        def submit(ach_transfer_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/ach_transfers/%1$s/submit", ach_transfer_id],
            model: Increase::Models::ACHTransfer,
            options: params[:request_options]
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
