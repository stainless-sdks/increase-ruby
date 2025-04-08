# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundMailItems
        # Simulates an inbound mail item to your account, as if someone had mailed a
        # physical check to one of your account's Lockboxes.
        #
        # @overload create(amount:, lockbox_id:, contents_file_id: nil, request_options: {})
        #
        # @param amount [Integer]
        # @param lockbox_id [String]
        # @param contents_file_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::InboundMailItem]
        #
        # @see Increase::Models::Simulations::InboundMailItemCreateParams
        def create(params)
          parsed, options = Increase::Models::Simulations::InboundMailItemCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/inbound_mail_items",
            body: parsed,
            model: Increase::Models::InboundMailItem,
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
