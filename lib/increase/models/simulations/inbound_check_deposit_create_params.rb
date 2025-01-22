# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class InboundCheckDepositCreateParams < Increase::BaseModel
        # @!attribute account_number_id
        #   The identifier of the Account Number the Inbound Check Deposit will be against.
        #
        #   @return [String]
        required :account_number_id, String

        # @!attribute amount
        #   The check amount in cents.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute check_number
        #   The check number on the check to be deposited.
        #
        #   @return [String]
        required :check_number, String

        # @!parse
        #   # @param account_number_id [String]
        #   # @param amount [Integer]
        #   # @param check_number [String]
        #   #
        #   def initialize(account_number_id:, amount:, check_number:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
