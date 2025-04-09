# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::InboundRealTimePaymentsTransfers#create
      class InboundRealTimePaymentsTransferCreateParams < Increase::Internal::Type::BaseModel
        # @!parse
        #   extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # @!attribute account_number_id
        #   #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/account_number_id
        #
        #   @return [String]
        required :account_number_id, String

        # @!attribute amount
        #   #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [r] debtor_account_number
        #   #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/debtor_account_number
        #
        #   @return [String, nil]
        optional :debtor_account_number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :debtor_account_number

        # @!attribute [r] debtor_name
        #   #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/debtor_name
        #
        #   @return [String, nil]
        optional :debtor_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :debtor_name

        # @!attribute [r] debtor_routing_number
        #   #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/debtor_routing_number
        #
        #   @return [String, nil]
        optional :debtor_routing_number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :debtor_routing_number

        # @!attribute [r] remittance_information
        #   #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/remittance_information
        #
        #   @return [String, nil]
        optional :remittance_information, String

        # @!parse
        #   # @return [String]
        #   attr_writer :remittance_information

        # @!attribute [r] request_for_payment_id
        #   #/components/schemas/sandbox_create_an_inbound_real_time_payments_transfer_parameters/properties/request_for_payment_id
        #
        #   @return [String, nil]
        optional :request_for_payment_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :request_for_payment_id

        # @!parse
        #   # @param account_number_id [String]
        #   # @param amount [Integer]
        #   # @param debtor_account_number [String]
        #   # @param debtor_name [String]
        #   # @param debtor_routing_number [String]
        #   # @param remittance_information [String]
        #   # @param request_for_payment_id [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     account_number_id:,
        #     amount:,
        #     debtor_account_number: nil,
        #     debtor_name: nil,
        #     debtor_routing_number: nil,
        #     remittance_information: nil,
        #     request_for_payment_id: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
