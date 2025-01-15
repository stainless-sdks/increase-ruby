# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class DocumentCreateParams < Increase::BaseModel
        # @!attribute account_id
        #   The identifier of the Account the tax document is for.
        #
        #   @return [String]
        required :account_id, String

        # @!parse
        #   # @param account_id [String] The identifier of the Account the tax document is for.
        #   #
        #   def initialize(account_id:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
