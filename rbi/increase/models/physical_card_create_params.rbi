# typed: strong

module Increase
  module Models
    class PhysicalCardCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(Increase::PhysicalCardCreateParams, Increase::Internal::AnyHash) }

      # The underlying card representing this physical card.
      sig { returns(String) }
      attr_accessor :card_id

      # Details about the cardholder, as it will appear on the physical card.
      sig { returns(Increase::PhysicalCardCreateParams::Cardholder) }
      attr_reader :cardholder

      sig { params(cardholder: Increase::PhysicalCardCreateParams::Cardholder::OrHash).void }
      attr_writer :cardholder

      # The details used to ship this physical card.
      sig { returns(Increase::PhysicalCardCreateParams::Shipment) }
      attr_reader :shipment

      sig { params(shipment: Increase::PhysicalCardCreateParams::Shipment::OrHash).void }
      attr_writer :shipment

      # The physical card profile to use for this physical card. The latest default
      # physical card profile will be used if not provided.
      sig { returns(T.nilable(String)) }
      attr_reader :physical_card_profile_id

      sig { params(physical_card_profile_id: String).void }
      attr_writer :physical_card_profile_id

      sig do
        params(
          card_id: String,
          cardholder: Increase::PhysicalCardCreateParams::Cardholder::OrHash,
          shipment: Increase::PhysicalCardCreateParams::Shipment::OrHash,
          physical_card_profile_id: String,
          request_options: Increase::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The underlying card representing this physical card.
      card_id:,
        # Details about the cardholder, as it will appear on the physical card.
      cardholder:,
        # The details used to ship this physical card.
      shipment:,
        # The physical card profile to use for this physical card. The latest default
      # physical card profile will be used if not provided.
      physical_card_profile_id: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              card_id: String,
              cardholder: Increase::PhysicalCardCreateParams::Cardholder,
              shipment: Increase::PhysicalCardCreateParams::Shipment,
              physical_card_profile_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class Cardholder < Increase::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Increase::PhysicalCardCreateParams::Cardholder, Increase::Internal::AnyHash) }

        # The cardholder's first name.
        sig { returns(String) }
        attr_accessor :first_name

        # The cardholder's last name.
        sig { returns(String) }
        attr_accessor :last_name

        # Details about the cardholder, as it will appear on the physical card.
        sig { params(first_name: String, last_name: String).returns(T.attached_class) }
        def self.new(
          # The cardholder's first name.
        first_name:,
          # The cardholder's last name.
        last_name:
        ); end

        sig { override.returns({first_name: String, last_name: String}) }
        def to_hash; end
      end

      class Shipment < Increase::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Increase::PhysicalCardCreateParams::Shipment, Increase::Internal::AnyHash) }

        # The address to where the card should be shipped.
        sig { returns(Increase::PhysicalCardCreateParams::Shipment::Address) }
        attr_reader :address

        sig { params(address: Increase::PhysicalCardCreateParams::Shipment::Address::OrHash).void }
        attr_writer :address

        # The shipping method to use.
        sig { returns(Increase::PhysicalCardCreateParams::Shipment::Method::OrSymbol) }
        attr_accessor :method_

        # When this physical card should be produced by the card printer. The default
        # timeline is the day after the card printer receives the order, except for
        # `FEDEX_PRIORITY_OVERNIGHT` cards, which default to `SAME_DAY`. To use faster
        # production methods, please reach out to
        # [support@increase.com](mailto:support@increase.com).
        sig { returns(T.nilable(Increase::PhysicalCardCreateParams::Shipment::Schedule::OrSymbol)) }
        attr_reader :schedule

        sig { params(schedule: Increase::PhysicalCardCreateParams::Shipment::Schedule::OrSymbol).void }
        attr_writer :schedule

        # The details used to ship this physical card.
        sig do
          params(
            address: Increase::PhysicalCardCreateParams::Shipment::Address::OrHash,
            method_: Increase::PhysicalCardCreateParams::Shipment::Method::OrSymbol,
            schedule: Increase::PhysicalCardCreateParams::Shipment::Schedule::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          # The address to where the card should be shipped.
        address:,
          # The shipping method to use.
        method_:,
          # When this physical card should be produced by the card printer. The default
        # timeline is the day after the card printer receives the order, except for
        # `FEDEX_PRIORITY_OVERNIGHT` cards, which default to `SAME_DAY`. To use faster
        # production methods, please reach out to
        # [support@increase.com](mailto:support@increase.com).
        schedule: nil
        ); end

        sig do
          override
            .returns(
              {
                address: Increase::PhysicalCardCreateParams::Shipment::Address,
                method_: Increase::PhysicalCardCreateParams::Shipment::Method::OrSymbol,
                schedule: Increase::PhysicalCardCreateParams::Shipment::Schedule::OrSymbol
              }
            )
        end
        def to_hash; end

        class Address < Increase::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(Increase::PhysicalCardCreateParams::Shipment::Address, Increase::Internal::AnyHash) }

          # The city of the shipping address.
          sig { returns(String) }
          attr_accessor :city

          # The first line of the shipping address.
          sig { returns(String) }
          attr_accessor :line1

          # The name of the recipient.
          sig { returns(String) }
          attr_accessor :name

          # The postal code of the shipping address.
          sig { returns(String) }
          attr_accessor :postal_code

          # The state of the shipping address.
          sig { returns(String) }
          attr_accessor :state

          # The two-character ISO 3166-1 code of the country where the card should be
          # shipped (e.g., `US`). Please reach out to
          # [support@increase.com](mailto:support@increase.com) to ship cards
          # internationally.
          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          # The second line of the shipping address.
          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          # The third line of the shipping address.
          sig { returns(T.nilable(String)) }
          attr_reader :line3

          sig { params(line3: String).void }
          attr_writer :line3

          # The phone number of the recipient.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # The address to where the card should be shipped.
          sig do
            params(
              city: String,
              line1: String,
              name: String,
              postal_code: String,
              state: String,
              country: String,
              line2: String,
              line3: String,
              phone_number: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            # The city of the shipping address.
          city:,
            # The first line of the shipping address.
          line1:,
            # The name of the recipient.
          name:,
            # The postal code of the shipping address.
          postal_code:,
            # The state of the shipping address.
          state:,
            # The two-character ISO 3166-1 code of the country where the card should be
          # shipped (e.g., `US`). Please reach out to
          # [support@increase.com](mailto:support@increase.com) to ship cards
          # internationally.
          country: nil,
            # The second line of the shipping address.
          line2: nil,
            # The third line of the shipping address.
          line3: nil,
            # The phone number of the recipient.
          phone_number: nil
          ); end

          sig do
            override
              .returns(
                {
                  city: String,
                  line1: String,
                  name: String,
                  postal_code: String,
                  state: String,
                  country: String,
                  line2: String,
                  line3: String,
                  phone_number: String
                }
              )
          end
          def to_hash; end
        end

        # The shipping method to use.
        module Method
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::PhysicalCardCreateParams::Shipment::Method) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # USPS Post.
          USPS = T.let(:usps, Increase::PhysicalCardCreateParams::Shipment::Method::TaggedSymbol)

          # FedEx Priority Overnight, no signature.
          FEDEX_PRIORITY_OVERNIGHT =
            T.let(:fedex_priority_overnight, Increase::PhysicalCardCreateParams::Shipment::Method::TaggedSymbol)

          # FedEx 2-day.
          FEDEX_2_DAY = T.let(:fedex_2_day, Increase::PhysicalCardCreateParams::Shipment::Method::TaggedSymbol)

          # DHL Worldwide Express, international shipping only.
          DHL_WORLDWIDE_EXPRESS =
            T.let(:dhl_worldwide_express, Increase::PhysicalCardCreateParams::Shipment::Method::TaggedSymbol)

          sig { override.returns(T::Array[Increase::PhysicalCardCreateParams::Shipment::Method::TaggedSymbol]) }
          def self.values; end
        end

        # When this physical card should be produced by the card printer. The default
        # timeline is the day after the card printer receives the order, except for
        # `FEDEX_PRIORITY_OVERNIGHT` cards, which default to `SAME_DAY`. To use faster
        # production methods, please reach out to
        # [support@increase.com](mailto:support@increase.com).
        module Schedule
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::PhysicalCardCreateParams::Shipment::Schedule) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # The physical card will be shipped one business day after the order is received by the card printer. A card that is submitted to Increase on a Monday evening (Pacific Time) will ship out on Wednesday.
          NEXT_DAY = T.let(:next_day, Increase::PhysicalCardCreateParams::Shipment::Schedule::TaggedSymbol)

          # The physical card will be shipped on the same business day that the order is received by the card printer. A card that is submitted to Increase on a Monday evening (Pacific Time) will ship out on Tuesday.
          SAME_DAY = T.let(:same_day, Increase::PhysicalCardCreateParams::Shipment::Schedule::TaggedSymbol)

          sig { override.returns(T::Array[Increase::PhysicalCardCreateParams::Shipment::Schedule::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
