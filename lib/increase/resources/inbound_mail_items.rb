# frozen_string_literal: true

module Increase
  module Resources
    class InboundMailItems
      # Retrieve an Inbound Mail Item
      #
      # @param inbound_mail_item_id [String] The identifier of the Inbound Mail Item to retrieve.
      #
      # @param params [Increase::Models::InboundMailItemRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::InboundMailItem]
      def retrieve(inbound_mail_item_id, params = {})
        @client.request(
          method: :get,
          path: ["inbound_mail_items/%1$s", inbound_mail_item_id],
          model: Increase::Models::InboundMailItem,
          options: params[:request_options]
        )
      end

      # List Inbound Mail Items
      #
      # @param params [Increase::Models::InboundMailItemListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::InboundMailItemListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [String] :lockbox_id Filter Inbound Mail Items to ones sent to the provided Lockbox.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::InboundMailItem>]
      def list(params = {})
        parsed, options = Increase::Models::InboundMailItemListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbound_mail_items",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::InboundMailItem,
          options: options
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
