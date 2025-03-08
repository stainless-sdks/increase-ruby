# frozen_string_literal: true

module Increase
  # @private
  #
  # @abstract
  #
  module BasePage
    # rubocop:disable Lint/UnusedMethodArgument

    # @return [Boolean]
    #
    def next_page? = (raise NotImplementedError)

    # @raise [Increase::APIError]
    # @return [Increase::BasePage]
    #
    def next_page = (raise NotImplementedError)

    # @param blk [Proc]
    #
    # @return [void]
    #
    def auto_paging_each(&blk) = (raise NotImplementedError)

    # @return [Enumerable]
    #
    def to_enum = super(:auto_paging_each)

    alias_method :enum_for, :to_enum

    # @!parse
    #   # @private
    #   #
    #   # @param client [Increase::BaseClient]
    #   # @param req [Hash{Symbol=>Object}]
    #   # @param headers [Hash{String=>String}, Net::HTTPHeader]
    #   # @param page_data [Object]
    #   #
    #   def initialize(client:, req:, headers:, page_data:); end

    # rubocop:enable Lint/UnusedMethodArgument
  end
end
