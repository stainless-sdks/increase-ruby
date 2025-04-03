# frozen_string_literal: true

module Increase
  module Resources
    class BookkeepingEntrySets
      # Create a Bookkeeping Entry Set
      #
      # @param params [Increase::Models::BookkeepingEntrySetCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Increase::Models::BookkeepingEntrySetCreateParams::Entry>] :entries The bookkeeping entries.
      #
      #   @option params [Time] :date The date of the transaction. Optional if `transaction_id` is provided, in which
      #     case we use the `date` of that transaction. Required otherwise.
      #
      #   @option params [String] :transaction_id The identifier of the Transaction related to this entry set, if any.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::BookkeepingEntrySet]
      def create(params)
        parsed, options = Increase::Models::BookkeepingEntrySetCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "bookkeeping_entry_sets",
          body: parsed,
          model: Increase::Models::BookkeepingEntrySet,
          options: options
        )
      end

      # Retrieve a Bookkeeping Entry Set
      #
      # @param bookkeeping_entry_set_id [String] The identifier of the Bookkeeping Entry Set.
      #
      # @param params [Increase::Models::BookkeepingEntrySetRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::BookkeepingEntrySet]
      def retrieve(bookkeeping_entry_set_id, params = {})
        @client.request(
          method: :get,
          path: ["bookkeeping_entry_sets/%0s", bookkeeping_entry_set_id],
          model: Increase::Models::BookkeepingEntrySet,
          options: params[:request_options]
        )
      end

      # List Bookkeeping Entry Sets
      #
      # @param params [Increase::Models::BookkeepingEntrySetListParams, Hash{Symbol=>Object}] .
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
      #   @option params [String] :transaction_id Filter to the Bookkeeping Entry Set that maps to this Transaction.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::BookkeepingEntrySet>]
      def list(params = {})
        parsed, options = Increase::Models::BookkeepingEntrySetListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "bookkeeping_entry_sets",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::BookkeepingEntrySet,
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
