# typed: strong

module Increase
  module Models
    class PhysicalCardCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_physical_card_parameters/properties/card_id
      sig { returns(String) }
      attr_accessor :card_id

      # #/components/schemas/create_a_physical_card_parameters/properties/cardholder
      sig { returns(Increase::Models::PhysicalCardCreateParams::Cardholder) }
      attr_reader :cardholder

      sig do
        params(
          cardholder: T.any(Increase::Models::PhysicalCardCreateParams::Cardholder, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :cardholder

      # #/components/schemas/create_a_physical_card_parameters/properties/shipment
      sig { returns(Increase::Models::PhysicalCardCreateParams::Shipment) }
      attr_reader :shipment

      sig do
        params(shipment: T.any(Increase::Models::PhysicalCardCreateParams::Shipment, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :shipment

      # #/components/schemas/create_a_physical_card_parameters/properties/physical_card_profile_id
      sig { returns(T.nilable(String)) }
      attr_reader :physical_card_profile_id

      sig { params(physical_card_profile_id: String).void }
      attr_writer :physical_card_profile_id

      sig do
        params(
          card_id: String,
          cardholder: T.any(Increase::Models::PhysicalCardCreateParams::Cardholder, Increase::Internal::AnyHash),
          shipment: T.any(Increase::Models::PhysicalCardCreateParams::Shipment, Increase::Internal::AnyHash),
          physical_card_profile_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(card_id:, cardholder:, shipment:, physical_card_profile_id: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              card_id: String,
              cardholder: Increase::Models::PhysicalCardCreateParams::Cardholder,
              shipment: Increase::Models::PhysicalCardCreateParams::Shipment,
              physical_card_profile_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class Cardholder < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_a_physical_card_parameters/properties/cardholder/properties/first_name
        sig { returns(String) }
        attr_accessor :first_name

        # #/components/schemas/create_a_physical_card_parameters/properties/cardholder/properties/last_name
        sig { returns(String) }
        attr_accessor :last_name

        # #/components/schemas/create_a_physical_card_parameters/properties/cardholder
        sig { params(first_name: String, last_name: String).returns(T.attached_class) }
        def self.new(first_name:, last_name:); end

        sig { override.returns({first_name: String, last_name: String}) }
        def to_hash; end
      end

      class Shipment < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address
        sig { returns(Increase::Models::PhysicalCardCreateParams::Shipment::Address) }
        attr_reader :address

        sig do
          params(
            address: T.any(Increase::Models::PhysicalCardCreateParams::Shipment::Address, Increase::Internal::AnyHash)
          )
            .void
        end
        attr_writer :address

        # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/method
        sig { returns(Increase::Models::PhysicalCardCreateParams::Shipment::Method::OrSymbol) }
        attr_accessor :method_

        # #/components/schemas/create_a_physical_card_parameters/properties/shipment
        sig do
          params(
            address: T.any(Increase::Models::PhysicalCardCreateParams::Shipment::Address, Increase::Internal::AnyHash),
            method_: Increase::Models::PhysicalCardCreateParams::Shipment::Method::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(address:, method_:); end

        sig do
          override
            .returns(
              {
                address: Increase::Models::PhysicalCardCreateParams::Shipment::Address,
                method_: Increase::Models::PhysicalCardCreateParams::Shipment::Method::OrSymbol
              }
            )
        end
        def to_hash; end

        class Address < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/postal_code
          sig { returns(String) }
          attr_accessor :postal_code

          # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/line3
          sig { returns(T.nilable(String)) }
          attr_reader :line3

          sig { params(line3: String).void }
          attr_writer :line3

          # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address/properties/phone_number
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/address
          sig do
            params(
              city: String,
              line1: String,
              name: String,
              postal_code: String,
              state: String,
              line2: String,
              line3: String,
              phone_number: String
            )
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, name:, postal_code:, state:, line2: nil, line3: nil, phone_number: nil)
          end

          sig do
            override
              .returns(
                {
                  city: String,
                  line1: String,
                  name: String,
                  postal_code: String,
                  state: String,
                  line2: String,
                  line3: String,
                  phone_number: String
                }
              )
          end
          def to_hash; end
        end

        # #/components/schemas/create_a_physical_card_parameters/properties/shipment/properties/method
        module Method
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::PhysicalCardCreateParams::Shipment::Method) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::PhysicalCardCreateParams::Shipment::Method::TaggedSymbol) }

          # USPS Post with tracking.
          USPS = T.let(:usps, Increase::Models::PhysicalCardCreateParams::Shipment::Method::TaggedSymbol)

          # FedEx Priority Overnight, no signature.
          FEDEX_PRIORITY_OVERNIGHT =
            T.let(
              :fedex_priority_overnight,
              Increase::Models::PhysicalCardCreateParams::Shipment::Method::TaggedSymbol
            )

          # FedEx 2-day.
          FEDEX_2_DAY =
            T.let(:fedex_2_day, Increase::Models::PhysicalCardCreateParams::Shipment::Method::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::PhysicalCardCreateParams::Shipment::Method::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
