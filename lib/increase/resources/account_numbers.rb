# frozen_string_literal: true

module Increase
  module Resources
    class AccountNumbers
      # Create an Account Number
      #
      # @param params [Increase::Models::AccountNumberCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id The Account the Account Number should belong to.
      #
      #   @option params [String] :name The name you choose for the Account Number.
      #
      #   @option params [Increase::Models::AccountNumberCreateParams::InboundACH] :inbound_ach Options related to how this Account Number should handle inbound ACH transfers.
      #
      #   @option params [Increase::Models::AccountNumberCreateParams::InboundChecks] :inbound_checks Options related to how this Account Number should handle inbound check
      #     withdrawals.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::AccountNumber]
      def create(params)
        parsed, options = Increase::Models::AccountNumberCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "account_numbers",
          body: parsed,
          model: Increase::Models::AccountNumber,
          options: options
        )
      end

      # Retrieve an Account Number
      #
      # @param account_number_id [String] The identifier of the Account Number to retrieve.
      #
      # @param params [Increase::Models::AccountNumberRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::AccountNumber]
      def retrieve(account_number_id, params = {})
        @client.request(
          method: :get,
          path: ["account_numbers/%0s", account_number_id],
          model: Increase::Models::AccountNumber,
          options: params[:request_options]
        )
      end

      # Update an Account Number
      #
      # @param account_number_id [String] The identifier of the Account Number.
      #
      # @param params [Increase::Models::AccountNumberUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::AccountNumberUpdateParams::InboundACH] :inbound_ach Options related to how this Account Number handles inbound ACH transfers.
      #
      #   @option params [Increase::Models::AccountNumberUpdateParams::InboundChecks] :inbound_checks Options related to how this Account Number should handle inbound check
      #     withdrawals.
      #
      #   @option params [String] :name The name you choose for the Account Number.
      #
      #   @option params [Symbol, Increase::Models::AccountNumberUpdateParams::Status] :status This indicates if transfers can be made to the Account Number.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::AccountNumber]
      def update(account_number_id, params = {})
        parsed, options = Increase::Models::AccountNumberUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["account_numbers/%0s", account_number_id],
          body: parsed,
          model: Increase::Models::AccountNumber,
          options: options
        )
      end

      # List Account Numbers
      #
      # @param params [Increase::Models::AccountNumberListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Account Numbers to those belonging to the specified Account.
      #
      #   @option params [Increase::Models::AccountNumberListParams::ACHDebitStatus] :ach_debit_status
      #
      #   @option params [Increase::Models::AccountNumberListParams::CreatedAt] :created_at
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
      #   @option params [Increase::Models::AccountNumberListParams::Status] :status
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::AccountNumber>]
      def list(params = {})
        parsed, options = Increase::Models::AccountNumberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "account_numbers",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::AccountNumber,
          options: options
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
