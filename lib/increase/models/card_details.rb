# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # card_details => {
    #   card_id: String,
    #   expiration_month: Integer,
    #   expiration_year: Integer,
    #   primary_account_number: String,
    #   type: enum: Increase::Models::CardDetails::Type
    # }
    # ```
    class CardDetails < Increase::BaseModel
      # @!attribute card_id
      #   The identifier for the Card for which sensitive details have been returned.
      #
      #   @return [String]
      required :card_id, String

      # @!attribute expiration_month
      #   The month the card expires in M format (e.g., August is 8).
      #
      #   @return [Integer]
      required :expiration_month, Integer

      # @!attribute expiration_year
      #   The year the card expires in YYYY format (e.g., 2025).
      #
      #   @return [Integer]
      required :expiration_year, Integer

      # @!attribute primary_account_number
      #   The card number.
      #
      #   @return [String]
      required :primary_account_number, String

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `card_details`.
      #
      #   @return [Symbol, Increase::Models::CardDetails::Type]
      required :type, enum: -> { Increase::Models::CardDetails::Type }

      # @!attribute verification_code
      #   The three-digit verification code for the card. It's also known as the Card Verification Code (CVC), the Card Verification Value (CVV), or the Card Identification (CID).
      #
      #   @return [String]
      required :verification_code, String

      # @!parse
      #   # An object containing the sensitive details (card number, cvc, etc) for a Card.
      #   #
      #   # @param card_id [String] The identifier for the Card for which sensitive details have been returned.
      #   #
      #   # @param expiration_month [Integer] The month the card expires in M format (e.g., August is 8).
      #   #
      #   # @param expiration_year [Integer] The year the card expires in YYYY format (e.g., 2025).
      #   #
      #   # @param primary_account_number [String] The card number.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `card_details`.
      #   #
      #   # @param verification_code [String] The three-digit verification code for the card. It's also known as the Card
      #   #   Verification Code (CVC), the Card Verification Value (CVV), or the Card
      #   #   Identification (CID).
      #   #
      #   def initialize(card_id:, expiration_month:, expiration_year:, primary_account_number:, type:, verification_code:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # A constant representing the object's type. For this resource it will always be `card_details`.
      #
      # @example
      # ```ruby
      # case type
      # in :card_details
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        CARD_DETAILS = :card_details

        finalize!
      end
    end
  end
end
