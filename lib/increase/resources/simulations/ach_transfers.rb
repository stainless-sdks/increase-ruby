# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class ACHTransfers
        def initialize(client:)
          @client = client
        end

        # Simulates an inbound ACH transfer to your account. This imitates initiating a
        #   transfer to an Increase account from a different financial institution. The
        #   transfer may be either a credit or a debit depending on if the `amount` is
        #   positive or negative. The result of calling this API will contain the created
        #   transfer. You can pass a `resolve_at` parameter to allow for a window to
        #   [action on the Inbound ACH Transfer](https://increase.com/documentation/receiving-ach-transfers).
        #   Alternatively, if you don't pass the `resolve_at` parameter the result will
        #   contain either a [Transaction](#transactions) or a
        #   [Declined Transaction](#declined-transactions) depending on whether or not the
        #   transfer is allowed.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_number_id The identifier of the Account Number the inbound ACH Transfer is for.
        # @option params [Integer] :amount The transfer amount in cents. A positive amount originates a credit transfer
        #   pushing funds to the receiving account. A negative amount originates a debit
        #   transfer pulling funds from the receiving account.
        # @option params [String] :company_descriptive_date The description of the date of the transfer.
        # @option params [String] :company_discretionary_data Data associated with the transfer set by the sender.
        # @option params [String] :company_entry_description The description of the transfer set by the sender.
        # @option params [String] :company_id The sender's company ID.
        # @option params [String] :company_name The name of the sender.
        # @option params [String] :receiver_id_number The ID of the receiver of the transfer.
        # @option params [String] :receiver_name The name of the receiver of the transfer.
        # @option params [String] :resolve_at The time at which the transfer should be resolved. If not provided will resolve
        #   immediately.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::InboundACHTransfer]
        def create_inbound(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/inbound_ach_transfers"
          req[:body] = params
          req[:model] = Increase::Models::InboundACHTransfer
          @client.request(req, opts)
        end

        # Simulates receiving a Notification of Change for an
        #   [ACH Transfer](#ach-transfers).
        # 
        # @param ach_transfer_id [String] The identifier of the ACH Transfer you wish to create a notification of change
        #   for.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [Symbol] :change_code The reason for the notification of change.
        # @option params [String] :corrected_data The corrected data for the notification of change (e.g., a new routing number).
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::ACHTransfer]
        def notification_of_change(ach_transfer_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/ach_transfers/#{ach_transfer_id}/notification_of_change"
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
        # @option params [Symbol] :reason The reason why the Federal Reserve or destination bank returned this transfer.
        #   Defaults to `no_account`.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
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
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
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
