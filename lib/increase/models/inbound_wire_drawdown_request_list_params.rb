# frozen_string_literal: true

module Increase
  module Models
    class InboundWireDrawdownRequestListParams < Increase::BaseModel
      # @!attribute [r] cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!parse
      #   # @param cursor [String]
      #   # @param limit [Integer]
      #   #
      #   def initialize(cursor: nil, limit: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
