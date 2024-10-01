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
      #   @return [DateTime]
      required :created_at, DateTime

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
      #   @return [Symbol, Increase::Models::PhysicalCard::Status]
      required :status, enum: -> { Increase::Models::PhysicalCard::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `physical_card`.
      #   @return [Symbol, Increase::Models::PhysicalCard::Type]
      required :type, enum: -> { Increase::Models::PhysicalCard::Type }

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
        #   @return [Symbol, Increase::Models::PhysicalCard::Shipment::Method]
        required :method_, enum: -> { Increase::Models::PhysicalCard::Shipment::Method }

        # @!attribute [rw] status
        #   The status of this shipment.
        #   @return [Symbol, Increase::Models::PhysicalCard::Shipment::Status]
        required :status, enum: -> { Increase::Models::PhysicalCard::Shipment::Status }

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

        # The shipping method.
        class Method < Increase::Enum
          # USPS Post with tracking.
          USPS = :usps

          # FedEx Priority Overnight, no signature.
          FEDEX_PRIORITY_OVERNIGHT = :fedex_priority_overnight

          # FedEx 2-day.
          FEDEX_2_DAY = :fedex_2_day
        end

        # The status of this shipment.
        class Status < Increase::Enum
          # The physical card has not yet been shipped.
          PENDING = :pending

          # The physical card shipment was canceled prior to submission.
          CANCELED = :canceled

          # The physical card shipment has been submitted to the card fulfillment provider.
          SUBMITTED = :submitted

          # The physical card shipment has been acknowledged by the card fulfillment provider and will be processed in their next batch.
          ACKNOWLEDGED = :acknowledged

          # The physical card shipment was rejected by the card printer due to an error.
          REJECTED = :rejected

          # The physical card has been shipped.
          SHIPPED = :shipped

          # The physical card shipment was returned to the sender and destroyed by the production facility.
          RETURNED = :returned
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
          #   @return [DateTime]
          required :shipped_at, DateTime
        end
      end

      # The status of the Physical Card.
      class Status < Increase::Enum
        # The physical card is active.
        ACTIVE = :active

        # The physical card is temporarily disabled.
        DISABLED = :disabled

        # The physical card is permanently canceled.
        CANCELED = :canceled
      end

      # A constant representing the object's type. For this resource it will always be `physical_card`.
      class Type < Increase::Enum
        PHYSICAL_CARD = :physical_card
      end
    end
  end
end
