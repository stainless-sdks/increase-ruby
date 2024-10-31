# frozen_string_literal: true

module Increase
  module Resources
    class CheckDeposits
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Create a Check Deposit
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :account_id The identifier for the Account to deposit the check in.
      #   @option params [Integer] :amount The deposit amount in USD cents.
      #   @option params [String] :back_image_file_id The File containing the check's back image.
      #   @option params [String] :front_image_file_id The File containing the check's front image.
      #   @option params [String, nil] :description The description you choose to give the Check Deposit, for display purposes only.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckDeposit]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/check_deposits",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::CheckDeposit
        }
        @client.request(req, opts)
      end

      # Retrieve a Check Deposit
      #
      # @param check_deposit_id [String] The identifier of the Check Deposit to retrieve.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckDeposit]
      def retrieve(check_deposit_id, opts = {})
        req = {
          method: :get,
          path: "/check_deposits/#{check_deposit_id}",
          model: Increase::Models::CheckDeposit
        }
        @client.request(req, opts)
      end

      # List Check Deposits
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :account_id Filter Check Deposits to those belonging to the specified Account.
      #   @option params [CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::CheckDeposit>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/check_deposits",
          query: params,
          page: Increase::Page,
          model: Increase::Models::CheckDeposit
        }
        @client.request(req, opts)
      end
    end
  end
end
