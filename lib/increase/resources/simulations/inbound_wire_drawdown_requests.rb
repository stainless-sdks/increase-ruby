# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundWireDrawdownRequests
        def initialize(client:)
          @client = client
        end

        # Simulates receiving an
        #   [Inbound Wire Drawdown Request](#inbound-wire-drawdown-requests).
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Integer] :amount The amount being requested in cents.
        # @option params [String] :beneficiary_account_number The drawdown request's beneficiary's account number.
        # @option params [String] :beneficiary_routing_number The drawdown request's beneficiary's routing number.
        # @option params [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the amount being
        #   requested. Will always be "USD".
        # @option params [String] :message_to_recipient A message from the drawdown request's originator.
        # @option params [String] :originator_account_number The drawdown request's originator's account number.
        # @option params [String] :originator_routing_number The drawdown request's originator's routing number.
        # @option params [String] :recipient_account_number_id The Account Number to which the recipient of this request is being requested to
        #   send funds from.
        # @option params [String, nil] :beneficiary_address_line1 Line 1 of the drawdown request's beneficiary's address.
        # @option params [String, nil] :beneficiary_address_line2 Line 2 of the drawdown request's beneficiary's address.
        # @option params [String, nil] :beneficiary_address_line3 Line 3 of the drawdown request's beneficiary's address.
        # @option params [String, nil] :beneficiary_name The drawdown request's beneficiary's name.
        # @option params [String, nil] :originator_address_line1 Line 1 of the drawdown request's originator's address.
        # @option params [String, nil] :originator_address_line2 Line 2 of the drawdown request's originator's address.
        # @option params [String, nil] :originator_address_line3 Line 3 of the drawdown request's originator's address.
        # @option params [String, nil] :originator_name The drawdown request's originator's name.
        # @option params [String, nil] :originator_to_beneficiary_information_line1 Line 1 of the information conveyed from the originator of the message to the
        #   beneficiary.
        # @option params [String, nil] :originator_to_beneficiary_information_line2 Line 2 of the information conveyed from the originator of the message to the
        #   beneficiary.
        # @option params [String, nil] :originator_to_beneficiary_information_line3 Line 3 of the information conveyed from the originator of the message to the
        #   beneficiary.
        # @option params [String, nil] :originator_to_beneficiary_information_line4 Line 4 of the information conveyed from the originator of the message to the
        #   beneficiary.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::InboundWireDrawdownRequest]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/inbound_wire_drawdown_requests",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Increase::Models::InboundWireDrawdownRequest
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
