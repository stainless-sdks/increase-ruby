# frozen_string_literal: true

module Increase
  module Resources
    class CheckDeposits
      # Create a Check Deposit
      #
      # @param params [Increase::Models::CheckDepositCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id The identifier for the Account to deposit the check in.
      #
      #   @option params [Integer] :amount The deposit amount in USD cents.
      #
      #   @option params [String] :back_image_file_id The File containing the check's back image.
      #
      #   @option params [String] :front_image_file_id The File containing the check's front image.
      #
      #   @option params [String] :description The description you choose to give the Check Deposit, for display purposes only.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::CheckDeposit]
      #
      def create(params)
        parsed, options = Increase::Models::CheckDepositCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "check_deposits",
          body: parsed,
          model: Increase::Models::CheckDeposit,
          options: options
        )
      end

      # Retrieve a Check Deposit
      #
      # @param check_deposit_id [String] The identifier of the Check Deposit to retrieve.
      #
      # @param params [Increase::Models::CheckDepositRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::CheckDeposit]
      #
      def retrieve(check_deposit_id, params = {})
        @client.request(
          method: :get,
          path: ["check_deposits/%0s", check_deposit_id],
          model: Increase::Models::CheckDeposit,
          options: params[:request_options]
        )
      end

      # List Check Deposits
      #
      # @param params [Increase::Models::CheckDepositListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Check Deposits to those belonging to the specified Account.
      #
      #   @option params [Increase::Models::CheckDepositListParams::CreatedAt] :created_at
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
      # @return [Increase::Page<Increase::Models::CheckDeposit>]
      #
      def list(params = {})
        parsed, options = Increase::Models::CheckDepositListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "check_deposits",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::CheckDeposit,
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
