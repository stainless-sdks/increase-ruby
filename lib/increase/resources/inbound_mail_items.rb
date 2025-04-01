# frozen_string_literal: true

module Increase
  module Resources
    class InboundMailItems
      # Retrieve an Inbound Mail Item
      #
      # @overload retrieve(inbound_mail_item_id, request_options: {})
      #
      # @param inbound_mail_item_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundMailItem]
      #
      # @see Increase::Models::InboundMailItemRetrieveParams
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
      # @overload list(created_at: nil, cursor: nil, limit: nil, lockbox_id: nil, request_options: {})
      #
      # @param created_at [Increase::Models::InboundMailItemListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param lockbox_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::InboundMailItem>]
      #
      # @see Increase::Models::InboundMailItemListParams
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

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
