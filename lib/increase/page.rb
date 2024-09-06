# frozen_string_literal: true

module Increase
  class Page
    # @return [Array]
    attr_accessor :data

    # @return [String]
    attr_accessor :next_cursor

    # @!visibility private
    attr_accessor :client, :req, :opts

    # @!visibility private
    def initialize(model, raw_data, response, client, req, opts)
      self.data = (raw_data[:data] || []).map { |e| model.convert(e) }
      self.next_cursor = raw_data[:next_cursor]
      self.client = client
      self.req = req
      self.opts = opts
    end

    # @return [Boolean]
    def next_page?
      !next_cursor.nil?
    end

    # @return [Page]
    def next_page
      if !next_page?
        raise "No more pages available; please check #next_page? before calling #next_page"
      end
      client.request(Util.deep_merge(req, {query: {cursor: next_cursor}}), opts)
    end

    # @return [nil]
    def auto_paging_each(&blk)
      if !blk
        raise "A block must be given to #auto_paging_each"
      end
      page = self
      loop do
        page.data.each { |e| blk.call(e) }
        break if !page.next_page?
        page = page.next_page
      end
    end
  end
end
