# frozen_string_literal: true

module Increase
  module Models
    class InboundWireDrawdownRequestListParams < Increase::BaseModel
      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String]
      optional :cursor, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100 objects.
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!parse
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   def initialize(cursor: nil, limit: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
