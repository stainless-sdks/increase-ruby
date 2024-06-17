# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRefDfd0858d3a8bdb6c8dc0a18c2803cf44 < BaseModel
      # @!attribute [rw] method_
      #   A method that can be used to verify the individual's identity.
      #   @return [Symbol]
      required :method_,
               Increase::Enum.new(
                 :social_security_number,
                 :individual_taxpayer_identification_number,
                 :passport,
                 :drivers_license,
                 :other
               )

      # @!attribute [rw] number_last4
      #   The last 4 digits of the identification number that can be used to verify the individual's identity.
      #   @return [String]
      required :number_last4, String
    end
  end
end
