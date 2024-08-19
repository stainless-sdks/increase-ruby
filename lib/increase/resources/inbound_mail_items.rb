# frozen_string_literal: true

module Increase
  module Resources
    class InboundMailItems
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound Mail Item
      # 
      # @param inbound_mail_item_id [String] The identifier of the Inbound Mail Item to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::InboundMailItem]
      def retrieve(inbound_mail_item_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_mail_items/#{inbound_mail_item_id}"
        req[:model] = Increase::Models::InboundMailItem
        @client.request(req, opts)
      end

      # List Inbound Mail Items
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [String] :lockbox_id Filter Inbound Mail Items to ones sent to the provided Lockbox.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::InboundMailItem>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_mail_items"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::InboundMailItem
        @client.request(req, opts)
      end
    end
  end
end
