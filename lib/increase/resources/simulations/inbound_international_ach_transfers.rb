# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundInternationalACHTransfers
        def initialize(client:)
          @client = client
        end

        # Simulates an inbound international ACH transfer to your account. This imitates
        #   initiating a transfer to an Increase account from a different financial
        #   institution. The transfer may be either a credit or a debit depending on if the
        #   `amount` is positive or negative. The result of calling this API will contain
        #   the created transfer. .
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_number_id The identifier of the Account Number the inbound international ACH Transfer is
        #   for.
        # @option params [Integer] :amount The transfer amount in cents. A positive amount originates a credit transfer
        #   pushing funds to the receiving account. A negative amount originates a debit
        #   transfer pulling funds from the receiving account.
        # @option params [Integer] :foreign_payment_amount The amount in the minor unit of the foreign payment currency. For dollars, for
        #   example, this is cents.
        # @option params [String] :originating_currency_code The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) currency code for the
        #   originating bank account.
        # @option params [String] :originator_company_entry_description A description field set by the originator.
        # @option params [String] :originator_name Either the name of the originator or an intermediary money transmitter.
        # @option params [String] :receiving_company_or_individual_name The name of the receiver of the transfer.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::InboundInternationalACHTransfer]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/inbound_international_ach_transfers"
          req[:body] = params
          req[:model] = Increase::Models::InboundInternationalACHTransfer
          @client.request(req, opts)
        end
      end
    end
  end
end
