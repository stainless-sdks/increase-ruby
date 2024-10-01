# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireTransfers
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound Wire Transfer
      #
      # @param inbound_wire_transfer_id [String] The identifier of the Inbound Wire Transfer to get details for.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundWireTransfer]
      def retrieve(inbound_wire_transfer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_wire_transfers/#{inbound_wire_transfer_id}"
        req[:model] = Increase::Models::InboundWireTransfer
        @client.request(req, opts)
      end

      # List Inbound Wire Transfers
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Inbound Wire Tranfers to ones belonging to the specified Account.
      # @option params [String, nil] :account_number_id Filter Inbound Wire Tranfers to ones belonging to the specified Account Number.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Symbol, Status, nil] :status Filter Inbound Wire Transfers to those with the specified status.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::InboundWireTransfer>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_wire_transfers"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::InboundWireTransfer
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

      # Filter Inbound Wire Transfers to those with the specified status.
      class Status < Increase::Enum
        # The Inbound Wire Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = :pending

        # The Inbound Wire Transfer is accepted.
        ACCEPTED = :accepted

        # The Inbound Wire Transfer was declined.
        DECLINED = :declined

        # The Inbound Wire Transfer was reversed.
        REVERSED = :reversed
      end
    end
  end
end
