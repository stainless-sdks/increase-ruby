# frozen_string_literal: true

module Increase
  module Resources
    class BookkeepingEntries
      # Retrieve a Bookkeeping Entry
      #
      # @overload retrieve(bookkeeping_entry_id, request_options: {})
      #
      # @param bookkeeping_entry_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::BookkeepingEntry]
      #
      # @see Increase::Models::BookkeepingEntryRetrieveParams
      def retrieve(bookkeeping_entry_id, params = {})
        @client.request(
          method: :get,
          path: ["bookkeeping_entries/%1$s", bookkeeping_entry_id],
          model: Increase::Models::BookkeepingEntry,
          options: params[:request_options]
        )
      end

      # List Bookkeeping Entries
      #
      # @overload list(account_id: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param account_id [String]
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::BookkeepingEntry>]
      #
      # @see Increase::Models::BookkeepingEntryListParams
      def list(params = {})
        parsed, options = Increase::Models::BookkeepingEntryListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "bookkeeping_entries",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::BookkeepingEntry,
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
