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
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
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
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [String, nil] :lockbox_id Filter Inbound Mail Items to ones sent to the provided Lockbox.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
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

      class CreatedAt < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end
    end
  end
end
