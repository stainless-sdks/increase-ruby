# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::PhysicalCards#update
    class PhysicalCardUpdateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute status
      #   #/components/schemas/update_a_physical_card_parameters/properties/status
      #
      #   @return [Symbol, Increase::Models::PhysicalCardUpdateParams::Status]
      required :status, enum: -> { Increase::Models::PhysicalCardUpdateParams::Status }

      # @!parse
      #   # @param status [Symbol, Increase::Models::PhysicalCardUpdateParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(status:, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/update_a_physical_card_parameters/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        # The physical card is active.
        ACTIVE = :active

        # The physical card is temporarily disabled.
        DISABLED = :disabled

        # The physical card is permanently canceled.
        CANCELED = :canceled

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
