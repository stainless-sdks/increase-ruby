# frozen_string_literal: true

module Increase
  module Models
    # @example
    #
    # ```ruby
    # physical_card => {
    #   id: String,
    #   card_id: String,
    #   cardholder: Increase::Models::PhysicalCard::Cardholder,
    #   created_at: Time,
    #   idempotency_key: String,
    #   **_
    # }
    # ```
    class PhysicalCard < Increase::BaseModel
      # @!attribute id
      #   The physical card identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute card_id
      #   The identifier for the Card this Physical Card represents.
      #
      #   @return [String]
      required :card_id, String

      # @!attribute cardholder
      #   Details about the cardholder, as it appears on the printed card.
      #
      #   @return [Increase::Models::PhysicalCard::Cardholder]
      required :cardholder, -> { Increase::Models::PhysicalCard::Cardholder }

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Physical Card was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String

      # @!attribute physical_card_profile_id
      #   The Physical Card Profile used for this Physical Card.
      #
      #   @return [String, nil]
      required :physical_card_profile_id, String

      # @!attribute shipment
      #   The details used to ship this physical card.
      #
      #   @return [Increase::Models::PhysicalCard::Shipment]
      required :shipment, -> { Increase::Models::PhysicalCard::Shipment }

      # @!attribute status
      #   The status of the Physical Card.
      #
      #   @return [Symbol, Increase::Models::PhysicalCard::Status]
      required :status, enum: -> { Increase::Models::PhysicalCard::Status }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `physical_card`.
      #
      #   @return [Symbol, Increase::Models::PhysicalCard::Type]
      required :type, enum: -> { Increase::Models::PhysicalCard::Type }

      # @!parse
      #   # Custom physical Visa cards that are shipped to your customers. The artwork is
      #   #   configurable by a connected [Card Profile](/documentation/api#card-profiles).
      #   #   The same Card can be used for multiple Physical Cards. Printing cards incurs a
      #   #   fee. Please contact [support@increase.com](mailto:support@increase.com) for
      #   #   pricing!
      #   #
      #   # @param id [String] The physical card identifier.
      #   #
      #   # @param card_id [String] The identifier for the Card this Physical Card represents.
      #   #
      #   # @param cardholder [Increase::Models::PhysicalCard::Cardholder] Details about the cardholder, as it appears on the printed card.
      #   #
      #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #   the Physical Card was created.
      #   #
      #   # @param idempotency_key [String, nil] The idempotency key you chose for this object. This value is unique across
      #   #   Increase and is used to ensure that a request is only processed once. Learn more
      #   #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param physical_card_profile_id [String, nil] The Physical Card Profile used for this Physical Card.
      #   #
      #   # @param shipment [Increase::Models::PhysicalCard::Shipment] The details used to ship this physical card.
      #   #
      #   # @param status [String] The status of the Physical Card.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `physical_card`.
      #   #
      #   def initialize(
      #     id:,
      #     card_id:,
      #     cardholder:,
      #     created_at:,
      #     idempotency_key:,
      #     physical_card_profile_id:,
      #     shipment:,
      #     status:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      #
      # ```ruby
      # cardholder => {
      #   first_name: String,
      #   last_name: String
      # }
      # ```
      class Cardholder < Increase::BaseModel
        # @!attribute first_name
        #   The cardholder's first name.
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #   The cardholder's last name.
        #
        #   @return [String]
        required :last_name, String

        # @!parse
        #   # Details about the cardholder, as it appears on the printed card.
        #   #
        #   # @param first_name [String] The cardholder's first name.
        #   #
        #   # @param last_name [String] The cardholder's last name.
        #   #
        #   def initialize(first_name:, last_name:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      #
      # ```ruby
      # shipment => {
      #   address: Increase::Models::PhysicalCard::Shipment::Address,
      #   method_: enum: Increase::Models::PhysicalCard::Shipment::Method,
      #   status: enum: Increase::Models::PhysicalCard::Shipment::Status,
      #   tracking: Increase::Models::PhysicalCard::Shipment::Tracking
      # }
      # ```
      class Shipment < Increase::BaseModel
        # @!attribute address
        #   The location to where the card's packing label is addressed.
        #
        #   @return [Increase::Models::PhysicalCard::Shipment::Address]
        required :address, -> { Increase::Models::PhysicalCard::Shipment::Address }

        # @!attribute method_
        #   The shipping method.
        #
        #   @return [Symbol, Increase::Models::PhysicalCard::Shipment::Method]
        required :method_, enum: -> { Increase::Models::PhysicalCard::Shipment::Method }, api_name: :method

        # @!attribute status
        #   The status of this shipment.
        #
        #   @return [Symbol, Increase::Models::PhysicalCard::Shipment::Status]
        required :status, enum: -> { Increase::Models::PhysicalCard::Shipment::Status }

        # @!attribute tracking
        #   Tracking details for the shipment.
        #
        #   @return [Increase::Models::PhysicalCard::Shipment::Tracking, nil]
        required :tracking, -> { Increase::Models::PhysicalCard::Shipment::Tracking }

        # @!parse
        #   # The details used to ship this physical card.
        #   #
        #   # @param address [Increase::Models::PhysicalCard::Shipment::Address] The location to where the card's packing label is addressed.
        #   #
        #   # @param method_ [String] The shipping method.
        #   #
        #   # @param status [String] The status of this shipment.
        #   #
        #   # @param tracking [Increase::Models::PhysicalCard::Shipment::Tracking, nil] Tracking details for the shipment.
        #   #
        #   def initialize(address:, method_:, status:, tracking:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # address => {
        #   city: String,
        #   line1: String,
        #   line2: String,
        #   line3: String,
        #   name: String,
        #   **_
        # }
        # ```
        class Address < Increase::BaseModel
          # @!attribute city
          #   The city of the shipping address.
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   The first line of the shipping address.
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   The second line of the shipping address.
          #
          #   @return [String, nil]
          required :line2, String

          # @!attribute line3
          #   The third line of the shipping address.
          #
          #   @return [String, nil]
          required :line3, String

          # @!attribute name
          #   The name of the recipient.
          #
          #   @return [String]
          required :name, String

          # @!attribute postal_code
          #   The postal code of the shipping address.
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute state
          #   The US state of the shipping address.
          #
          #   @return [String]
          required :state, String

          # @!parse
          #   # The location to where the card's packing label is addressed.
          #   #
          #   # @param city [String] The city of the shipping address.
          #   #
          #   # @param line1 [String] The first line of the shipping address.
          #   #
          #   # @param line2 [String, nil] The second line of the shipping address.
          #   #
          #   # @param line3 [String, nil] The third line of the shipping address.
          #   #
          #   # @param name [String] The name of the recipient.
          #   #
          #   # @param postal_code [String] The postal code of the shipping address.
          #   #
          #   # @param state [String] The US state of the shipping address.
          #   #
          #   def initialize(city:, line1:, line2:, line3:, name:, postal_code:, state:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # The shipping method.
        #
        # @example
        #
        # ```ruby
        # case method
        # in :usps
        #   # ...
        # in :fedex_priority_overnight
        #   # ...
        # in :fedex_2_day
        #   # ...
        # end
        # ```
        class Method < Increase::Enum
          # USPS Post with tracking.
          USPS = :usps

          # FedEx Priority Overnight, no signature.
          FEDEX_PRIORITY_OVERNIGHT = :fedex_priority_overnight

          # FedEx 2-day.
          FEDEX_2_DAY = :fedex_2_day

          finalize!
        end

        # The status of this shipment.
        #
        # @example
        #
        # ```ruby
        # case status
        # in :pending
        #   # ...
        # in :canceled
        #   # ...
        # in :submitted
        #   # ...
        # in :acknowledged
        #   # ...
        # in :rejected
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end

        # @example
        #
        # ```ruby
        # tracking => {
        #   number: String,
        #   return_number: String,
        #   return_reason: String,
        #   shipped_at: Time
        # }
        # ```
        class Tracking < Increase::BaseModel
          # @!attribute number
          #   The tracking number.
          #
          #   @return [String]
          required :number, String

          # @!attribute return_number
          #   For returned shipments, the tracking number of the return shipment.
          #
          #   @return [String, nil]
          required :return_number, String

          # @!attribute return_reason
          #   For returned shipments, this describes why the package was returned.
          #
          #   @return [String, nil]
          required :return_reason, String

          # @!attribute shipped_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the fulfillment provider marked the card as ready for pick-up by the shipment carrier.
          #
          #   @return [Time]
          required :shipped_at, Time

          # @!parse
          #   # Tracking details for the shipment.
          #   #
          #   # @param number [String] The tracking number.
          #   #
          #   # @param return_number [String, nil] For returned shipments, the tracking number of the return shipment.
          #   #
          #   # @param return_reason [String, nil] For returned shipments, this describes why the package was returned.
          #   #
          #   # @param shipped_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   #   the fulfillment provider marked the card as ready for pick-up by the shipment
          #   #   carrier.
          #   #
          #   def initialize(number:, return_number:, return_reason:, shipped_at:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # The status of the Physical Card.
      #
      # @example
      #
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :disabled
      #   # ...
      # in :canceled
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The physical card is active.
        ACTIVE = :active

        # The physical card is temporarily disabled.
        DISABLED = :disabled

        # The physical card is permanently canceled.
        CANCELED = :canceled

        finalize!
      end

      # A constant representing the object's type. For this resource it will always be `physical_card`.
      #
      # @example
      #
      # ```ruby
      # case type
      # in :physical_card
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        PHYSICAL_CARD = :physical_card

        finalize!
      end
    end
  end
end
