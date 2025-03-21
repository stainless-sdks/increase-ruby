# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundWireDrawdownRequests
        # Simulates receiving an
        #   [Inbound Wire Drawdown Request](#inbound-wire-drawdown-requests).
        #
        # @param params [Increase::Models::Simulations::InboundWireDrawdownRequestCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Integer] :amount The amount being requested in cents.
        #
        #   @option params [String] :beneficiary_account_number The drawdown request's beneficiary's account number.
        #
        #   @option params [String] :beneficiary_routing_number The drawdown request's beneficiary's routing number.
        #
        #   @option params [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the amount being
        #     requested. Will always be "USD".
        #
        #   @option params [String] :message_to_recipient A message from the drawdown request's originator.
        #
        #   @option params [String] :originator_account_number The drawdown request's originator's account number.
        #
        #   @option params [String] :originator_routing_number The drawdown request's originator's routing number.
        #
        #   @option params [String] :recipient_account_number_id The Account Number to which the recipient of this request is being requested to
        #     send funds from.
        #
        #   @option params [String] :beneficiary_address_line1 Line 1 of the drawdown request's beneficiary's address.
        #
        #   @option params [String] :beneficiary_address_line2 Line 2 of the drawdown request's beneficiary's address.
        #
        #   @option params [String] :beneficiary_address_line3 Line 3 of the drawdown request's beneficiary's address.
        #
        #   @option params [String] :beneficiary_name The drawdown request's beneficiary's name.
        #
        #   @option params [String] :originator_address_line1 Line 1 of the drawdown request's originator's address.
        #
        #   @option params [String] :originator_address_line2 Line 2 of the drawdown request's originator's address.
        #
        #   @option params [String] :originator_address_line3 Line 3 of the drawdown request's originator's address.
        #
        #   @option params [String] :originator_name The drawdown request's originator's name.
        #
        #   @option params [String] :originator_to_beneficiary_information_line1 Line 1 of the information conveyed from the originator of the message to the
        #     beneficiary.
        #
        #   @option params [String] :originator_to_beneficiary_information_line2 Line 2 of the information conveyed from the originator of the message to the
        #     beneficiary.
        #
        #   @option params [String] :originator_to_beneficiary_information_line3 Line 3 of the information conveyed from the originator of the message to the
        #     beneficiary.
        #
        #   @option params [String] :originator_to_beneficiary_information_line4 Line 4 of the information conveyed from the originator of the message to the
        #     beneficiary.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::InboundWireDrawdownRequest]
        def create(params)
          parsed, options =
            Increase::Models::Simulations::InboundWireDrawdownRequestCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/inbound_wire_drawdown_requests",
            body: parsed,
            model: Increase::Models::InboundWireDrawdownRequest,
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
end
