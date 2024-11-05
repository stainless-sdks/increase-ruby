# frozen_string_literal: true

module Increase
  class Page
    # @return [Array<Object>]
    attr_accessor :data

    # @return [String]
    attr_accessor :next_cursor

    # @!visibility private
    #
    # @return [Increase::Client]
    attr_accessor :client

    # @!visibility private
    #
    # @return [Hash{Symbol => Object}]
    attr_accessor :req

    # @!visibility private
    #
    # @return [Hash{Symbol => Object}]
    attr_accessor :opts

    # @!visibility private
    #
    # @param model [Object]
    # @param raw_data [Hash{Symbol => Object}]
    # @param response [Net::HTTPResponse]
    # @param client [Increase::Client]
    # @param req [Hash{Symbol => Object}]
    # @param opts [Hash{Symbol => Object}]
    def initialize(model, raw_data, _response, client, req, opts)
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

    # @raise [Increase::HTTP::Error]
    # @return [Increase::Page]
    def next_page
      unless next_page?
        raise "No more pages available; please check #next_page? before calling #next_page"
      end
      client.request(Increase::Util.deep_merge(req, {query: {cursor: next_cursor}}), opts)
    end

    # @param blk [Proc]
    #
    # @return [nil]
    def auto_paging_each(&blk)
      unless block_given?
        raise "A block must be given to #auto_paging_each"
      end
      page = self
      loop do
        page.data.each { |e| blk.call(e) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    def inspect
      "#<#{selfl.class}:0x#{object_id.to_s(16)} data=#{data.inspect} next_cursor=#{next_cursor.inspect}>"
    end
  end
end
