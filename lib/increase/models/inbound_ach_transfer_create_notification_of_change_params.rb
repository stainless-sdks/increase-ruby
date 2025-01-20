# frozen_string_literal: true

module Increase
  module Models
    class InboundACHTransferCreateNotificationOfChangeParams < Increase::BaseModel
      # @!attribute [r] updated_account_number
      #   The updated account number to send in the notification of change.
      #
      #   @return [String, nil]
      optional :updated_account_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :updated_account_number

      # @!attribute [r] updated_routing_number
      #   The updated routing number to send in the notification of change.
      #
      #   @return [String, nil]
      optional :updated_routing_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :updated_routing_number

      # @!parse
      #   # @param updated_account_number [String] The updated account number to send in the notification of change.
      #   #
      #   # @param updated_routing_number [String] The updated routing number to send in the notification of change.
      #   #
      #   def initialize(updated_account_number: nil, updated_routing_number: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
