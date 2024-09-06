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
      # @option params [String] :front_image_file_id The File containing the check's front image.
      # @option params [String] :description The description you choose to give the Check Deposit, for display purposes only.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::CheckDeposit]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/check_deposits"
        req[:body] = params
        req[:model] = Increase::Models::CheckDeposit
        @client.request(req, opts)
      end

      # Retrieve a Check Deposit
      # 
      # @param check_deposit_id [String] The identifier of the Check Deposit to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::CheckDeposit]
      def retrieve(check_deposit_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/check_deposits/#{check_deposit_id}"
        req[:model] = Increase::Models::CheckDeposit
        @client.request(req, opts)
      end

      # List Check Deposits
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Check Deposits to those belonging to the specified Account.
      # @option params [CreatedAt] :created_at
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
      # @return [Increase::Page<Increase::Models::CheckDeposit>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/check_deposits"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::CheckDeposit
        @client.request(req, opts)
      end
    end
  end
end
