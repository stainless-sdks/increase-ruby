# frozen_string_literal: true

module Increase
  module Models
    class EntityConfirmParams < Increase::BaseModel
      # @!attribute confirmed_at
      #   When your user confirmed the Entity's details. If not provided, the current time will be used.
      #
      #   @return [Time]
      optional :confirmed_at, Time

      # @!parse
      #   # @param confirmed_at [String] When your user confirmed the Entity's details. If not provided, the current time
      #   #   will be used.
      #   #
      #   def initialize(confirmed_at: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
