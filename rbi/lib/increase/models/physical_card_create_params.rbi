# typed: strong

module Increase
  module Models
    class PhysicalCardCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :card_id

      sig { returns(Increase::Models::PhysicalCardCreateParams::Cardholder) }
      attr_accessor :cardholder

      sig { returns(Increase::Models::PhysicalCardCreateParams::Shipment) }
      attr_accessor :shipment

      sig { returns(T.nilable(String)) }
      attr_reader :physical_card_profile_id

      sig { params(physical_card_profile_id: String).void }
      attr_writer :physical_card_profile_id

      sig do
        params(
          card_id: String,
          cardholder: Increase::Models::PhysicalCardCreateParams::Cardholder,
          shipment: Increase::Models::PhysicalCardCreateParams::Shipment,
          physical_card_profile_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(card_id:, cardholder:, shipment:, physical_card_profile_id: nil, request_options: {})
      end

      sig do
        override.returns(
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
        attr_accessor :first_name

        sig { returns(String) }
        attr_accessor :last_name

        sig { params(first_name: String, last_name: String).void }
        def initialize(first_name:, last_name:)
        end

        sig { override.returns({first_name: String, last_name: String}) }
        def to_hash
        end
      end

      class Shipment < Increase::BaseModel
        sig { returns(Increase::Models::PhysicalCardCreateParams::Shipment::Address) }
        attr_accessor :address

        sig { returns(Symbol) }
        attr_accessor :method_

        sig do
          params(address: Increase::Models::PhysicalCardCreateParams::Shipment::Address, method_: Symbol).void
        end
        def initialize(address:, method_:)
        end

        sig do
          override.returns(
            {
              address: Increase::Models::PhysicalCardCreateParams::Shipment::Address,
              method_: Symbol
            }
          )
        end
        def to_hash
        end

        class Address < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :city

          sig { returns(String) }
          attr_accessor :line1

          sig { returns(String) }
          attr_accessor :name

          sig { returns(String) }
          attr_accessor :postal_code

          sig { returns(String) }
          attr_accessor :state

          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          sig { returns(T.nilable(String)) }
          attr_reader :line3

          sig { params(line3: String).void }
          attr_writer :line3

          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

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
            ).void
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
            override.returns(
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
