# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::PhysicalCards#create
    class PhysicalCardCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute card_id
      #   The underlying card representing this physical card.
      #
      #   @return [String]
      required :card_id, String

      # @!attribute cardholder
      #   Details about the cardholder, as it will appear on the physical card.
      #
      #   @return [Increase::Models::PhysicalCardCreateParams::Cardholder]
      required :cardholder, -> { Increase::PhysicalCardCreateParams::Cardholder }

      # @!attribute shipment
      #   The details used to ship this physical card.
      #
      #   @return [Increase::Models::PhysicalCardCreateParams::Shipment]
      required :shipment, -> { Increase::PhysicalCardCreateParams::Shipment }

      # @!attribute physical_card_profile_id
      #   The physical card profile to use for this physical card. The latest default
      #   physical card profile will be used if not provided.
      #
      #   @return [String, nil]
      optional :physical_card_profile_id, String

      # @!method initialize(card_id:, cardholder:, shipment:, physical_card_profile_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Increase::Models::PhysicalCardCreateParams} for more details.
      #
      #   @param card_id [String] The underlying card representing this physical card.
      #
      #   @param cardholder [Increase::Models::PhysicalCardCreateParams::Cardholder] Details about the cardholder, as it will appear on the physical card.
      #
      #   @param shipment [Increase::Models::PhysicalCardCreateParams::Shipment] The details used to ship this physical card.
      #
      #   @param physical_card_profile_id [String] The physical card profile to use for this physical card. The latest default phys
      #
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      class Cardholder < Increase::Internal::Type::BaseModel
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

        # @!method initialize(first_name:, last_name:)
        #   Details about the cardholder, as it will appear on the physical card.
        #
        #   @param first_name [String] The cardholder's first name.
        #
        #   @param last_name [String] The cardholder's last name.
      end

      class Shipment < Increase::Internal::Type::BaseModel
        # @!attribute address
        #   The address to where the card should be shipped.
        #
        #   @return [Increase::Models::PhysicalCardCreateParams::Shipment::Address]
        required :address, -> { Increase::PhysicalCardCreateParams::Shipment::Address }

        # @!attribute method_
        #   The shipping method to use.
        #
        #   @return [Symbol, Increase::Models::PhysicalCardCreateParams::Shipment::Method]
        required :method_,
                 enum: -> {
                   Increase::PhysicalCardCreateParams::Shipment::Method
                 },
                 api_name: :method

        # @!attribute schedule
        #   When this physical card should be produced by the card printer. The default timeline is the day after the card printer receives the order, except for `FEDEX_PRIORITY_OVERNIGHT` cards, which default to `SAME_DAY`. To use faster production methods, please reach out to [support@increase.com](mailto:support@increase.com).
        #
        #   @return [Symbol, Increase::Models::PhysicalCardCreateParams::Shipment::Schedule, nil]
        optional :schedule, enum: -> { Increase::PhysicalCardCreateParams::Shipment::Schedule }

        # @!method initialize(address:, method_:, schedule: nil)
        #   Some parameter documentations has been truncated, see
        #   {Increase::Models::PhysicalCardCreateParams::Shipment} for more details.
        #
        #   The details used to ship this physical card.
        #
        #   @param address [Increase::Models::PhysicalCardCreateParams::Shipment::Address] The address to where the card should be shipped.
        #
        #   @param method_ [Symbol, Increase::Models::PhysicalCardCreateParams::Shipment::Method] The shipping method to use.
        #
        #   @param schedule [Symbol, Increase::Models::PhysicalCardCreateParams::Shipment::Schedule] When this physical card should be produced by the card printer. The default time

        # @see Increase::Models::PhysicalCardCreateParams::Shipment#address
        class Address < Increase::Internal::Type::BaseModel
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
          #   The state of the shipping address.
          #
          #   @return [String]
          required :state, String

          # @!attribute country
          #   The two-character ISO 3166-1 code of the country where the card should be
          #   shipped (e.g., `US`). Please reach out to
          #   [support@increase.com](mailto:support@increase.com) to ship cards
          #   internationally.
          #
          #   @return [String, nil]
          optional :country, String

          # @!attribute line2
          #   The second line of the shipping address.
          #
          #   @return [String, nil]
          optional :line2, String

          # @!attribute line3
          #   The third line of the shipping address.
          #
          #   @return [String, nil]
          optional :line3, String

          # @!attribute phone_number
          #   The phone number of the recipient.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!method initialize(city:, line1:, name:, postal_code:, state:, country: nil, line2: nil, line3: nil, phone_number: nil)
          #   Some parameter documentations has been truncated, see
          #   {Increase::Models::PhysicalCardCreateParams::Shipment::Address} for more
          #   details.
          #
          #   The address to where the card should be shipped.
          #
          #   @param city [String] The city of the shipping address.
          #
          #   @param line1 [String] The first line of the shipping address.
          #
          #   @param name [String] The name of the recipient.
          #
          #   @param postal_code [String] The postal code of the shipping address.
          #
          #   @param state [String] The state of the shipping address.
          #
          #   @param country [String] The two-character ISO 3166-1 code of the country where the card should be shippe
          #
          #   @param line2 [String] The second line of the shipping address.
          #
          #   @param line3 [String] The third line of the shipping address.
          #
          #   @param phone_number [String] The phone number of the recipient.
        end

        # The shipping method to use.
        #
        # @see Increase::Models::PhysicalCardCreateParams::Shipment#method_
        module Method
          extend Increase::Internal::Type::Enum

          # USPS Post.
          USPS = :usps

          # FedEx Priority Overnight, no signature.
          FEDEX_PRIORITY_OVERNIGHT = :fedex_priority_overnight

          # FedEx 2-day.
          FEDEX_2_DAY = :fedex_2_day

          # DHL Worldwide Express, international shipping only.
          DHL_WORLDWIDE_EXPRESS = :dhl_worldwide_express

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # When this physical card should be produced by the card printer. The default timeline is the day after the card printer receives the order, except for `FEDEX_PRIORITY_OVERNIGHT` cards, which default to `SAME_DAY`. To use faster production methods, please reach out to [support@increase.com](mailto:support@increase.com).
        #
        # @see Increase::Models::PhysicalCardCreateParams::Shipment#schedule
        module Schedule
          extend Increase::Internal::Type::Enum

          # The physical card will be shipped one business day after the order is received by the card printer. A card that is submitted to Increase on a Monday evening (Pacific Time) will ship out on Wednesday.
          NEXT_DAY = :next_day

          # The physical card will be shipped on the same business day that the order is received by the card printer. A card that is submitted to Increase on a Monday evening (Pacific Time) will ship out on Tuesday.
          SAME_DAY = :same_day

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
