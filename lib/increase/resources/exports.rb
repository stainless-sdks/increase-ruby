# frozen_string_literal: true

module Increase
  module Resources
    class Exports
      def initialize(client:)
        @client = client
      end

      # Create an Export
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :category The type of Export to create.
      # @option params [Hash] :account_statement_ofx Options for the created export. Required if `category` is equal to
      #   `account_statement_ofx`.
      # @option params [Hash] :balance_csv Options for the created export. Required if `category` is equal to
      #   `balance_csv`.
      # @option params [Hash] :bookkeeping_account_balance_csv Options for the created export. Required if `category` is equal to
      #   `bookkeeping_account_balance_csv`.
      # @option params [Hash] :entity_csv Options for the created export. Required if `category` is equal to `entity_csv`.
      # @option params [Hash] :transaction_csv Options for the created export. Required if `category` is equal to
      #   `transaction_csv`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/exports"
        request[:body] = params
        request[:model] = Increase::Models::Export
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve an Export
      #
      # @param export_id [String] The identifier of the Export to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      def retrieve(export_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/exports/#{export_id}"
        request[:model] = Increase::Models::Export
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
