# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundACHTransfers
        # @api private
        private def initialize_resources; end

        # Simulates an inbound ACH transfer to your account. This imitates initiating a
        # transfer to an Increase account from a different financial institution. The
        # transfer may be either a credit or a debit depending on if the `amount` is
        # positive or negative. The result of calling this API will contain the created
        # transfer. You can pass a `resolve_at` parameter to allow for a window to
        # [action on the Inbound ACH Transfer](https://increase.com/documentation/receiving-ach-transfers).
        # Alternatively, if you don't pass the `resolve_at` parameter the result will
        # contain either a [Transaction](#transactions) or a
        # [Declined Transaction](#declined-transactions) depending on whether or not the
        # transfer is allowed.
        #
        # @overload create(account_number_id:, amount:, company_descriptive_date: nil, company_discretionary_data: nil, company_entry_description: nil, company_id: nil, company_name: nil, receiver_id_number: nil, receiver_name: nil, resolve_at: nil, standard_entry_class_code: nil, request_options: {})
        #
        # @param account_number_id [String]
        # @param amount [Integer]
        # @param company_descriptive_date [String]
        # @param company_discretionary_data [String]
        # @param company_entry_description [String]
        # @param company_id [String]
        # @param company_name [String]
        # @param receiver_id_number [String]
        # @param receiver_name [String]
        # @param resolve_at [Time]
        # @param standard_entry_class_code [Symbol, Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::InboundACHTransfer]
        #
        # @see Increase::Models::Simulations::InboundACHTransferCreateParams
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

        # @api private
        #
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
          initialize_resources
        end
      end
    end
  end
end
