# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class ACHTransfers
        def initialize(client:)
          @client = client
        end

        # Simulates the acknowledgement of an [ACH Transfer](#ach-transfers) by the
        #   Federal Reserve. This transfer must first have a `status` of `submitted` . In
        #   production, the Federal Reserve generally acknowledges submitted ACH files
        #   within 30 minutes. Since sandbox ACH Transfers are not submitted to the Federal
        #   Reserve, this endpoint allows you to skip that delay and add the acknowledgment
        #   subresource to the ACH Transfer.
        #
        # @param ach_transfer_id [String] The identifier of the ACH Transfer you wish to become acknowledged.
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::ACHTransfer]
        def acknowledge(ach_transfer_id, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/ach_transfers/#{ach_transfer_id}/acknowledge"
          req[:model] = Increase::Models::ACHTransfer
          @client.request(req, opts)
        end

        # Simulates receiving a Notification of Change for an
        #   [ACH Transfer](#ach-transfers).
        #
        # @param ach_transfer_id [String] The identifier of the ACH Transfer you wish to create a notification of change
        #   for.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Symbol, ChangeCode] :change_code The reason for the notification of change.
        # @option params [String] :corrected_data The corrected data for the notification of change (e.g., a new routing number).
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::ACHTransfer]
        def create_notification_of_change(ach_transfer_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/ach_transfers/#{ach_transfer_id}/create_notification_of_change"
          req[:body] = params
          req[:model] = Increase::Models::ACHTransfer
          @client.request(req, opts)
        end

        # Simulates the return of an [ACH Transfer](#ach-transfers) by the Federal Reserve
        #   due to an error condition. This will also create a Transaction to account for
        #   the returned funds. This transfer must first have a `status` of `submitted`.
        #
        # @param ach_transfer_id [String] The identifier of the ACH Transfer you wish to return.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Symbol, Reason, nil] :reason The reason why the Federal Reserve or destination bank returned this transfer.
        #   Defaults to `no_account`.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::ACHTransfer]
        def return_(ach_transfer_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/ach_transfers/#{ach_transfer_id}/return"
          req[:body] = params
          req[:model] = Increase::Models::ACHTransfer
          @client.request(req, opts)
        end

        # Simulates the submission of an [ACH Transfer](#ach-transfers) to the Federal
        #   Reserve. This transfer must first have a `status` of `pending_approval` or
        #   `pending_submission`. In production, Increase submits ACH Transfers to the
        #   Federal Reserve three times per day on weekdays. Since sandbox ACH Transfers are
        #   not submitted to the Federal Reserve, this endpoint allows you to skip that
        #   delay and transition the ACH Transfer to a status of `submitted`.
        #
        # @param ach_transfer_id [String] The identifier of the ACH Transfer you wish to submit.
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::ACHTransfer]
        def submit(ach_transfer_id, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/ach_transfers/#{ach_transfer_id}/submit"
          req[:model] = Increase::Models::ACHTransfer
          @client.request(req, opts)
        end
      end
    end
  end
end
