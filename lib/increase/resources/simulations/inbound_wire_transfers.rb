# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundWireTransfers
        # Simulates an [Inbound Wire Transfer](#inbound-wire-transfers) to your account.
        #
        # @param params [Increase::Models::Simulations::InboundWireTransferCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :account_number_id The identifier of the Account Number the inbound Wire Transfer is for.
        #
        #   @option params [Integer] :amount The transfer amount in cents. Must be positive.
        #
        #   @option params [String] :beneficiary_address_line1 The sending bank will set beneficiary_address_line1 in production. You can
        #     simulate any value here.
        #
        #   @option params [String] :beneficiary_address_line2 The sending bank will set beneficiary_address_line2 in production. You can
        #     simulate any value here.
        #
        #   @option params [String] :beneficiary_address_line3 The sending bank will set beneficiary_address_line3 in production. You can
        #     simulate any value here.
        #
        #   @option params [String] :beneficiary_name The sending bank will set beneficiary_name in production. You can simulate any
        #     value here.
        #
        #   @option params [String] :beneficiary_reference The sending bank will set beneficiary_reference in production. You can simulate
        #     any value here.
        #
        #   @option params [String] :originator_address_line1 The sending bank will set originator_address_line1 in production. You can
        #     simulate any value here.
        #
        #   @option params [String] :originator_address_line2 The sending bank will set originator_address_line2 in production. You can
        #     simulate any value here.
        #
        #   @option params [String] :originator_address_line3 The sending bank will set originator_address_line3 in production. You can
        #     simulate any value here.
        #
        #   @option params [String] :originator_name The sending bank will set originator_name in production. You can simulate any
        #     value here.
        #
        #   @option params [String] :originator_routing_number The sending bank will set originator_routing_number in production. You can
        #     simulate any value here.
        #
        #   @option params [String] :originator_to_beneficiary_information_line1 The sending bank will set originator_to_beneficiary_information_line1 in
        #     production. You can simulate any value here.
        #
        #   @option params [String] :originator_to_beneficiary_information_line2 The sending bank will set originator_to_beneficiary_information_line2 in
        #     production. You can simulate any value here.
        #
        #   @option params [String] :originator_to_beneficiary_information_line3 The sending bank will set originator_to_beneficiary_information_line3 in
        #     production. You can simulate any value here.
        #
        #   @option params [String] :originator_to_beneficiary_information_line4 The sending bank will set originator_to_beneficiary_information_line4 in
        #     production. You can simulate any value here.
        #
        #   @option params [String] :sender_reference The sending bank will set sender_reference in production. You can simulate any
        #     value here.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::InboundWireTransfer]
        #
        # @see Increase::Models::Simulations::InboundWireTransferCreateParams
        def create(params)
          parsed, options = Increase::Models::Simulations::InboundWireTransferCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/inbound_wire_transfers",
            body: parsed,
            model: Increase::Models::InboundWireTransfer,
            options: options
          )
        end

        # @api private
        #
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
