# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundWireTransfers
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

        # Simulates an [Inbound Wire Transfer](#inbound-wire-transfers) to your account.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :account_number_id The identifier of the Account Number the inbound Wire Transfer is for.
        #   @option params [Integer] :amount The transfer amount in cents. Must be positive.
        #   @option params [String, nil] :beneficiary_address_line1 The sending bank will set beneficiary_address_line1 in production. You can
        #     simulate any value here.
        #   @option params [String, nil] :beneficiary_address_line2 The sending bank will set beneficiary_address_line2 in production. You can
        #     simulate any value here.
        #   @option params [String, nil] :beneficiary_address_line3 The sending bank will set beneficiary_address_line3 in production. You can
        #     simulate any value here.
        #   @option params [String, nil] :beneficiary_name The sending bank will set beneficiary_name in production. You can simulate any
        #     value here.
        #   @option params [String, nil] :beneficiary_reference The sending bank will set beneficiary_reference in production. You can simulate
        #     any value here.
        #   @option params [String, nil] :originator_address_line1 The sending bank will set originator_address_line1 in production. You can
        #     simulate any value here.
        #   @option params [String, nil] :originator_address_line2 The sending bank will set originator_address_line2 in production. You can
        #     simulate any value here.
        #   @option params [String, nil] :originator_address_line3 The sending bank will set originator_address_line3 in production. You can
        #     simulate any value here.
        #   @option params [String, nil] :originator_name The sending bank will set originator_name in production. You can simulate any
        #     value here.
        #   @option params [String, nil] :originator_routing_number The sending bank will set originator_routing_number in production. You can
        #     simulate any value here.
        #   @option params [String, nil] :originator_to_beneficiary_information_line1 The sending bank will set originator_to_beneficiary_information_line1 in
        #     production. You can simulate any value here.
        #   @option params [String, nil] :originator_to_beneficiary_information_line2 The sending bank will set originator_to_beneficiary_information_line2 in
        #     production. You can simulate any value here.
        #   @option params [String, nil] :originator_to_beneficiary_information_line3 The sending bank will set originator_to_beneficiary_information_line3 in
        #     production. You can simulate any value here.
        #   @option params [String, nil] :originator_to_beneficiary_information_line4 The sending bank will set originator_to_beneficiary_information_line4 in
        #     production. You can simulate any value here.
        #   @option params [String, nil] :sender_reference The sending bank will set sender_reference in production. You can simulate any
        #     value here.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::InboundWireTransfer]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/inbound_wire_transfers",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Increase::Models::InboundWireTransfer
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
