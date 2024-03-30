# frozen_string_literal: true

module Increase
  module Models
    class CardDetails < BaseModel
      # @!attribute [rw] card_id
      required :card_id, String

      # @!attribute [rw] expiration_month
      required :expiration_month, Integer

      # @!attribute [rw] expiration_year
      required :expiration_year, Integer

      # @!attribute [rw] primary_account_number
      required :primary_account_number, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:card_details])

      # @!attribute [rw] verification_code
      required :verification_code, String
    end
  end
end
