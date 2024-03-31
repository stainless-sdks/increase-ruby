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
        req = {}
        req[:method] = :post
        req[:path] = "/bookkeeping_entry_sets"
        req[:body] = params
        req[:model] = Increase::Models::BookkeepingEntrySet
        @client.request(req, opts)
      end

      # Retrieve a Bookkeeping Entry Set
      #
      # @param bookkeeping_entry_set_id [String] The identifier of the Bookkeeping Entry Set.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BookkeepingEntrySet]
      def retrieve(bookkeeping_entry_set_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/bookkeeping_entry_sets/#{bookkeeping_entry_set_id}"
        req[:model] = Increase::Models::BookkeepingEntrySet
        @client.request(req, opts)
      end
    end
  end
end
