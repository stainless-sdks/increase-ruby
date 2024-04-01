# frozen_string_literal: true

module Increase
  module Resources
    class BookkeepingEntries
      def initialize(client:)
        @client = client
      end

      # Retrieve a Bookkeeping Entry
      #
      # @param bookkeeping_entry_id [String] The identifier of the Bookkeeping Entry.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BookkeepingEntry]
      def retrieve(bookkeeping_entry_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/bookkeeping_entries/#{bookkeeping_entry_id}"
        req[:model] = Increase::Models::BookkeepingEntry
        @client.request(req, opts)
      end
    end
  end
end
