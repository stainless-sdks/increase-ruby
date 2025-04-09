# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::CheckDeposits#create
    class CheckDepositCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   #/components/schemas/create_a_check_deposit_parameters/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/create_a_check_deposit_parameters/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute back_image_file_id
      #   #/components/schemas/create_a_check_deposit_parameters/properties/back_image_file_id
      #
      #   @return [String]
      required :back_image_file_id, String

      # @!attribute front_image_file_id
      #   #/components/schemas/create_a_check_deposit_parameters/properties/front_image_file_id
      #
      #   @return [String]
      required :front_image_file_id, String

      # @!attribute [r] description
      #   #/components/schemas/create_a_check_deposit_parameters/properties/description
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!parse
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param back_image_file_id [String]
      #   # @param front_image_file_id [String]
      #   # @param description [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_id:, amount:, back_image_file_id:, front_image_file_id:, description: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
