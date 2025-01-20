# frozen_string_literal: true

module Increase
  module Models
    class EventSubscriptionUpdateParams < Increase::BaseModel
      # @!attribute [r] status
      #   The status to update the Event Subscription with.
      #
      #   @return [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status, nil]
      optional :status, enum: -> { Increase::Models::EventSubscriptionUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param status [String] The status to update the Event Subscription with.
      #   #
      #   def initialize(status: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The status to update the Event Subscription with.
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :disabled
      #   # ...
      # in :deleted
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The subscription is active and Events will be delivered normally.
        ACTIVE = :active

        # The subscription is temporarily disabled and Events will not be delivered.
        DISABLED = :disabled

        # The subscription is permanently disabled and Events will not be delivered.
        DELETED = :deleted

        finalize!
      end
    end
  end
end
