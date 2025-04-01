# frozen_string_literal: true

module Increase
  module Resources
    class AccountNumbers
      # Create an Account Number
      #
      # @overload create(account_id:, name:, inbound_ach: nil, inbound_checks: nil, request_options: {})
      #
      # @param account_id [String]
      # @param name [String]
      # @param inbound_ach [Increase::Models::AccountNumberCreateParams::InboundACH]
      # @param inbound_checks [Increase::Models::AccountNumberCreateParams::InboundChecks]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::AccountNumber]
      #
      # @see Increase::Models::AccountNumberCreateParams
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
      # @overload retrieve(account_number_id, request_options: {})
      #
      # @param account_number_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::AccountNumber]
      #
      # @see Increase::Models::AccountNumberRetrieveParams
      def retrieve(account_number_id, params = {})
        @client.request(
          method: :get,
          path: ["account_numbers/%1$s", account_number_id],
          model: Increase::Models::AccountNumber,
          options: params[:request_options]
        )
      end

      # Update an Account Number
      #
      # @overload update(account_number_id, inbound_ach: nil, inbound_checks: nil, name: nil, status: nil, request_options: {})
      #
      # @param account_number_id [String]
      # @param inbound_ach [Increase::Models::AccountNumberUpdateParams::InboundACH]
      # @param inbound_checks [Increase::Models::AccountNumberUpdateParams::InboundChecks]
      # @param name [String]
      # @param status [Symbol, Increase::Models::AccountNumberUpdateParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::AccountNumber]
      #
      # @see Increase::Models::AccountNumberUpdateParams
      def update(account_number_id, params = {})
        parsed, options = Increase::Models::AccountNumberUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["account_numbers/%1$s", account_number_id],
          body: parsed,
          model: Increase::Models::AccountNumber,
          options: options
        )
      end

      # List Account Numbers
      #
      # @overload list(account_id: nil, ach_debit_status: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param account_id [String]
      # @param ach_debit_status [Increase::Models::AccountNumberListParams::ACHDebitStatus]
      # @param created_at [Increase::Models::AccountNumberListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::AccountNumberListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::AccountNumber>]
      #
      # @see Increase::Models::AccountNumberListParams
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

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
