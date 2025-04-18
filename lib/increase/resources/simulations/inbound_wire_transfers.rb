# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundWireTransfers
        # @api private
        private def initialize_resources; end

        # Simulates an [Inbound Wire Transfer](#inbound-wire-transfers) to your account.
        #
        # @overload create(account_number_id:, amount:, beneficiary_address_line1: nil, beneficiary_address_line2: nil, beneficiary_address_line3: nil, beneficiary_name: nil, beneficiary_reference: nil, originator_address_line1: nil, originator_address_line2: nil, originator_address_line3: nil, originator_name: nil, originator_routing_number: nil, originator_to_beneficiary_information_line1: nil, originator_to_beneficiary_information_line2: nil, originator_to_beneficiary_information_line3: nil, originator_to_beneficiary_information_line4: nil, sender_reference: nil, request_options: {})
        #
        # @param account_number_id [String]
        # @param amount [Integer]
        # @param beneficiary_address_line1 [String]
        # @param beneficiary_address_line2 [String]
        # @param beneficiary_address_line3 [String]
        # @param beneficiary_name [String]
        # @param beneficiary_reference [String]
        # @param originator_address_line1 [String]
        # @param originator_address_line2 [String]
        # @param originator_address_line3 [String]
        # @param originator_name [String]
        # @param originator_routing_number [String]
        # @param originator_to_beneficiary_information_line1 [String]
        # @param originator_to_beneficiary_information_line2 [String]
        # @param originator_to_beneficiary_information_line3 [String]
        # @param originator_to_beneficiary_information_line4 [String]
        # @param sender_reference [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
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
          initialize_resources
        end
      end
    end
  end
end
