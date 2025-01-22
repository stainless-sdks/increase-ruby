# frozen_string_literal: true

module Increase
  module Models
    class RoutingNumberListParams < Increase::BaseModel
      # @!attribute routing_number
      #   Filter financial institutions by routing number.
      #
      #   @return [String]
      required :routing_number, String

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
      #   # @param routing_number [String]
      #   # @param cursor [String]
      #   # @param limit [Integer]
      #   #
      #   def initialize(routing_number:, cursor: nil, limit: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
