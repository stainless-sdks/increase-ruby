# typed: strong

module Increase
  module Models
    class PhysicalCardCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The underlying card representing this physical card.
      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      # Details about the cardholder, as it will appear on the physical card.
      sig { returns(Increase::Models::PhysicalCardCreateParams::Cardholder) }
      def cardholder
      end

      sig do
        params(_: Increase::Models::PhysicalCardCreateParams::Cardholder)
          .returns(Increase::Models::PhysicalCardCreateParams::Cardholder)
      end
      def cardholder=(_)
      end

      # The details used to ship this physical card.
      sig { returns(Increase::Models::PhysicalCardCreateParams::Shipment) }
      def shipment
      end

      sig do
        params(_: Increase::Models::PhysicalCardCreateParams::Shipment)
          .returns(Increase::Models::PhysicalCardCreateParams::Shipment)
      end
      def shipment=(_)
      end

      # The physical card profile to use for this physical card. The latest default
      #   physical card profile will be used if not provided.
      sig { returns(T.nilable(String)) }
      def physical_card_profile_id
      end

      sig { params(_: String).returns(String) }
      def physical_card_profile_id=(_)
      end

      sig do
        params(
          card_id: String,
          cardholder: Increase::Models::PhysicalCardCreateParams::Cardholder,
          shipment: Increase::Models::PhysicalCardCreateParams::Shipment,
          physical_card_profile_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(card_id:, cardholder:, shipment:, physical_card_profile_id: nil, request_options: {})
      end

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
      def to_hash
      end

      class Cardholder < Increase::BaseModel
        # The cardholder's first name.
        sig { returns(String) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        # The cardholder's last name.
        sig { returns(String) }
        def last_name
        end

        sig { params(_: String).returns(String) }
        def last_name=(_)
        end

        # Details about the cardholder, as it will appear on the physical card.
        sig { params(first_name: String, last_name: String).returns(T.attached_class) }
        def self.new(first_name:, last_name:)
        end

        sig { override.returns({first_name: String, last_name: String}) }
        def to_hash
        end
      end

      class Shipment < Increase::BaseModel
        # The address to where the card should be shipped.
        sig { returns(Increase::Models::PhysicalCardCreateParams::Shipment::Address) }
        def address
        end

        sig do
          params(_: Increase::Models::PhysicalCardCreateParams::Shipment::Address)
            .returns(Increase::Models::PhysicalCardCreateParams::Shipment::Address)
        end
        def address=(_)
        end

        # The shipping method to use.
        sig { returns(Symbol) }
        def method_
        end

        sig { params(_: Symbol).returns(Symbol) }
        def method_=(_)
        end

        # The details used to ship this physical card.
        sig do
          params(address: Increase::Models::PhysicalCardCreateParams::Shipment::Address, method_: Symbol)
            .returns(T.attached_class)
        end
        def self.new(address:, method_:)
        end

        sig do
          override.returns({address: Increase::Models::PhysicalCardCreateParams::Shipment::Address, method_: Symbol})
        end
        def to_hash
        end

        class Address < Increase::BaseModel
          # The city of the shipping address.
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # The first line of the shipping address.
          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          # The name of the recipient.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # The postal code of the shipping address.
          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          # The US state of the shipping address.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # The second line of the shipping address.
          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: String).returns(String) }
          def line2=(_)
          end

          # The third line of the shipping address.
          sig { returns(T.nilable(String)) }
          def line3
          end

          sig { params(_: String).returns(String) }
          def line3=(_)
          end

          # The phone number of the recipient.
          sig { returns(T.nilable(String)) }
          def phone_number
          end

          sig { params(_: String).returns(String) }
          def phone_number=(_)
          end

          # The address to where the card should be shipped.
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
          def to_hash
          end
        end

        # The shipping method to use.
        class Method < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # USPS Post with tracking.
          USPS = :usps

          # FedEx Priority Overnight, no signature.
          FEDEX_PRIORITY_OVERNIGHT = :fedex_priority_overnight

          # FedEx 2-day.
          FEDEX_2_DAY = :fedex_2_day
        end
      end
    end
  end
end
