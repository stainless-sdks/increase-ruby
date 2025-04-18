# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundWireDrawdownRequests
        # @api private
        private def initialize_resources; end

        # Simulates receiving an
        # [Inbound Wire Drawdown Request](#inbound-wire-drawdown-requests).
        #
        # @overload create(amount:, beneficiary_account_number:, beneficiary_routing_number:, currency:, message_to_recipient:, originator_account_number:, originator_routing_number:, recipient_account_number_id:, beneficiary_address_line1: nil, beneficiary_address_line2: nil, beneficiary_address_line3: nil, beneficiary_name: nil, originator_address_line1: nil, originator_address_line2: nil, originator_address_line3: nil, originator_name: nil, originator_to_beneficiary_information_line1: nil, originator_to_beneficiary_information_line2: nil, originator_to_beneficiary_information_line3: nil, originator_to_beneficiary_information_line4: nil, request_options: {})
        #
        # @param amount [Integer]
        # @param beneficiary_account_number [String]
        # @param beneficiary_routing_number [String]
        # @param currency [String]
        # @param message_to_recipient [String]
        # @param originator_account_number [String]
        # @param originator_routing_number [String]
        # @param recipient_account_number_id [String]
        # @param beneficiary_address_line1 [String]
        # @param beneficiary_address_line2 [String]
        # @param beneficiary_address_line3 [String]
        # @param beneficiary_name [String]
        # @param originator_address_line1 [String]
        # @param originator_address_line2 [String]
        # @param originator_address_line3 [String]
        # @param originator_name [String]
        # @param originator_to_beneficiary_information_line1 [String]
        # @param originator_to_beneficiary_information_line2 [String]
        # @param originator_to_beneficiary_information_line3 [String]
        # @param originator_to_beneficiary_information_line4 [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::InboundWireDrawdownRequest]
        #
        # @see Increase::Models::Simulations::InboundWireDrawdownRequestCreateParams
        def create(params)
          parsed, options =
            Increase::Models::Simulations::InboundWireDrawdownRequestCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/inbound_wire_drawdown_requests",
            body: parsed,
            model: Increase::Models::InboundWireDrawdownRequest,
            options: options
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
