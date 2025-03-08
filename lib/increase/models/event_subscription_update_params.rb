# frozen_string_literal: true

module Increase
  module Models
    class EventSubscriptionUpdateParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute [r] status
      #   The status to update the Event Subscription with.
      #
      #   @return [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status, nil]
      optional :status, enum: -> { Increase::Models::EventSubscriptionUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param status [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(status: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @abstract
      #
      # The status to update the Event Subscription with.
      class Status < Increase::Enum
        # The subscription is active and Events will be delivered normally.
        ACTIVE = :active

        # The subscription is temporarily disabled and Events will not be delivered.
        DISABLED = :disabled

        # The subscription is permanently disabled and Events will not be delivered.
        DELETED = :deleted

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
