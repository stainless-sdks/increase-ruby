# typed: strong

module Increase
  module Models
    class PhysicalCardCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      sig { returns(Increase::Models::PhysicalCardCreateParams::Cardholder) }
      def cardholder
      end

      sig do
        params(_: Increase::Models::PhysicalCardCreateParams::Cardholder)
          .returns(Increase::Models::PhysicalCardCreateParams::Cardholder)
      end
      def cardholder=(_)
      end

      sig { returns(Increase::Models::PhysicalCardCreateParams::Shipment) }
      def shipment
      end

      sig do
        params(_: Increase::Models::PhysicalCardCreateParams::Shipment)
          .returns(Increase::Models::PhysicalCardCreateParams::Shipment)
      end
      def shipment=(_)
      end

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
          .void
      end
      def initialize(card_id:, cardholder:, shipment:, physical_card_profile_id: nil, request_options: {})
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
        sig { returns(String) }
        def first_name
        end

        sig { params(_: String).returns(String) }
        def first_name=(_)
        end

        sig { returns(String) }
        def last_name
        end

        sig { params(_: String).returns(String) }
        def last_name=(_)
        end

        sig { params(first_name: String, last_name: String).void }
        def initialize(first_name:, last_name:)
        end

        sig { override.returns({first_name: String, last_name: String}) }
        def to_hash
        end
      end

      class Shipment < Increase::BaseModel
        sig { returns(Increase::Models::PhysicalCardCreateParams::Shipment::Address) }
        def address
        end

        sig do
          params(_: Increase::Models::PhysicalCardCreateParams::Shipment::Address)
            .returns(Increase::Models::PhysicalCardCreateParams::Shipment::Address)
        end
        def address=(_)
        end

        sig { returns(Symbol) }
        def method_
        end

        sig { params(_: Symbol).returns(Symbol) }
        def method_=(_)
        end

        sig { params(address: Increase::Models::PhysicalCardCreateParams::Shipment::Address, method_: Symbol).void }
        def initialize(address:, method_:)
        end

        sig do
          override.returns({address: Increase::Models::PhysicalCardCreateParams::Shipment::Address, method_: Symbol})
        end
        def to_hash
        end

        class Address < Increase::BaseModel
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: String).returns(String) }
          def line2=(_)
          end

          sig { returns(T.nilable(String)) }
          def line3
          end

          sig { params(_: String).returns(String) }
          def line3=(_)
          end

          sig { returns(T.nilable(String)) }
          def phone_number
          end

          sig { params(_: String).returns(String) }
          def phone_number=(_)
          end

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
              .void
          end
          def initialize(
            city:,
            line1:,
            name:,
            postal_code:,
            state:,
            line2: nil,
            line3: nil,
            phone_number: nil
          )
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

        class Method < Increase::Enum
          abstract!

          # USPS Post with tracking.
          USPS = :usps

          # FedEx Priority Overnight, no signature.
          FEDEX_PRIORITY_OVERNIGHT = :fedex_priority_overnight

          # FedEx 2-day.
          FEDEX_2_DAY = :fedex_2_day

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
