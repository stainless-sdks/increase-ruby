# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingAccountUpdateParams < Increase::BaseModel
      # @!attribute name
      #   The name you choose for the account.
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
