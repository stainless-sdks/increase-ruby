# frozen_string_literal: true

module Increase
  module Resources
    class InboundMailItems
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound Mail Item
      #
      # @param inbound_mail_item_id [String] The identifier of the Inbound Mail Item to retrieve.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundMailItem]
      def retrieve(inbound_mail_item_id, opts = {})
        req = {
          method: :get,
          path: "/inbound_mail_items/#{inbound_mail_item_id}",
          model: Increase::Models::InboundMailItem
        }
        @client.request(req, opts)
      end

      # List Inbound Mail Items
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Increase::Models::InboundMailItemListParams::CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #   @option params [String, nil] :lockbox_id Filter Inbound Mail Items to ones sent to the provided Lockbox.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::InboundMailItem>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/inbound_mail_items",
          query: params,
          page: Increase::Page,
          model: Increase::Models::InboundMailItem
        }
        @client.request(req, opts)
      end
    end
  end
end
