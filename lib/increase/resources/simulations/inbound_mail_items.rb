# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundMailItems
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

        # Simulates an inbound mail item to your account, as if someone had mailed a
        #   physical check to one of your account's Lockboxes.
        #
        # @param params [Hash] Attributes to send in this request.
        #   @option params [Integer] :amount The amount of the check to be simulated, in cents.
        #   @option params [String] :lockbox_id The identifier of the Lockbox to simulate inbound mail to.
        #   @option params [String, nil] :contents_file_id The file containing the PDF contents. If not present, a default check image file
        #     will be used.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::InboundMailItem]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/inbound_mail_items",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Increase::Models::InboundMailItem
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
