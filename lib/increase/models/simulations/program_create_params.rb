# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class ProgramCreateParams < Increase::BaseModel
        # @!parse
        #   extend Increase::Type::RequestParameters::Converter
        include Increase::RequestParameters

        # @!attribute name
        #   The name of the program being added.
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # @param name [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(name:, request_options: {}, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
