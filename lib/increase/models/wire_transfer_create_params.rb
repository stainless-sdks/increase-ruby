# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::WireTransfers#create
    class WireTransferCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute beneficiary_name
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/beneficiary_name
      #
      #   @return [String]
      required :beneficiary_name, String

      # @!attribute message_to_recipient
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/message_to_recipient
      #
      #   @return [String]
      required :message_to_recipient, String

      # @!attribute [r] account_number
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/account_number
      #
      #   @return [String, nil]
      optional :account_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_number

      # @!attribute [r] beneficiary_address_line1
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/beneficiary_address_line1
      #
      #   @return [String, nil]
      optional :beneficiary_address_line1, String

      # @!parse
      #   # @return [String]
      #   attr_writer :beneficiary_address_line1

      # @!attribute [r] beneficiary_address_line2
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/beneficiary_address_line2
      #
      #   @return [String, nil]
      optional :beneficiary_address_line2, String

      # @!parse
      #   # @return [String]
      #   attr_writer :beneficiary_address_line2

      # @!attribute [r] beneficiary_address_line3
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/beneficiary_address_line3
      #
      #   @return [String, nil]
      optional :beneficiary_address_line3, String

      # @!parse
      #   # @return [String]
      #   attr_writer :beneficiary_address_line3

      # @!attribute [r] external_account_id
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/external_account_id
      #
      #   @return [String, nil]
      optional :external_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_account_id

      # @!attribute [r] originator_address_line1
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/originator_address_line1
      #
      #   @return [String, nil]
      optional :originator_address_line1, String

      # @!parse
      #   # @return [String]
      #   attr_writer :originator_address_line1

      # @!attribute [r] originator_address_line2
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/originator_address_line2
      #
      #   @return [String, nil]
      optional :originator_address_line2, String

      # @!parse
      #   # @return [String]
      #   attr_writer :originator_address_line2

      # @!attribute [r] originator_address_line3
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/originator_address_line3
      #
      #   @return [String, nil]
      optional :originator_address_line3, String

      # @!parse
      #   # @return [String]
      #   attr_writer :originator_address_line3

      # @!attribute [r] originator_name
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/originator_name
      #
      #   @return [String, nil]
      optional :originator_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :originator_name

      # @!attribute [r] require_approval
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/require_approval
      #
      #   @return [Boolean, nil]
      optional :require_approval, Increase::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :require_approval

      # @!attribute [r] routing_number
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/routing_number
      #
      #   @return [String, nil]
      optional :routing_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :routing_number

      # @!attribute [r] source_account_number_id
      #   #/components/schemas/create_a_wire_transfer_parameters/properties/source_account_number_id
      #
      #   @return [String, nil]
      optional :source_account_number_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :source_account_number_id

      # @!parse
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param beneficiary_name [String]
      #   # @param message_to_recipient [String]
      #   # @param account_number [String]
      #   # @param beneficiary_address_line1 [String]
      #   # @param beneficiary_address_line2 [String]
      #   # @param beneficiary_address_line3 [String]
      #   # @param external_account_id [String]
      #   # @param originator_address_line1 [String]
      #   # @param originator_address_line2 [String]
      #   # @param originator_address_line3 [String]
      #   # @param originator_name [String]
      #   # @param require_approval [Boolean]
      #   # @param routing_number [String]
      #   # @param source_account_number_id [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_id:,
      #     amount:,
      #     beneficiary_name:,
      #     message_to_recipient:,
      #     account_number: nil,
      #     beneficiary_address_line1: nil,
      #     beneficiary_address_line2: nil,
      #     beneficiary_address_line3: nil,
      #     external_account_id: nil,
      #     originator_address_line1: nil,
      #     originator_address_line2: nil,
      #     originator_address_line3: nil,
      #     originator_name: nil,
      #     require_approval: nil,
      #     routing_number: nil,
      #     source_account_number_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
