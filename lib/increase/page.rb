# frozen_string_literal: true

module Increase
  # @example
  # ```ruby
  # if page.has_next?
  #   page = page.next_page
  # end
  # ```
  #
  # @example
  # ```ruby
  # page.auto_paging_each do |item|
  # #   item ...
  # end
  # ```
  #
  # @example
  # ```ruby
  # items = page.to_enum.take(2)
  #
  # items => Array
  # ```
  class Page
    include Increase::BasePage

    # @return [Array<Object>]
    attr_accessor :data

    # @return [String, nil]
    attr_accessor :next_cursor

    # rubocop:disable Lint/UnusedMethodArgument
    # @private
    #
    # @param client [Increase::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param unwrapped [Hash{Symbol=>Object}]
    #
    def initialize(client:, req:, headers:, unwrapped:)
      @client = client
      @req = req
      model = req.fetch(:model)

      case unwrapped
      in {data: Array | nil => data}
        @data = data&.map { model.coerce(_1) }
      else
      end

      case unwrapped
      in {next_cursor: String | nil => next_cursor}
        @next_cursor = next_cursor
      else
      end
    end
    # rubocop:enable Lint/UnusedMethodArgument

    # @return [Boolean]
    #
    def next_page?
      !next_cursor.nil?
    end

    # @raise [Increase::HTTP::Error]
    # @return [Increase::Page]
    #
    def next_page
      unless next_page?
        raise RuntimeError.new("No more pages available; please check #next_page? before calling #next_page")
      end

      req = Increase::Util.deep_merge(@req, {query: {cursor: next_cursor}})
      @client.request(req)
    end

    # @param blk [Proc]
    #
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to #auto_paging_each")
      end
      page = self
      loop do
        page.data&.each { blk.call(_1) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    #
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} data=#{data.inspect} next_cursor=#{next_cursor.inspect}>"
    end
  end
end
