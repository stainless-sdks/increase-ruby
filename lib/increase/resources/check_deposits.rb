# frozen_string_literal: true

module Increase
  module Resources
    class CheckDeposits
      def initialize(client:)
        @client = client
      end

      # Create a Check Deposit
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The identifier for the Account to deposit the check in.
      # @option params [Integer] :amount The deposit amount in the minor unit of the account currency. For dollars, for
      #   example, this is cents.
      # @option params [String] :back_image_file_id The File containing the check's back image.
      # @option params [String] :currency The currency to use for the deposit.
      # @option params [String] :front_image_file_id The File containing the check's front image.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckDeposit]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/check_deposits"
        body_params = [:account_id, :amount, :back_image_file_id, :currency, :front_image_file_id]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::CheckDeposit
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a Check Deposit
      #
      # @param check_deposit_id [String] The identifier of the Check Deposit to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckDeposit]
      def retrieve(check_deposit_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/check_deposits/#{check_deposit_id}"
        request[:model] = Increase::Models::CheckDeposit
        request.merge!(opts)
        @client.request(request)
      end

      # List Check Deposits
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Check Deposits to those belonging to the specified Account.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckDeposit]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/check_deposits"
        query_params = [:account_id, :created_at, :cursor, :idempotency_key, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::CheckDeposit
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
