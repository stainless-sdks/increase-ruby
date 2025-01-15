# frozen_string_literal: true

module Increase
  module Models
    class AccountUpdateParams < Increase::BaseModel
      # @!attribute name
      #   The new name of the Account.
      #
      #   @return [String]
      optional :name, String

      # @!parse
      #   # @param name [String] The new name of the Account.
      #   #
      #   def initialize(name: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
