# frozen_string_literal: true

module Increase
  module Resources
    class WireDrawdownRequests
      # Create a Wire Drawdown Request
      #
      # @overload create(account_number_id:, amount:, message_to_recipient:, recipient_account_number:, recipient_name:, recipient_routing_number:, originator_address_line1: nil, originator_address_line2: nil, originator_address_line3: nil, originator_name: nil, recipient_address_line1: nil, recipient_address_line2: nil, recipient_address_line3: nil, request_options: {})
      #
      # @param account_number_id [String]
      # @param amount [Integer]
      # @param message_to_recipient [String]
      # @param recipient_account_number [String]
      # @param recipient_name [String]
      # @param recipient_routing_number [String]
      # @param originator_address_line1 [String]
      # @param originator_address_line2 [String]
      # @param originator_address_line3 [String]
      # @param originator_name [String]
      # @param recipient_address_line1 [String]
      # @param recipient_address_line2 [String]
      # @param recipient_address_line3 [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::WireDrawdownRequest]
      #
      # @see Increase::Models::WireDrawdownRequestCreateParams
      def create(params)
        parsed, options = Increase::Models::WireDrawdownRequestCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "wire_drawdown_requests",
          body: parsed,
          model: Increase::Models::WireDrawdownRequest,
          options: options
        )
      end

      # Retrieve a Wire Drawdown Request
      #
      # @overload retrieve(wire_drawdown_request_id, request_options: {})
      #
      # @param wire_drawdown_request_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::WireDrawdownRequest]
      #
      # @see Increase::Models::WireDrawdownRequestRetrieveParams
      def retrieve(wire_drawdown_request_id, params = {})
        @client.request(
          method: :get,
          path: ["wire_drawdown_requests/%1$s", wire_drawdown_request_id],
          model: Increase::Models::WireDrawdownRequest,
          options: params[:request_options]
        )
      end

      # List Wire Drawdown Requests
      #
      # @overload list(cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::WireDrawdownRequestListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::WireDrawdownRequest>]
      #
      # @see Increase::Models::WireDrawdownRequestListParams
      def list(params = {})
        parsed, options = Increase::Models::WireDrawdownRequestListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "wire_drawdown_requests",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::WireDrawdownRequest,
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
