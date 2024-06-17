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

      # List Bookkeeping Entries
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::BookkeepingEntry>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/bookkeeping_entries"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::BookkeepingEntry
        @client.request(req, opts)
      end
    end
  end
end
