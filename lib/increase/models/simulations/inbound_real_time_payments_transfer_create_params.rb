# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class InboundRealTimePaymentsTransferCreateParams < Increase::BaseModel
        # @!attribute account_number_id
        #   The identifier of the Account Number the inbound Real-Time Payments Transfer is for.
        #
        #   @return [String]
        required :account_number_id, String

        # @!attribute amount
        #   The transfer amount in USD cents. Must be positive.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute debtor_account_number
        #   The account number of the account that sent the transfer.
        #
        #   @return [String]
        optional :debtor_account_number, String

        # @!attribute debtor_name
        #   The name provided by the sender of the transfer.
        #
        #   @return [String]
        optional :debtor_name, String

        # @!attribute debtor_routing_number
        #   The routing number of the account that sent the transfer.
        #
        #   @return [String]
        optional :debtor_routing_number, String

        # @!attribute remittance_information
        #   Additional information included with the transfer.
        #
        #   @return [String]
        optional :remittance_information, String

        # @!attribute request_for_payment_id
        #   The identifier of a pending Request for Payment that this transfer will fulfill.
        #
        #   @return [String]
        optional :request_for_payment_id, String

        # @!parse
        #   # @param account_number_id [String] The identifier of the Account Number the inbound Real-Time Payments Transfer is
        #   #   for.
        #   #
        #   # @param amount [Integer] The transfer amount in USD cents. Must be positive.
        #   #
        #   # @param debtor_account_number [String] The account number of the account that sent the transfer.
        #   #
        #   # @param debtor_name [String] The name provided by the sender of the transfer.
        #   #
        #   # @param debtor_routing_number [String] The routing number of the account that sent the transfer.
        #   #
        #   # @param remittance_information [String] Additional information included with the transfer.
        #   #
        #   # @param request_for_payment_id [String] The identifier of a pending Request for Payment that this transfer will fulfill.
        #   #
        #   def initialize(
        #     account_number_id:,
        #     amount:,
        #     debtor_account_number: nil,
        #     debtor_name: nil,
        #     debtor_routing_number: nil,
        #     remittance_information: nil,
        #     request_for_payment_id: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
