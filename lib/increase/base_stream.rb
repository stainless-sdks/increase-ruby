# frozen_string_literal: true

module Increase
  # @private
  #
  class BaseStream
    # @private
    #
    # @param url [URI::Generic]
    # @param model [Class, Increase::Converter]
    # @param status [Integer]
    # @param messages [Enumerable]
    # @param response [Net::HTTPResponse]
    #
    def initialize(url:, model:, status:, messages:, response:)
      @iter = Increase::Util.chain_fused do |y|
        messages.each do |_msg|
          decoded = JSON.parse(data, symbolize_names: true)
          y << Increase::Converter.coerce(model, decoded)
        end
      end
    end

    # @return [void]
    #
    def close = Increase::Util.close_fused!(@iter)

    # @param blk [Proc]
    #
    # @return [void]
    #
    def for_each(&)
      unless block_given?
        raise ArgumentError.new("A block must be given to #for_each")
      end
      @iter.each(&)
    end

    # @return [Enumerable]
    #
    def to_enum = @iter

    alias_method :enum_for, :to_enum
  end
end
