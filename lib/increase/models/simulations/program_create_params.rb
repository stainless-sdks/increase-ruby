# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class ProgramCreateParams < Increase::BaseModel
        # @!attribute name
        #   The name of the program being added.
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # @param name [String]
        #   #
        #   def initialize(name:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
