# frozen_string_literal: true

module Increase
  module Resources
    class BookkeepingEntrySets
      # Create a Bookkeeping Entry Set
      #
      # @overload create(entries:, date: nil, transaction_id: nil, request_options: {})
      #
      # @param entries [Array<Increase::Models::BookkeepingEntrySetCreateParams::Entry>]
      # @param date [Time]
      # @param transaction_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::BookkeepingEntrySet]
      #
      # @see Increase::Models::BookkeepingEntrySetCreateParams
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
      # @overload retrieve(bookkeeping_entry_set_id, request_options: {})
      #
      # @param bookkeeping_entry_set_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::BookkeepingEntrySet]
      #
      # @see Increase::Models::BookkeepingEntrySetRetrieveParams
      def retrieve(bookkeeping_entry_set_id, params = {})
        @client.request(
          method: :get,
          path: ["bookkeeping_entry_sets/%1$s", bookkeeping_entry_set_id],
          model: Increase::Models::BookkeepingEntrySet,
          options: params[:request_options]
        )
      end

      # List Bookkeeping Entry Sets
      #
      # @overload list(cursor: nil, idempotency_key: nil, limit: nil, transaction_id: nil, request_options: {})
      #
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param transaction_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::BookkeepingEntrySet>]
      #
      # @see Increase::Models::BookkeepingEntrySetListParams
      def list(params = {})
        parsed, options = Increase::Models::BookkeepingEntrySetListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "bookkeeping_entry_sets",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::BookkeepingEntrySet,
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
