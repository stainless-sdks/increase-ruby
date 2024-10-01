# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundACHTransfers
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
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_number_id The identifier of the Account Number the inbound ACH Transfer is for.
        # @option params [Integer] :amount The transfer amount in cents. A positive amount originates a credit transfer
        #   pushing funds to the receiving account. A negative amount originates a debit
        #   transfer pulling funds from the receiving account.
        # @option params [String, nil] :company_descriptive_date The description of the date of the transfer.
        # @option params [String, nil] :company_discretionary_data Data associated with the transfer set by the sender.
        # @option params [String, nil] :company_entry_description The description of the transfer set by the sender.
        # @option params [String, nil] :company_id The sender's company ID.
        # @option params [String, nil] :company_name The name of the sender.
        # @option params [String, nil] :receiver_id_number The ID of the receiver of the transfer.
        # @option params [String, nil] :receiver_name The name of the receiver of the transfer.
        # @option params [DateTime, nil] :resolve_at The time at which the transfer should be resolved. If not provided will resolve
        #   immediately.
        # @option params [Symbol, StandardEntryClassCode, nil] :standard_entry_class_code The standard entry class code for the transfer.
        #
        # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::InboundACHTransfer]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/inbound_ach_transfers"
          req[:body] = params
          req[:model] = Increase::Models::InboundACHTransfer
          @client.request(req, opts)
        end

        # The standard entry class code for the transfer.
        class StandardEntryClassCode < Increase::Enum
          # Corporate Credit and Debit (CCD).
          CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

          # Corporate Trade Exchange (CTX).
          CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

          # Prearranged Payments and Deposits (PPD).
          PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

          # Internet Initiated (WEB).
          INTERNET_INITIATED = :internet_initiated

          # Point of Sale (POS).
          POINT_OF_SALE = :point_of_sale

          # Telephone Initiated (TEL).
          TELEPHONE_INITIATED = :telephone_initiated

          # Customer Initiated (CIE).
          CUSTOMER_INITIATED = :customer_initiated

          # Accounts Receivable (ARC).
          ACCOUNTS_RECEIVABLE = :accounts_receivable

          # Machine Transfer (MTE).
          MACHINE_TRANSFER = :machine_transfer

          # Shared Network Transaction (SHR).
          SHARED_NETWORK_TRANSACTION = :shared_network_transaction

          # Represented Check (RCK).
          REPRESENTED_CHECK = :represented_check

          # Back Office Conversion (BOC).
          BACK_OFFICE_CONVERSION = :back_office_conversion

          # Point of Purchase (POP).
          POINT_OF_PURCHASE = :point_of_purchase

          # Check Truncation (TRC).
          CHECK_TRUNCATION = :check_truncation

          # Destroyed Check (XCK).
          DESTROYED_CHECK = :destroyed_check

          # International ACH Transaction (IAT).
          INTERNATIONAL_ACH_TRANSACTION = :international_ach_transaction
        end
      end
    end
  end
end
