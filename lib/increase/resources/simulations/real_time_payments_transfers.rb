# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class RealTimePaymentsTransfers
        def initialize(client:)
          @client = client
        end

        # Simulates submission of a Real-Time Payments transfer and handling the response
        #   from the destination financial institution. This transfer must first have a
        #   `status` of `pending_submission`.
        # 
        # @param real_time_payments_transfer_id [String] The identifier of the Real-Time Payments Transfer you wish to complete.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [Rejection] :rejection If set, the simulation will reject the transfer.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::RealTimePaymentsTransfer]
        def complete(real_time_payments_transfer_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/real_time_payments_transfers/#{real_time_payments_transfer_id}/complete"
          req[:body] = params
          req[:model] = Increase::Models::RealTimePaymentsTransfer
          @client.request(req, opts)
        end

        # Simulates an inbound Real-Time Payments transfer to your account. Real-Time
        #   Payments are a beta feature.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_number_id The identifier of the Account Number the inbound Real-Time Payments Transfer is
        #   for.
        # @option params [Integer] :amount The transfer amount in USD cents. Must be positive.
        # @option params [String] :debtor_account_number The account number of the account that sent the transfer.
        # @option params [String] :debtor_name The name provided by the sender of the transfer.
        # @option params [String] :debtor_routing_number The routing number of the account that sent the transfer.
        # @option params [String] :remittance_information Additional information included with the transfer.
        # @option params [String] :request_for_payment_id The identifier of a pending Request for Payment that this transfer will fulfill.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::InboundRealTimePaymentsTransferSimulationResult]
        def create_inbound(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/inbound_real_time_payments_transfers"
          req[:body] = params
          req[:model] = Increase::Models::InboundRealTimePaymentsTransferSimulationResult
          @client.request(req, opts)
        end
      end
    end
  end
end
