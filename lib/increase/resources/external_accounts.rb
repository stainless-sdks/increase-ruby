# frozen_string_literal: true

module Increase
  module Resources
    class ExternalAccounts
      # Create an External Account
      #
      # @overload create(account_number:, description:, routing_number:, account_holder: nil, funding: nil, request_options: {})
      #
      # @param account_number [String]
      # @param description [String]
      # @param routing_number [String]
      # @param account_holder [Symbol, Increase::Models::ExternalAccountCreateParams::AccountHolder]
      # @param funding [Symbol, Increase::Models::ExternalAccountCreateParams::Funding]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ExternalAccount]
      #
      # @see Increase::Models::ExternalAccountCreateParams
      def create(params)
        parsed, options = Increase::Models::ExternalAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "external_accounts",
          body: parsed,
          model: Increase::Models::ExternalAccount,
          options: options
        )
      end

      # Retrieve an External Account
      #
      # @overload retrieve(external_account_id, request_options: {})
      #
      # @param external_account_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ExternalAccount]
      #
      # @see Increase::Models::ExternalAccountRetrieveParams
      def retrieve(external_account_id, params = {})
        @client.request(
          method: :get,
          path: ["external_accounts/%1$s", external_account_id],
          model: Increase::Models::ExternalAccount,
          options: params[:request_options]
        )
      end

      # Update an External Account
      #
      # @overload update(external_account_id, account_holder: nil, description: nil, funding: nil, status: nil, request_options: {})
      #
      # @param external_account_id [String]
      # @param account_holder [Symbol, Increase::Models::ExternalAccountUpdateParams::AccountHolder]
      # @param description [String]
      # @param funding [Symbol, Increase::Models::ExternalAccountUpdateParams::Funding]
      # @param status [Symbol, Increase::Models::ExternalAccountUpdateParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ExternalAccount]
      #
      # @see Increase::Models::ExternalAccountUpdateParams
      def update(external_account_id, params = {})
        parsed, options = Increase::Models::ExternalAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["external_accounts/%1$s", external_account_id],
          body: parsed,
          model: Increase::Models::ExternalAccount,
          options: options
        )
      end

      # List External Accounts
      #
      # @overload list(cursor: nil, idempotency_key: nil, limit: nil, routing_number: nil, status: nil, request_options: {})
      #
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param routing_number [String]
      # @param status [Increase::Models::ExternalAccountListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::ExternalAccount>]
      #
      # @see Increase::Models::ExternalAccountListParams
      def list(params = {})
        parsed, options = Increase::Models::ExternalAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "external_accounts",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::ExternalAccount,
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
