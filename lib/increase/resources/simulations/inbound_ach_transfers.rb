# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundACHTransfers
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

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
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :account_number_id The identifier of the Account Number the inbound ACH Transfer is for.
        #   @option params [Integer] :amount The transfer amount in cents. A positive amount originates a credit transfer
        #     pushing funds to the receiving account. A negative amount originates a debit
        #     transfer pulling funds from the receiving account.
        #   @option params [String, nil] :company_descriptive_date The description of the date of the transfer.
        #   @option params [String, nil] :company_discretionary_data Data associated with the transfer set by the sender.
        #   @option params [String, nil] :company_entry_description The description of the transfer set by the sender.
        #   @option params [String, nil] :company_id The sender's company ID.
        #   @option params [String, nil] :company_name The name of the sender.
        #   @option params [String, nil] :receiver_id_number The ID of the receiver of the transfer.
        #   @option params [String, nil] :receiver_name The name of the receiver of the transfer.
        #   @option params [Time, nil] :resolve_at The time at which the transfer should be resolved. If not provided will resolve
        #     immediately.
        #   @option params [Symbol, StandardEntryClassCode, nil] :standard_entry_class_code The standard entry class code for the transfer.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::InboundACHTransfer]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/inbound_ach_transfers",
            headers: {"Content-Type" => "application/json"},
            body: params,
            model: Increase::Models::InboundACHTransfer
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
