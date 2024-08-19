# frozen_string_literal: true

module Increase
  module Models
    class CardDetails < BaseModel
      # @!attribute [rw] card_id
      #   The identifier for the Card for which sensitive details have been returned.
      #   @return [String]
      required :card_id, String

      # @!attribute [rw] expiration_month
      #   The month the card expires in M format (e.g., August is 8).
      #   @return [Integer]
      required :expiration_month, Integer

      # @!attribute [rw] expiration_year
      #   The year the card expires in YYYY format (e.g., 2025).
      #   @return [Integer]
      required :expiration_year, Integer

      # @!attribute [rw] primary_account_number
      #   The card number.
      #   @return [String]
      required :primary_account_number, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `card_details`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:card_details)

      # @!attribute [rw] verification_code
      #   The three-digit verification code for the card. It's also known as the Card Verification Code (CVC), the Card Verification Value (CVV), or the Card Identification (CID).
      #   @return [String]
      required :verification_code, String
    end
  end
end
