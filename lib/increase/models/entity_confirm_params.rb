# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Entities#confirm
    class EntityConfirmParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] confirmed_at
      #   #/components/schemas/confirm_an_entitys_details_are_correct_parameters/properties/confirmed_at
      #
      #   @return [Time, nil]
      optional :confirmed_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :confirmed_at

      # @!parse
      #   # @param confirmed_at [Time]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(confirmed_at: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
