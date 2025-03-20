# frozen_string_literal: true

module Increase
  # @example
  #   if page.has_next?
  #     page = page.next_page
  #   end
  #
  # @example
  #   page.auto_paging_each do |account|
  #     puts(account)
  #   end
  #
  # @example
  #   accounts =
  #     page
  #     .to_enum
  #     .lazy
  #     .select { _1.object_id.even? }
  #     .map(&:itself)
  #     .take(2)
  #     .to_a
  #
  #   accounts => Array
  class Page
    include Increase::BasePage

    # @return [Array<Object>, nil]
    attr_accessor :data

    # @return [String, nil]
    attr_accessor :next_cursor

    # @api private
    #
    # @param client [Increase::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param page_data [Hash{Symbol=>Object}]
    def initialize(client:, req:, headers:, page_data:)
      super
      model = req.fetch(:model)

      case page_data
      in {data: Array | nil => data}
        @data = data&.map { model.coerce(_1) }
      else
      end

      case page_data
      in {next_cursor: String | nil => next_cursor}
        @next_cursor = next_cursor
      else
      end
    end

    # @return [Boolean]
    def next_page?
      !next_cursor.nil?
    end

    # @raise [Increase::HTTP::Error]
    # @return [Increase::Page]
    def next_page
      unless next_page?
        message = "No more pages available. Please check #next_page? before calling ##{__method__}"
        raise RuntimeError.new(message)
      end

      req = Increase::Util.deep_merge(@req, {query: {cursor: next_cursor}})
      @client.request(req)
    end

    # @param blk [Proc]
    def auto_paging_each(&blk)
      unless block_given?
        raise ArgumentError.new("A block must be given to ##{__method__}")
      end
      page = self
      loop do
        page.data&.each { blk.call(_1) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)} data=#{data.inspect} next_cursor=#{next_cursor.inspect}>"
    end
  end
end
