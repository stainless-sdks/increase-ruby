# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Entities#confirm
    class EntityConfirmParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] confirmed_at
      #   When your user confirmed the Entity's details. If not provided, the current time
      #   will be used.
      #
      #   @return [Time, nil]
      optional :confirmed_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :confirmed_at

      # @!method initialize(confirmed_at: nil, request_options: {})
      #   @param confirmed_at [Time]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
