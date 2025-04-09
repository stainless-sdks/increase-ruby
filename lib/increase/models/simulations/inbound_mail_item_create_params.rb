# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::InboundMailItems#create
      class InboundMailItemCreateParams < Increase::Internal::Type::BaseModel
        # @!parse
        #   extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # @!attribute amount
        #   #/components/schemas/sandbox_create_an_inbound_mail_item_parameters/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute lockbox_id
        #   #/components/schemas/sandbox_create_an_inbound_mail_item_parameters/properties/lockbox_id
        #
        #   @return [String]
        required :lockbox_id, String

        # @!attribute [r] contents_file_id
        #   #/components/schemas/sandbox_create_an_inbound_mail_item_parameters/properties/contents_file_id
        #
        #   @return [String, nil]
        optional :contents_file_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :contents_file_id

        # @!parse
        #   # @param amount [Integer]
        #   # @param lockbox_id [String]
        #   # @param contents_file_id [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(amount:, lockbox_id:, contents_file_id: nil, request_options: {}, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
