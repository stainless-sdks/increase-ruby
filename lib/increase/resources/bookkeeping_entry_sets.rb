# frozen_string_literal: true

module Increase
  module Resources
    class BookkeepingEntrySets
      def initialize(client:)
        @client = client
      end

      # Create a Bookkeeping Entry Set
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Array<Hash>] :entries The bookkeeping entries.
      # @option params [String] :date The date of the transaction. Optional if `transaction_id` is provided, in which
      #   case we use the `date` of that transaction. Required otherwise.
      # @option params [String] :transaction_id The identifier of the Transaction related to this entry set, if any.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BookkeepingEntrySet]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/bookkeeping_entry_sets"
        request[:body] = params
        request[:model] = Increase::Models::BookkeepingEntrySet
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a Bookkeeping Entry Set
      #
      # @param bookkeeping_entry_set_id [String] The identifier of the Bookkeeping Entry Set.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BookkeepingEntrySet]
      def retrieve(bookkeeping_entry_set_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/bookkeeping_entry_sets/#{bookkeeping_entry_set_id}"
        request[:model] = Increase::Models::BookkeepingEntrySet
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
