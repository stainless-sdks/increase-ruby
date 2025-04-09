# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::AccountTransfers#create
    class AccountTransferCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   #/components/schemas/create_an_account_transfer_parameters/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/create_an_account_transfer_parameters/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute description
      #   #/components/schemas/create_an_account_transfer_parameters/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute destination_account_id
      #   #/components/schemas/create_an_account_transfer_parameters/properties/destination_account_id
      #
      #   @return [String]
      required :destination_account_id, String

      # @!attribute [r] require_approval
      #   #/components/schemas/create_an_account_transfer_parameters/properties/require_approval
      #
      #   @return [Boolean, nil]
      optional :require_approval, Increase::Internal::Type::Boolean

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :require_approval

      # @!parse
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param description [String]
      #   # @param destination_account_id [String]
      #   # @param require_approval [Boolean]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_id:,
      #     amount:,
      #     description:,
      #     destination_account_id:,
      #     require_approval: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
