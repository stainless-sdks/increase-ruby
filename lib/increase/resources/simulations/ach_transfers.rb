# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class ACHTransfers
        # @api private
        private def initialize_resources; end

        # Simulates the acknowledgement of an [ACH Transfer](#ach-transfers) by the
        # Federal Reserve. This transfer must first have a `status` of `submitted` . In
        # production, the Federal Reserve generally acknowledges submitted ACH files
        # within 30 minutes. Since sandbox ACH Transfers are not submitted to the Federal
        # Reserve, this endpoint allows you to skip that delay and add the acknowledgment
        # subresource to the ACH Transfer.
        #
        # @overload acknowledge(ach_transfer_id, request_options: {})
        #
        # @param ach_transfer_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::ACHTransfer]
        #
        # @see Increase::Models::Simulations::ACHTransferAcknowledgeParams
        def acknowledge(ach_transfer_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/ach_transfers/%1$s/acknowledge", ach_transfer_id],
            model: Increase::Models::ACHTransfer,
            options: params[:request_options]
          )
        end

        # Simulates receiving a Notification of Change for an
        # [ACH Transfer](#ach-transfers).
        #
        # @overload create_notification_of_change(ach_transfer_id, change_code:, corrected_data:, request_options: {})
        #
        # @param ach_transfer_id [String]
        # @param change_code [Symbol, Increase::Models::Simulations::ACHTransferCreateNotificationOfChangeParams::ChangeCode]
        # @param corrected_data [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::ACHTransfer]
        #
        # @see Increase::Models::Simulations::ACHTransferCreateNotificationOfChangeParams
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
        # due to an error condition. This will also create a Transaction to account for
        # the returned funds. This transfer must first have a `status` of `submitted`.
        #
        # @overload return_(ach_transfer_id, reason: nil, request_options: {})
        #
        # @param ach_transfer_id [String]
        # @param reason [Symbol, Increase::Models::Simulations::ACHTransferReturnParams::Reason]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::ACHTransfer]
        #
        # @see Increase::Models::Simulations::ACHTransferReturnParams
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
        # Reserve. This transfer must first have a `status` of `pending_submission` or
        # `submitted`. For convenience, if the transfer is in `status`:
        # `pending_submission`, the simulation will also submit the transfer. Without this
        # simulation the transfer will eventually settle on its own following the same
        # Federal Reserve timeline as in production.
        #
        # @overload settle(ach_transfer_id, request_options: {})
        #
        # @param ach_transfer_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::ACHTransfer]
        #
        # @see Increase::Models::Simulations::ACHTransferSettleParams
        def settle(ach_transfer_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/ach_transfers/%1$s/settle", ach_transfer_id],
            model: Increase::Models::ACHTransfer,
            options: params[:request_options]
          )
        end

        # Simulates the submission of an [ACH Transfer](#ach-transfers) to the Federal
        # Reserve. This transfer must first have a `status` of `pending_approval` or
        # `pending_submission`. In production, Increase submits ACH Transfers to the
        # Federal Reserve three times per day on weekdays. Since sandbox ACH Transfers are
        # not submitted to the Federal Reserve, this endpoint allows you to skip that
        # delay and transition the ACH Transfer to a status of `submitted`.
        #
        # @overload submit(ach_transfer_id, request_options: {})
        #
        # @param ach_transfer_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::ACHTransfer]
        #
        # @see Increase::Models::Simulations::ACHTransferSubmitParams
        def submit(ach_transfer_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/ach_transfers/%1$s/submit", ach_transfer_id],
            model: Increase::Models::ACHTransfer,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
          initialize_resources
        end
      end
    end
  end
end
