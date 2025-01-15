# frozen_string_literal: true

module Increase
  module Resources
    class BookkeepingEntries
      # Retrieve a Bookkeeping Entry
      #
      # @param bookkeeping_entry_id [String] The identifier of the Bookkeeping Entry.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BookkeepingEntry]
      #
      def retrieve(bookkeeping_entry_id, opts = {})
        req = {
          method: :get,
          path: ["bookkeeping_entries/%0s", bookkeeping_entry_id],
          model: Increase::Models::BookkeepingEntry
        }
        @client.request(req, opts)
      end

      # List Bookkeeping Entries
      #
      # @param params [Increase::Models::BookkeepingEntryListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :account_id The identifier for the Bookkeeping Account to filter by.
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::BookkeepingEntry>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::BookkeepingEntryListParams.dump(params)
        req = {
          method: :get,
          path: "bookkeeping_entries",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::BookkeepingEntry
        }
        @client.request(req, opts)
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
