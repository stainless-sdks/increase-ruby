# frozen_string_literal: true

module Increase
  module Models
    class PhysicalCard < BaseModel
      # @!attribute [rw] id
      #   The physical card identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] card_id
      #   The identifier for the Card this Physical Card represents.
      #   @return [String]
      required :card_id, String

      # @!attribute [rw] cardholder
      #   Details about the cardholder, as it appears on the printed card.
      #   @return [Increase::Models::PhysicalCard::Cardholder]
      required :cardholder, -> { Increase::Models::PhysicalCard::Cardholder }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Physical Card was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] physical_card_profile_id
      #   The Physical Card Profile used for this Physical Card.
      #   @return [String]
      required :physical_card_profile_id, String

      # @!attribute [rw] shipment
      #   The details used to ship this physical card.
      #   @return [Increase::Models::PhysicalCard::Shipment]
      required :shipment, -> { Increase::Models::PhysicalCard::Shipment }

      # @!attribute [rw] status
      #   The status of the Physical Card.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:active, :disabled, :canceled)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `physical_card`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:physical_card)

      class Cardholder < BaseModel
        # @!attribute [rw] first_name
        #   The cardholder's first name.
        #   @return [String]
        required :first_name, String

        # @!attribute [rw] last_name
        #   The cardholder's last name.
        #   @return [String]
        required :last_name, String
      end

      class Shipment < BaseModel
        # @!attribute [rw] address
        #   The location to where the card's packing label is addressed.
        #   @return [Increase::Models::PhysicalCard::Shipment::Address]
        required :address, -> { Increase::Models::PhysicalCard::Shipment::Address }

        # @!attribute [rw] method_
        #   The shipping method.
        #   @return [Symbol]
        required :method_, Increase::Enum.new(:usps, :fedex_priority_overnight, :fedex_2_day)

        # @!attribute [rw] status
        #   The status of this shipment.
        #   @return [Symbol]
        required :status,
                 Increase::Enum.new(:pending, :canceled, :submitted, :acknowledged, :rejected, :shipped, :returned)

        # @!attribute [rw] tracking
        #   Tracking details for the shipment.
        #   @return [Increase::Models::PhysicalCard::Shipment::Tracking]
        required :tracking, -> { Increase::Models::PhysicalCard::Shipment::Tracking }

        class Address < BaseModel
          # @!attribute [rw] city
          #   The city of the shipping address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the shipping address.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] line2
          #   The second line of the shipping address.
          #   @return [String]
          required :line2, String

          # @!attribute [rw] line3
          #   The third line of the shipping address.
          #   @return [String]
          required :line3, String

          # @!attribute [rw] name_
          #   The name of the recipient.
          #   @return [String]
          required :name_, String

          # @!attribute [rw] postal_code
          #   The postal code of the shipping address.
          #   @return [String]
          required :postal_code, String

          # @!attribute [rw] state
          #   The US state of the shipping address.
          #   @return [String]
          required :state, String
        end

        class Tracking < BaseModel
          # @!attribute [rw] number
          #   The tracking number.
          #   @return [String]
          required :number, String

          # @!attribute [rw] return_number
          #   For returned shipments, the tracking number of the return shipment.
          #   @return [String]
          required :return_number, String

          # @!attribute [rw] return_reason
          #   For returned shipments, this describes why the package was returned.
          #   @return [String]
          required :return_reason, String

          # @!attribute [rw] shipped_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the fulfillment provider marked the card as ready for pick-up by the shipment carrier.
          #   @return [String]
          required :shipped_at, String
        end
      end
    end
  end
end
