# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::InboundCheckDeposits#create
      class InboundCheckDepositCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

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

        # @!method initialize(account_number_id:, amount:, check_number:, request_options: {})
        #   @param account_number_id [String] The identifier of the Account Number the Inbound Check Deposit will be against.
        #
        #   @param amount [Integer] The check amount in cents.
        #
        #   @param check_number [String] The check number on the check to be deposited.
        #
        #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
