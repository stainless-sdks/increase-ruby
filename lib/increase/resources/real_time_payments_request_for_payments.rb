# frozen_string_literal: true

module Increase
  module Resources
    class RealTimePaymentsRequestForPayments
      # Create a Real-Time Payments Request for Payment
      #
      # @param params [Increase::Models::RealTimePaymentsRequestForPaymentCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount The requested amount in USD cents. Must be positive.
      #
      #   @option params [Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor] :debtor Details of the person being requested to pay.
      #
      #   @option params [String] :destination_account_number_id The identifier of the Account Number where the funds will land.
      #
      #   @option params [Date] :expires_at The expiration time for this request, in UTC. The requestee will not be able to
      #     pay after this date.
      #
      #   @option params [String] :remittance_information Unstructured information that will show on the requestee's bank statement.
      #
      #   @option params [String] :source_account_number The account number the funds will be requested from.
      #
      #   @option params [String] :source_routing_number The requestee's American Bankers' Association (ABA) Routing Transit Number
      #     (RTN).
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::RealTimePaymentsRequestForPayment]
      #
      def create(params)
        parsed, options = Increase::Models::RealTimePaymentsRequestForPaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "real_time_payments_request_for_payments",
          body: parsed,
          model: Increase::Models::RealTimePaymentsRequestForPayment,
          options: options
        )
      end

      # Retrieve a Real-Time Payments Request for Payment
      #
      # @param request_for_payment_id [String] The identifier of the Real-Time Payments Request for Payment.
      #
      # @param params [Increase::Models::RealTimePaymentsRequestForPaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::RealTimePaymentsRequestForPayment]
      #
      def retrieve(request_for_payment_id, params = {})
        @client.request(
          method: :get,
          path: ["real_time_payments_request_for_payments/%0s", request_for_payment_id],
          model: Increase::Models::RealTimePaymentsRequestForPayment,
          options: params[:request_options]
        )
      end

      # List Real-Time Payments Request for Payments
      #
      # @param params [Increase::Models::RealTimePaymentsRequestForPaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Real-Time Payments Request for Payments to those destined to the
      #     specified Account.
      #
      #   @option params [Increase::Models::RealTimePaymentsRequestForPaymentListParams::CreatedAt] :created_at
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
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::RealTimePaymentsRequestForPayment>]
      #
      def list(params = {})
        parsed, options = Increase::Models::RealTimePaymentsRequestForPaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "real_time_payments_request_for_payments",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::RealTimePaymentsRequestForPayment,
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
