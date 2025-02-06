# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundACHTransfers
        # Simulates an inbound ACH transfer to your account. This imitates initiating a
        #   transfer to an Increase account from a different financial institution. The
        #   transfer may be either a credit or a debit depending on if the `amount` is
        #   positive or negative. The result of calling this API will contain the created
        #   transfer. You can pass a `resolve_at` parameter to allow for a window to
        #   [action on the Inbound ACH Transfer](https://increase.com/documentation/receiving-ach-transfers).
        #   Alternatively, if you don't pass the `resolve_at` parameter the result will
        #   contain either a [Transaction](#transactions) or a
        #   [Declined Transaction](#declined-transactions) depending on whether or not the
        #   transfer is allowed.
        #
        # @param params [Increase::Models::Simulations::InboundACHTransferCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :account_number_id The identifier of the Account Number the inbound ACH Transfer is for.
        #
        #   @option params [Integer] :amount The transfer amount in cents. A positive amount originates a credit transfer
        #     pushing funds to the receiving account. A negative amount originates a debit
        #     transfer pulling funds from the receiving account.
        #
        #   @option params [String] :company_descriptive_date The description of the date of the transfer.
        #
        #   @option params [String] :company_discretionary_data Data associated with the transfer set by the sender.
        #
        #   @option params [String] :company_entry_description The description of the transfer set by the sender.
        #
        #   @option params [String] :company_id The sender's company ID.
        #
        #   @option params [String] :company_name The name of the sender.
        #
        #   @option params [String] :receiver_id_number The ID of the receiver of the transfer.
        #
        #   @option params [String] :receiver_name The name of the receiver of the transfer.
        #
        #   @option params [Time] :resolve_at The time at which the transfer should be resolved. If not provided will resolve
        #     immediately.
        #
        #   @option params [Symbol, Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode] :standard_entry_class_code The standard entry class code for the transfer.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::InboundACHTransfer]
        #
        def create(params)
          parsed, options = Increase::Models::Simulations::InboundACHTransferCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/inbound_ach_transfers",
            body: parsed,
            model: Increase::Models::InboundACHTransfer,
            options: options
          )
        end

        # @param client [Increase::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
