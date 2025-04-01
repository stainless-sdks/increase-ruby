# frozen_string_literal: true

module Increase
  module Resources
    class WireDrawdownRequests
      # Create a Wire Drawdown Request
      #
      # @param params [Increase::Models::WireDrawdownRequestCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_number_id The Account Number to which the recipient should send funds.
      #
      #   @option params [Integer] :amount The amount requested from the recipient, in USD cents.
      #
      #   @option params [String] :message_to_recipient A message the recipient will see as part of the request.
      #
      #   @option params [String] :recipient_account_number The drawdown request's recipient's account number.
      #
      #   @option params [String] :recipient_name The drawdown request's recipient's name.
      #
      #   @option params [String] :recipient_routing_number The drawdown request's recipient's routing number.
      #
      #   @option params [String] :originator_address_line1 The drawdown request originator's address line 1. This is only necessary if
      #     you're requesting a payment to a commingled account. Otherwise, we'll use the
      #     associated entity's details.
      #
      #   @option params [String] :originator_address_line2 The drawdown request originator's address line 2. This is only necessary if
      #     you're requesting a payment to a commingled account. Otherwise, we'll use the
      #     associated entity's details.
      #
      #   @option params [String] :originator_address_line3 The drawdown request originator's address line 3. This is only necessary if
      #     you're requesting a payment to a commingled account. Otherwise, we'll use the
      #     associated entity's details.
      #
      #   @option params [String] :originator_name The drawdown request originator's name. This is only necessary if you're
      #     requesting a payment to a commingled account. Otherwise, we'll use the
      #     associated entity's details.
      #
      #   @option params [String] :recipient_address_line1 Line 1 of the drawdown request's recipient's address.
      #
      #   @option params [String] :recipient_address_line2 Line 2 of the drawdown request's recipient's address.
      #
      #   @option params [String] :recipient_address_line3 Line 3 of the drawdown request's recipient's address.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
      # @param wire_drawdown_request_id [String] The identifier of the Wire Drawdown Request to retrieve.
      #
      # @param params [Increase::Models::WireDrawdownRequestRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
      # @param params [Increase::Models::WireDrawdownRequestListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::Models::WireDrawdownRequestListParams::Status] :status
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
