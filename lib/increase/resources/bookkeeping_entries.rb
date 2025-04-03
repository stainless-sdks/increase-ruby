# frozen_string_literal: true

module Increase
  module Resources
    class BookkeepingEntries
      # Retrieve a Bookkeeping Entry
      #
      # @param bookkeeping_entry_id [String] The identifier of the Bookkeeping Entry.
      #
      # @param params [Increase::Models::BookkeepingEntryRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::BookkeepingEntry]
      def retrieve(bookkeeping_entry_id, params = {})
        @client.request(
          method: :get,
          path: ["bookkeeping_entries/%0s", bookkeeping_entry_id],
          model: Increase::Models::BookkeepingEntry,
          options: params[:request_options]
        )
      end

      # List Bookkeeping Entries
      #
      # @param params [Increase::Models::BookkeepingEntryListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id The identifier for the Bookkeeping Account to filter by.
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::BookkeepingEntry>]
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

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
