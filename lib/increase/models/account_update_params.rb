# frozen_string_literal: true

module Increase
  module Models
    class AccountUpdateParams < Increase::BaseModel
      # @!attribute [r] name
      #   The new name of the Account.
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!parse
      #   # @param name [String] The new name of the Account.
      #   #
      #   def initialize(name: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
