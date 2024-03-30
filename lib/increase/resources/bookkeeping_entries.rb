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
        request = {}
        request[:method] = :get
        request[:path] = "/bookkeeping_entries/#{bookkeeping_entry_id}"
        request[:model] = Increase::Models::BookkeepingEntry
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
