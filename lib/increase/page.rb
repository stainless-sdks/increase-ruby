# frozen_string_literal: true

module Increase
  class Page
    # State for the page.
    attr_accessor :data, :next_cursor

    # State for paginaiton convenience methods.
    attr_accessor :client, :req, :opts

    def initialize(model, raw_data, _response, client, req, opts)
      self.data = raw_data.fetch(:data).map { |d| model.convert(d) }
      self.next_cursor = raw_data.fetch(:next_cursor)
      self.client = client
      self.req = req
      self.opts = opts
    end

    def next_page?
      !next_cursor.nil?
    end

    def next_page
      if !next_page?
        raise "No more pages available; use #next_page? to check for more pages at runtime"
      end
      client.request(req.merge(cursor: next_cursor), opts)
    end

    def auto_paging_each(&blk)
      if !blk
        raise "Block must be given to #auto_paging_each"
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
