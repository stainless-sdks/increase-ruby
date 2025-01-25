# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingAccountUpdateParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute name
      #   The name you choose for the account.
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
