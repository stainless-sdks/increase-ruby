# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundMailItems
        # Simulates an inbound mail item to your account, as if someone had mailed a
        #   physical check to one of your account's Lockboxes.
        #
        # @param params [Increase::Models::Simulations::InboundMailItemCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
        #
        #   @option params [Integer] :amount The amount of the check to be simulated, in cents.
        #
        #   @option params [String] :lockbox_id The identifier of the Lockbox to simulate inbound mail to.
        #
        #   @option params [String] :contents_file_id The file containing the PDF contents. If not present, a default check image file
        #     will be used.
        #
        # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::InboundMailItem]
        #
        def create(params = {}, opts = {})
          parsed = Increase::Models::Simulations::InboundMailItemCreateParams.dump(params)
          req = {
            method: :post,
            path: "simulations/inbound_mail_items",
            body: parsed,
            model: Increase::Models::InboundMailItem
          }
          @client.request(req, opts)
        end

        # @param client [Increase::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
