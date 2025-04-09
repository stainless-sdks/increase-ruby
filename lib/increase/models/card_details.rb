# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Cards#details
    class CardDetails < Increase::Internal::Type::BaseModel
      # @!attribute card_id
      #   #/components/schemas/card_details/properties/card_id
      #
      #   @return [String]
      required :card_id, String

      # @!attribute expiration_month
      #   #/components/schemas/card_details/properties/expiration_month
      #
      #   @return [Integer]
      required :expiration_month, Integer

      # @!attribute expiration_year
      #   #/components/schemas/card_details/properties/expiration_year
      #
      #   @return [Integer]
      required :expiration_year, Integer

      # @!attribute primary_account_number
      #   #/components/schemas/card_details/properties/primary_account_number
      #
      #   @return [String]
      required :primary_account_number, String

      # @!attribute type
      #   #/components/schemas/card_details/properties/type
      #
      #   @return [Symbol, Increase::Models::CardDetails::Type]
      required :type, enum: -> { Increase::Models::CardDetails::Type }

      # @!attribute verification_code
      #   #/components/schemas/card_details/properties/verification_code
      #
      #   @return [String]
      required :verification_code, String

      # @!parse
      #   # #/components/schemas/card_details
      #   #
      #   # @param card_id [String]
      #   # @param expiration_month [Integer]
      #   # @param expiration_year [Integer]
      #   # @param primary_account_number [String]
      #   # @param type [Symbol, Increase::Models::CardDetails::Type]
      #   # @param verification_code [String]
      #   #
      #   def initialize(card_id:, expiration_month:, expiration_year:, primary_account_number:, type:, verification_code:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/card_details/properties/type
      #
      # @see Increase::Models::CardDetails#type
      module Type
        extend Increase::Internal::Type::Enum

        CARD_DETAILS = :card_details

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
