# frozen_string_literal: true

module Increase
  module Models
    class PhysicalCardUpdateParams < Increase::BaseModel
      # @!attribute status
      #   The status to update the Physical Card to.
      #
      #   @return [Symbol, Increase::Models::PhysicalCardUpdateParams::Status]
      required :status, enum: -> { Increase::Models::PhysicalCardUpdateParams::Status }

      # @!parse
      #   # @param status [String] The status to update the Physical Card to.
      #   #
      #   def initialize(status:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The status to update the Physical Card to.
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :disabled
      #   # ...
      # in :canceled
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The physical card is active.
        ACTIVE = :active

        # The physical card is temporarily disabled.
        DISABLED = :disabled

        # The physical card is permanently canceled.
        CANCELED = :canceled

        finalize!
      end
    end
  end
end
