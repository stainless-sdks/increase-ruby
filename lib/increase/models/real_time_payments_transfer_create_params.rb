# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::RealTimePaymentsTransfers#create
    class RealTimePaymentsTransferCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute amount
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute creditor_name
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/creditor_name
      #
      #   @return [String]
      required :creditor_name, String

      # @!attribute remittance_information
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/remittance_information
      #
      #   @return [String]
      required :remittance_information, String

      # @!attribute source_account_number_id
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/source_account_number_id
      #
      #   @return [String]
      required :source_account_number_id, String

      # @!attribute [r] debtor_name
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/debtor_name
      #
      #   @return [String, nil]
      optional :debtor_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :debtor_name

      # @!attribute [r] destination_account_number
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/destination_account_number
      #
      #   @return [String, nil]
      optional :destination_account_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :destination_account_number

      # @!attribute [r] destination_routing_number
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/destination_routing_number
      #
      #   @return [String, nil]
      optional :destination_routing_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :destination_routing_number

      # @!attribute [r] external_account_id
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/external_account_id
      #
      #   @return [String, nil]
      optional :external_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_account_id

      # @!attribute [r] require_approval
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/require_approval
      #
      #   @return [Boolean, nil]
      optional :require_approval, Increase::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :require_approval

      # @!attribute [r] ultimate_creditor_name
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/ultimate_creditor_name
      #
      #   @return [String, nil]
      optional :ultimate_creditor_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ultimate_creditor_name

      # @!attribute [r] ultimate_debtor_name
      #   #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/ultimate_debtor_name
      #
      #   @return [String, nil]
      optional :ultimate_debtor_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ultimate_debtor_name

      # @!parse
      #   # @param amount [Integer]
      #   # @param creditor_name [String]
      #   # @param remittance_information [String]
      #   # @param source_account_number_id [String]
      #   # @param debtor_name [String]
      #   # @param destination_account_number [String]
      #   # @param destination_routing_number [String]
      #   # @param external_account_id [String]
      #   # @param require_approval [Boolean]
      #   # @param ultimate_creditor_name [String]
      #   # @param ultimate_debtor_name [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount:,
      #     creditor_name:,
      #     remittance_information:,
      #     source_account_number_id:,
      #     debtor_name: nil,
      #     destination_account_number: nil,
      #     destination_routing_number: nil,
      #     external_account_id: nil,
      #     require_approval: nil,
      #     ultimate_creditor_name: nil,
      #     ultimate_debtor_name: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
