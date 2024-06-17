# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef895b1a0d84a5e8bb20deea91ed5ba88e < BaseModel
      # @!attribute [rw] card_verification_code
      #   Fields related to verification of the Card Verification Code, a 3-digit code on the back of the card.
      #   @return [Increase::Models::UnnamedSchemaRef895b1a0d84a5e8bb20deea91ed5ba88e::CardVerificationCode]
      required :card_verification_code,
               -> { Increase::Models::UnnamedSchemaRef895b1a0d84a5e8bb20deea91ed5ba88e::CardVerificationCode }

      # @!attribute [rw] cardholder_address
      #   Cardholder address provided in the authorization request and the address on file we verified it against.
      #   @return [Increase::Models::UnnamedSchemaRef895b1a0d84a5e8bb20deea91ed5ba88e::CardholderAddress]
      required :cardholder_address,
               -> { Increase::Models::UnnamedSchemaRef895b1a0d84a5e8bb20deea91ed5ba88e::CardholderAddress }

      class CardVerificationCode < BaseModel
        # @!attribute [rw] result
        #   The result of verifying the Card Verification Code.
        #   @return [Symbol]
        required :result, Increase::Enum.new(:not_checked, :match, :no_match)
      end

      class CardholderAddress < BaseModel
        # @!attribute [rw] actual_line1
        #   Line 1 of the address on file for the cardholder.
        #   @return [String]
        required :actual_line1, String

        # @!attribute [rw] actual_postal_code
        #   The postal code of the address on file for the cardholder.
        #   @return [String]
        required :actual_postal_code, String

        # @!attribute [rw] provided_line1
        #   The cardholder address line 1 provided for verification in the authorization request.
        #   @return [String]
        required :provided_line1, String

        # @!attribute [rw] provided_postal_code
        #   The postal code provided for verification in the authorization request.
        #   @return [String]
        required :provided_postal_code, String

        # @!attribute [rw] result
        #   The address verification result returned to the card network.
        #   @return [Symbol]
        required :result,
                 Increase::Enum.new(
                   :not_checked,
                   :postal_code_match_address_not_checked,
                   :postal_code_match_address_no_match,
                   :postal_code_no_match_address_match,
                   :match,
                   :no_match
                 )
      end
    end
  end
end
