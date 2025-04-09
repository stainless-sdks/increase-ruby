# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::InboundACHTransfers#create_notification_of_change
    class InboundACHTransferCreateNotificationOfChangeParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] updated_account_number
      #   #/components/schemas/create_a_notification_of_change_for_an_inbound_ach_transfer_parameters/properties/updated_account_number
      #
      #   @return [String, nil]
      optional :updated_account_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :updated_account_number

      # @!attribute [r] updated_routing_number
      #   #/components/schemas/create_a_notification_of_change_for_an_inbound_ach_transfer_parameters/properties/updated_routing_number
      #
      #   @return [String, nil]
      optional :updated_routing_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :updated_routing_number

      # @!parse
      #   # @param updated_account_number [String]
      #   # @param updated_routing_number [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(updated_account_number: nil, updated_routing_number: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
