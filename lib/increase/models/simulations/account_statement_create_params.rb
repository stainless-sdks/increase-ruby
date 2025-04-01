# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::AccountStatements#create
      class AccountStatementCreateParams < Increase::BaseModel
        # @!parse
        #   extend Increase::Type::RequestParameters::Converter
        include Increase::RequestParameters

        # @!attribute account_id
        #   The identifier of the Account the statement is for.
        #
        #   @return [String]
        required :account_id, String

        # @!parse
        #   # @param account_id [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(account_id:, request_options: {}, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
