# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class WireTransfers
        def initialize(client:)
          @client = client
        end

        # Simulates an inbound Wire Transfer to your account.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_number_id The identifier of the Account Number the inbound Wire Transfer is for.
        # @option params [Integer] :amount The transfer amount in cents. Must be positive.
        # @option params [String] :beneficiary_address_line1 The sending bank will set beneficiary_address_line1 in production. You can
        #   simulate any value here.
        # @option params [String] :beneficiary_address_line2 The sending bank will set beneficiary_address_line2 in production. You can
        #   simulate any value here.
        # @option params [String] :beneficiary_address_line3 The sending bank will set beneficiary_address_line3 in production. You can
        #   simulate any value here.
        # @option params [String] :beneficiary_name The sending bank will set beneficiary_name in production. You can simulate any
        #   value here.
        # @option params [String] :beneficiary_reference The sending bank will set beneficiary_reference in production. You can simulate
        #   any value here.
        # @option params [String] :originator_address_line1 The sending bank will set originator_address_line1 in production. You can
        #   simulate any value here.
        # @option params [String] :originator_address_line2 The sending bank will set originator_address_line2 in production. You can
        #   simulate any value here.
        # @option params [String] :originator_address_line3 The sending bank will set originator_address_line3 in production. You can
        #   simulate any value here.
        # @option params [String] :originator_name The sending bank will set originator_name in production. You can simulate any
        #   value here.
        # @option params [String] :originator_routing_number The sending bank will set originator_routing_number in production. You can
        #   simulate any value here.
        # @option params [String] :originator_to_beneficiary_information_line1 The sending bank will set originator_to_beneficiary_information_line1 in
        #   production. You can simulate any value here.
        # @option params [String] :originator_to_beneficiary_information_line2 The sending bank will set originator_to_beneficiary_information_line2 in
        #   production. You can simulate any value here.
        # @option params [String] :originator_to_beneficiary_information_line3 The sending bank will set originator_to_beneficiary_information_line3 in
        #   production. You can simulate any value here.
        # @option params [String] :originator_to_beneficiary_information_line4 The sending bank will set originator_to_beneficiary_information_line4 in
        #   production. You can simulate any value here.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::InboundWireTransfer]
        def create_inbound(params = {}, opts = {})
          request = {}
          request[:method] = :post
          request[:path] = "/simulations/inbound_wire_transfers"
          request[:body] = params
          request[:model] = Increase::Models::InboundWireTransfer
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
