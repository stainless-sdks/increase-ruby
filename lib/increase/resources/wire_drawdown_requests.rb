# frozen_string_literal: true

module Increase
  module Resources
    class WireDrawdownRequests
      def initialize(client:)
        @client = client
      end

      # Create a Wire Drawdown Request
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_number_id The Account Number to which the recipient should send funds.
      # @option params [Integer] :amount The amount requested from the recipient, in cents.
      # @option params [String] :message_to_recipient A message the recipient will see as part of the request.
      # @option params [String] :recipient_account_number The drawdown request's recipient's account number.
      # @option params [String] :recipient_name The drawdown request's recipient's name.
      # @option params [String] :recipient_routing_number The drawdown request's recipient's routing number.
      # @option params [String] :originator_address_line1 The drawdown request originator's address line 1. This is only necessary if
      #   you're requesting a payment to a commingled account. Otherwise, we'll use the
      #   associated entity's details.
      # @option params [String] :originator_address_line2 The drawdown request originator's address line 2. This is only necessary if
      #   you're requesting a payment to a commingled account. Otherwise, we'll use the
      #   associated entity's details.
      # @option params [String] :originator_address_line3 The drawdown request originator's address line 3. This is only necessary if
      #   you're requesting a payment to a commingled account. Otherwise, we'll use the
      #   associated entity's details.
      # @option params [String] :originator_name The drawdown request originator's name. This is only necessary if you're
      #   requesting a payment to a commingled account. Otherwise, we'll use the
      #   associated entity's details.
      # @option params [String] :recipient_address_line1 Line 1 of the drawdown request's recipient's address.
      # @option params [String] :recipient_address_line2 Line 2 of the drawdown request's recipient's address.
      # @option params [String] :recipient_address_line3 Line 3 of the drawdown request's recipient's address.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::WireDrawdownRequest]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/wire_drawdown_requests"
        req[:body] = params
        req[:model] = Increase::Models::WireDrawdownRequest
        @client.request(req, opts)
      end

      # Retrieve a Wire Drawdown Request
      # 
      # @param wire_drawdown_request_id [String] The identifier of the Wire Drawdown Request to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::WireDrawdownRequest]
      def retrieve(wire_drawdown_request_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/wire_drawdown_requests/#{wire_drawdown_request_id}"
        req[:model] = Increase::Models::WireDrawdownRequest
        @client.request(req, opts)
      end

      # List Wire Drawdown Requests
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Symbol] :status Filter Wire Drawdown Requests for those with the specified status.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::WireDrawdownRequest>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/wire_drawdown_requests"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::WireDrawdownRequest
        @client.request(req, opts)
      end
    end
  end
end
