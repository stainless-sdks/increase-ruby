# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::PhysicalCards#create
    class PhysicalCard < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/physical_card/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute card_id
      #   #/components/schemas/physical_card/properties/card_id
      #
      #   @return [String]
      required :card_id, String

      # @!attribute cardholder
      #   #/components/schemas/physical_card/properties/cardholder
      #
      #   @return [Increase::Models::PhysicalCard::Cardholder]
      required :cardholder, -> { Increase::Models::PhysicalCard::Cardholder }

      # @!attribute created_at
      #   #/components/schemas/physical_card/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute idempotency_key
      #   #/components/schemas/physical_card/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute physical_card_profile_id
      #   #/components/schemas/physical_card/properties/physical_card_profile_id
      #
      #   @return [String, nil]
      required :physical_card_profile_id, String, nil?: true

      # @!attribute shipment
      #   #/components/schemas/physical_card/properties/shipment
      #
      #   @return [Increase::Models::PhysicalCard::Shipment]
      required :shipment, -> { Increase::Models::PhysicalCard::Shipment }

      # @!attribute status
      #   #/components/schemas/physical_card/properties/status
      #
      #   @return [Symbol, Increase::Models::PhysicalCard::Status]
      required :status, enum: -> { Increase::Models::PhysicalCard::Status }

      # @!attribute type
      #   #/components/schemas/physical_card/properties/type
      #
      #   @return [Symbol, Increase::Models::PhysicalCard::Type]
      required :type, enum: -> { Increase::Models::PhysicalCard::Type }

      # @!parse
      #   # #/components/schemas/physical_card
      #   #
      #   # @param id [String]
      #   # @param card_id [String]
      #   # @param cardholder [Increase::Models::PhysicalCard::Cardholder]
      #   # @param created_at [Time]
      #   # @param idempotency_key [String, nil]
      #   # @param physical_card_profile_id [String, nil]
      #   # @param shipment [Increase::Models::PhysicalCard::Shipment]
      #   # @param status [Symbol, Increase::Models::PhysicalCard::Status]
      #   # @param type [Symbol, Increase::Models::PhysicalCard::Type]
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

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::PhysicalCard#cardholder
      class Cardholder < Increase::Internal::Type::BaseModel
        # @!attribute first_name
        #   #/components/schemas/physical_card/properties/cardholder/properties/first_name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #   #/components/schemas/physical_card/properties/cardholder/properties/last_name
        #
        #   @return [String]
        required :last_name, String

        # @!parse
        #   # #/components/schemas/physical_card/properties/cardholder
        #   #
        #   # @param first_name [String]
        #   # @param last_name [String]
        #   #
        #   def initialize(first_name:, last_name:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::PhysicalCard#shipment
      class Shipment < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   #/components/schemas/physical_card/properties/shipment/properties/address
        #
        #   @return [Increase::Models::PhysicalCard::Shipment::Address]
        required :address, -> { Increase::Models::PhysicalCard::Shipment::Address }

        # @!attribute method_
        #   #/components/schemas/physical_card/properties/shipment/properties/method
        #
        #   @return [Symbol, Increase::Models::PhysicalCard::Shipment::Method]
        required :method_, enum: -> { Increase::Models::PhysicalCard::Shipment::Method }, api_name: :method

        # @!attribute status
        #   #/components/schemas/physical_card/properties/shipment/properties/status
        #
        #   @return [Symbol, Increase::Models::PhysicalCard::Shipment::Status]
        required :status, enum: -> { Increase::Models::PhysicalCard::Shipment::Status }

        # @!attribute tracking
        #   #/components/schemas/physical_card/properties/shipment/properties/tracking
        #
        #   @return [Increase::Models::PhysicalCard::Shipment::Tracking, nil]
        required :tracking, -> { Increase::Models::PhysicalCard::Shipment::Tracking }, nil?: true

        # @!parse
        #   # #/components/schemas/physical_card/properties/shipment
        #   #
        #   # @param address [Increase::Models::PhysicalCard::Shipment::Address]
        #   # @param method_ [Symbol, Increase::Models::PhysicalCard::Shipment::Method]
        #   # @param status [Symbol, Increase::Models::PhysicalCard::Shipment::Status]
        #   # @param tracking [Increase::Models::PhysicalCard::Shipment::Tracking, nil]
        #   #
        #   def initialize(address:, method_:, status:, tracking:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::PhysicalCard::Shipment#address
        class Address < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/physical_card/properties/shipment/properties/address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/physical_card/properties/shipment/properties/address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   #/components/schemas/physical_card/properties/shipment/properties/address/properties/line2
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute line3
          #   #/components/schemas/physical_card/properties/shipment/properties/address/properties/line3
          #
          #   @return [String, nil]
          required :line3, String, nil?: true

          # @!attribute name
          #   #/components/schemas/physical_card/properties/shipment/properties/address/properties/name
          #
          #   @return [String]
          required :name, String

          # @!attribute postal_code
          #   #/components/schemas/physical_card/properties/shipment/properties/address/properties/postal_code
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute state
          #   #/components/schemas/physical_card/properties/shipment/properties/address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!parse
          #   # #/components/schemas/physical_card/properties/shipment/properties/address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param line2 [String, nil]
          #   # @param line3 [String, nil]
          #   # @param name [String]
          #   # @param postal_code [String]
          #   # @param state [String]
          #   #
          #   def initialize(city:, line1:, line2:, line3:, name:, postal_code:, state:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/physical_card/properties/shipment/properties/method
        #
        # @see Increase::Models::PhysicalCard::Shipment#method_
        module Method
          extend Increase::Internal::Type::Enum

          # USPS Post with tracking.
          USPS = :usps

          # FedEx Priority Overnight, no signature.
          FEDEX_PRIORITY_OVERNIGHT = :fedex_priority_overnight

          # FedEx 2-day.
          FEDEX_2_DAY = :fedex_2_day

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/physical_card/properties/shipment/properties/status
        #
        # @see Increase::Models::PhysicalCard::Shipment#status
        module Status
          extend Increase::Internal::Type::Enum

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

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::PhysicalCard::Shipment#tracking
        class Tracking < Increase::Internal::Type::BaseModel
          # @!attribute number
          #   #/components/schemas/physical_card/properties/shipment/properties/tracking/anyOf/0/properties/number
          #
          #   @return [String]
          required :number, String

          # @!attribute return_number
          #   #/components/schemas/physical_card/properties/shipment/properties/tracking/anyOf/0/properties/return_number
          #
          #   @return [String, nil]
          required :return_number, String, nil?: true

          # @!attribute return_reason
          #   #/components/schemas/physical_card/properties/shipment/properties/tracking/anyOf/0/properties/return_reason
          #
          #   @return [String, nil]
          required :return_reason, String, nil?: true

          # @!attribute shipped_at
          #   #/components/schemas/physical_card/properties/shipment/properties/tracking/anyOf/0/properties/shipped_at
          #
          #   @return [Time]
          required :shipped_at, Time

          # @!parse
          #   # #/components/schemas/physical_card/properties/shipment/properties/tracking
          #   #
          #   # @param number [String]
          #   # @param return_number [String, nil]
          #   # @param return_reason [String, nil]
          #   # @param shipped_at [Time]
          #   #
          #   def initialize(number:, return_number:, return_reason:, shipped_at:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      # #/components/schemas/physical_card/properties/status
      #
      # @see Increase::Models::PhysicalCard#status
      module Status
        extend Increase::Internal::Type::Enum

        # The physical card is active.
        ACTIVE = :active

        # The physical card is temporarily disabled.
        DISABLED = :disabled

        # The physical card is permanently canceled.
        CANCELED = :canceled

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/physical_card/properties/type
      #
      # @see Increase::Models::PhysicalCard#type
      module Type
        extend Increase::Internal::Type::Enum

        PHYSICAL_CARD = :physical_card

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
