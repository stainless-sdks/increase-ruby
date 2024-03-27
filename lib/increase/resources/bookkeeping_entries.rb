# frozen_string_literal: true

module Increase
  module Resources
    class BookkeepingEntriesResource
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

      # List Bookkeeping Entries
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::BookkeepingEntry]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/bookkeeping_entries"
        query_params = [:cursor, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::BookkeepingEntry
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
