# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class AccountStatementCreateParams < Increase::BaseModel
        # @!attribute account_id
        #   The identifier of the Account the statement is for.
        #
        #   @return [String]
        required :account_id, String

        # @!parse
        #   # @param account_id [String] The identifier of the Account the statement is for.
        #   #
        #   def initialize(account_id:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
