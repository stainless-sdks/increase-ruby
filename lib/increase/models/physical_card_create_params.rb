# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::PhysicalCards#create
    class PhysicalCardCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute card_id
      #   #/components/schemas/create_a_physical_card_parameters/properties/card_id
      #
      #   @return [String]
      required :card_id, String

      # @!attribute cardholder
      #   #/components/schemas/create_a_physical_card_parameters/properties/cardholder
      #
      #   @return [Increase::Models::PhysicalCardCreateParams::Cardholder]
      required :cardholder, -> { Increase::Models::PhysicalCardCreateParams::Cardholder }

      # @!attribute shipment
      #   #/components/schemas/create_a_physical_card_parameters/properties/shipment
      #
      #   @return [Increase::Models::PhysicalCardCreateParams::Shipment]
      required :shipment, -> { Increase::Models::PhysicalCardCreateParams::Shipment }

      # @!attribute [r] physical_card_profile_id
      #   #/components/schemas/create_a_physical_card_parameters/properties/physical_card_profile_id
      #
      #   @return [String, nil]
      optional :physical_card_profile_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :physical_card_profile_id

      # @!parse
      #   # @param card_id [String]
      #   # @param cardholder [Increase::Models::PhysicalCardCreateParams::Cardholder]
      #   # @param shipment [Increase::Models::PhysicalCardCreateParams::Shipment]
      #   # @param physical_card_profile_id [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(card_id:, cardholder:, shipment:, physical_card_profile_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Cardholder < Increase::Internal::Type::BaseModel
        # @!attribute first_name
        #   #/components/schemas/create_a_physical_card_parameters/properties/cardholder/properties/first_name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #   #/components/schemas/create_a_physical_card_parameters/properties/cardholder/properties/last_name
        #
        #   @return [String]
        required :last_name, String

        # @!parse
        #   # #/components/schemas/create_a_physical_card_parameters/properties/cardholder
        #   #
        #   # @param first_name [String]
        #   # @param last_name [String]
        #   #
        #   def initialize(first_name:, last_name:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      class Shipment < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address
        #
        #   @return [Increase::Models::PhysicalCardCreateParams::Shipment::Address]
        required :address, -> { Increase::Models::PhysicalCardCreateParams::Shipment::Address }

        # @!attribute method_
        #   #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/method
        #
        #   @return [Symbol, Increase::Models::PhysicalCardCreateParams::Shipment::Method]
        required :method_,
                 enum: -> { Increase::Models::PhysicalCardCreateParams::Shipment::Method },
                 api_name: :method

        # @!parse
        #   # #/components/schemas/create_a_physical_card_parameters/properties/shipment
        #   #
        #   # @param address [Increase::Models::PhysicalCardCreateParams::Shipment::Address]
        #   # @param method_ [Symbol, Increase::Models::PhysicalCardCreateParams::Shipment::Method]
        #   #
        #   def initialize(address:, method_:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::PhysicalCardCreateParams::Shipment#address
        class Address < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute name
          #   #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/name
          #
          #   @return [String]
          required :name, String

          # @!attribute postal_code
          #   #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/postal_code
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute state
          #   #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute [r] line2
          #   #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/line2
          #
          #   @return [String, nil]
          optional :line2, String

          # @!parse
          #   # @return [String]
          #   attr_writer :line2

          # @!attribute [r] line3
          #   #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/line3
          #
          #   @return [String, nil]
          optional :line3, String

          # @!parse
          #   # @return [String]
          #   attr_writer :line3

          # @!attribute [r] phone_number
          #   #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/phone_number
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!parse
          #   # @return [String]
          #   attr_writer :phone_number

          # @!parse
          #   # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param name [String]
          #   # @param postal_code [String]
          #   # @param state [String]
          #   # @param line2 [String]
          #   # @param line3 [String]
          #   # @param phone_number [String]
          #   #
          #   def initialize(city:, line1:, name:, postal_code:, state:, line2: nil, line3: nil, phone_number: nil, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/method
        #
        # @see Increase::Models::PhysicalCardCreateParams::Shipment#method_
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
      end
    end
  end
end
