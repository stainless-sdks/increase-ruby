# frozen_string_literal: true

module Increase
  module Models
    class PhysicalCard < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] card_id
      required :card_id, String

      # @!attribute [rw] cardholder
      required :cardholder, -> { Increase::Models::PhysicalCard::Cardholder }

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] physical_card_profile_id
      required :physical_card_profile_id, String

      # @!attribute [rw] shipment
      required :shipment, -> { Increase::Models::PhysicalCard::Address }

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:active, :disabled, :canceled])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:physical_card])

      class Cardholder < BaseModel
        # @!attribute [rw] first_name
        required :first_name, String

        # @!attribute [rw] last_name
        required :last_name, String
      end

      class Address < BaseModel
        # @!attribute [rw] address
        required :address, -> { Increase::Models::PhysicalCard::Address::Address }

        # @!attribute [rw] method_
        required :method_, Increase::Enum.new([:usps, :fedex_priority_overnight, :fedex_2_day])

        # @!attribute [rw] status
        required :status,
                 Increase::Enum.new(
                   [
                     :pending,
                     :canceled,
                     :submitted,
                     :acknowledged,
                     :rejected,
                     :shipped,
                     :returned
                   ]
                 )

        # @!attribute [rw] tracking
        required :tracking, -> { Increase::Models::PhysicalCard::Address::Tracking }

        class Address < BaseModel
          # @!attribute [rw] city
          required :city, String

          # @!attribute [rw] line1
          required :line1, String

          # @!attribute [rw] line2
          required :line2, String

          # @!attribute [rw] line3
          required :line3, String

          # @!attribute [rw] name_
          required :name_, String

          # @!attribute [rw] postal_code
          required :postal_code, String

          # @!attribute [rw] state
          required :state, String
        end

        class Tracking < BaseModel
          # @!attribute [rw] number
          required :number, String

          # @!attribute [rw] return_number
          required :return_number, String

          # @!attribute [rw] return_reason
          required :return_reason, String

          # @!attribute [rw] shipped_at
          required :shipped_at, String
        end
      end
    end
  end
end
