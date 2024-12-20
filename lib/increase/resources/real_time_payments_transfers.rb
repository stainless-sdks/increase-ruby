# frozen_string_literal: true

module Increase
  module Resources
    class RealTimePaymentsTransfers
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Create a Real-Time Payments Transfer
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Integer] :amount The transfer amount in USD cents. For Real-Time Payments transfers, must be
      #     positive.
      #   @option params [String] :creditor_name The name of the transfer's recipient.
      #   @option params [String] :remittance_information Unstructured information that will show on the recipient's bank statement.
      #   @option params [String] :source_account_number_id The identifier of the Account Number from which to send the transfer.
      #   @option params [String, nil] :debtor_name The name of the transfer's sender. If not provided, defaults to the name of the
      #     account's entity.
      #   @option params [String, nil] :destination_account_number The destination account number.
      #   @option params [String, nil] :destination_routing_number The destination American Bankers' Association (ABA) Routing Transit Number
      #     (RTN).
      #   @option params [String, nil] :external_account_id The ID of an External Account to initiate a transfer to. If this parameter is
      #     provided, `destination_account_number` and `destination_routing_number` must be
      #     absent.
      #   @option params [Boolean, nil] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      #   @option params [String, nil] :ultimate_creditor_name The name of the ultimate recipient of the transfer. Set this if the creditor is
      #     an intermediary receiving the payment for someone else.
      #   @option params [String, nil] :ultimate_debtor_name The name of the ultimate sender of the transfer. Set this if the funds are being
      #     sent on behalf of someone who is not the account holder at Increase.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RealTimePaymentsTransfer]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/real_time_payments_transfers",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: Increase::Models::RealTimePaymentsTransfer
        }
        @client.request(req, opts)
      end

      # Retrieve a Real-Time Payments Transfer
      #
      # @param real_time_payments_transfer_id [String] The identifier of the Real-Time Payments Transfer.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RealTimePaymentsTransfer]
      def retrieve(real_time_payments_transfer_id, opts = {})
        req = {
          method: :get,
          path: "/real_time_payments_transfers/#{real_time_payments_transfer_id}",
          model: Increase::Models::RealTimePaymentsTransfer
        }
        @client.request(req, opts)
      end

      # List Real-Time Payments Transfers
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :account_id Filter Real-Time Payments Transfers to those belonging to the specified Account.
      #   @option params [Increase::Models::RealTimePaymentsTransferListParams::CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [String, nil] :external_account_id Filter Real-Time Payments Transfers to those made to the specified External
      #     Account.
      #   @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::RealTimePaymentsTransfer>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/real_time_payments_transfers",
          query: params,
          page: Increase::Page,
          model: Increase::Models::RealTimePaymentsTransfer
        }
        @client.request(req, opts)
      end
    end
  end
end
