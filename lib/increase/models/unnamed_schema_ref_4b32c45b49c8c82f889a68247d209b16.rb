# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef4b32c45b49c8c82f889a68247d209b16 < BaseModel
      # @!attribute [rw] category
      #   The type of addendum.
      #   @return [Symbol]
      required :category, Increase::Enum.new(:freeform)

      # @!attribute [rw] freeform
      #   Unstructured `payment_related_information` passed through by the originator.
      #   @return [Increase::Models::UnnamedSchemaRef4b32c45b49c8c82f889a68247d209b16::Freeform]
      required :freeform, -> { Increase::Models::UnnamedSchemaRef4b32c45b49c8c82f889a68247d209b16::Freeform }

      class Freeform < BaseModel
        # @!attribute [rw] entries
        #   Each entry represents an addendum received from the originator.
        #   @return [Array<Increase::Models::UnnamedSchemaRef14b420c48ea6aff1ebb11188af13903f>]
        required :entries,
                 Increase::ArrayOf.new(
                   lambda {
                     Increase::Models::UnnamedSchemaRef14b420c48ea6aff1ebb11188af13903f
                   }
                 )
      end
    end
  end
end
