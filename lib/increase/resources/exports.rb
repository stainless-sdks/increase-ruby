# frozen_string_literal: true

module Increase
  module Resources
    class ExportsResource
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
        body_params = [
          :category,
          :account_statement_ofx,
          :balance_csv,
          :bookkeeping_account_balance_csv,
          :entity_csv,
          :transaction_csv
        ]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
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

      # List Exports
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Export]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/exports"
        query_params = [:cursor, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::Export
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
