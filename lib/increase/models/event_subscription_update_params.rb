# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::EventSubscriptions#update
    class EventSubscriptionUpdateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] status
      #   The status to update the Event Subscription with.
      #
      #   @return [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status, nil]
      optional :status, enum: -> { Increase::Models::EventSubscriptionUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status]
      #   attr_writer :status

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      # The status to update the Event Subscription with.
      module Status
        extend Increase::Internal::Type::Enum

        # The subscription is active and Events will be delivered normally.
        ACTIVE = :active

        # The subscription is temporarily disabled and Events will not be delivered.
        DISABLED = :disabled

        # The subscription is permanently disabled and Events will not be delivered.
        DELETED = :deleted

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
