# frozen_string_literal: true

module Increase
  module Models
    class PhysicalCardCreateParams < Increase::BaseModel
      # @!attribute card_id
      #   The underlying card representing this physical card.
      #
      #   @return [String]
      required :card_id, String

      # @!attribute cardholder
      #   Details about the cardholder, as it will appear on the physical card.
      #
      #   @return [Increase::Models::PhysicalCardCreateParams::Cardholder]
      required :cardholder, -> { Increase::Models::PhysicalCardCreateParams::Cardholder }

      # @!attribute shipment
      #   The details used to ship this physical card.
      #
      #   @return [Increase::Models::PhysicalCardCreateParams::Shipment]
      required :shipment, -> { Increase::Models::PhysicalCardCreateParams::Shipment }

      # @!attribute physical_card_profile_id
      #   The physical card profile to use for this physical card. The latest default physical card profile will be used if not provided.
      #
      #   @return [String]
      optional :physical_card_profile_id, String

      # @!parse
      #   # @param card_id [String] The underlying card representing this physical card.
      #   #
      #   # @param cardholder [Increase::Models::PhysicalCardCreateParams::Cardholder] Details about the cardholder, as it will appear on the physical card.
      #   #
      #   # @param shipment [Increase::Models::PhysicalCardCreateParams::Shipment] The details used to ship this physical card.
      #   #
      #   # @param physical_card_profile_id [String] The physical card profile to use for this physical card. The latest default
      #   #   physical card profile will be used if not provided.
      #   #
      #   def initialize(card_id:, cardholder:, shipment:, physical_card_profile_id: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
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
        #   # Details about the cardholder, as it will appear on the physical card.
        #   #
        #   # @param first_name [String] The cardholder's first name.
        #   #
        #   # @param last_name [String] The cardholder's last name.
        #   #
        #   def initialize(first_name:, last_name:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @example
      # ```ruby
      # shipment => {
      #   address: Increase::Models::PhysicalCardCreateParams::Shipment::Address,
      #   method_: enum: Increase::Models::PhysicalCardCreateParams::Shipment::Method
      # }
      # ```
      class Shipment < Increase::BaseModel
        # @!attribute address
        #   The address to where the card should be shipped.
        #
        #   @return [Increase::Models::PhysicalCardCreateParams::Shipment::Address]
        required :address, -> { Increase::Models::PhysicalCardCreateParams::Shipment::Address }

        # @!attribute method_
        #   The shipping method to use.
        #
        #   @return [Symbol, Increase::Models::PhysicalCardCreateParams::Shipment::Method]
        required :method_,
                 enum: -> { Increase::Models::PhysicalCardCreateParams::Shipment::Method },
                 api_name: :method

        # @!parse
        #   # The details used to ship this physical card.
        #   #
        #   # @param address [Increase::Models::PhysicalCardCreateParams::Shipment::Address] The address to where the card should be shipped.
        #   #
        #   # @param method_ [String] The shipping method to use.
        #   #
        #   def initialize(address:, method_:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # address => {
        #   city: String,
        #   line1: String,
        #   name: String,
        #   postal_code: String,
        #   state: String,
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

          # @!attribute line2
          #   The second line of the shipping address.
          #
          #   @return [String]
          optional :line2, String

          # @!attribute line3
          #   The third line of the shipping address.
          #
          #   @return [String]
          optional :line3, String

          # @!attribute phone_number
          #   The phone number of the recipient.
          #
          #   @return [String]
          optional :phone_number, String

          # @!parse
          #   # The address to where the card should be shipped.
          #   #
          #   # @param city [String] The city of the shipping address.
          #   #
          #   # @param line1 [String] The first line of the shipping address.
          #   #
          #   # @param name [String] The name of the recipient.
          #   #
          #   # @param postal_code [String] The postal code of the shipping address.
          #   #
          #   # @param state [String] The US state of the shipping address.
          #   #
          #   # @param line2 [String] The second line of the shipping address.
          #   #
          #   # @param line3 [String] The third line of the shipping address.
          #   #
          #   # @param phone_number [String] The phone number of the recipient.
          #   #
          #   def initialize(city:, line1:, name:, postal_code:, state:, line2: nil, line3: nil, phone_number: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # The shipping method to use.
        #
        # @example
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
      end
    end
  end
end
