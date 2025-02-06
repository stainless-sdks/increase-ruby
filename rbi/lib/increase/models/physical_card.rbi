# typed: strong

module Increase
  module Models
    class PhysicalCard < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :card_id

      sig { returns(Increase::Models::PhysicalCard::Cardholder) }
      attr_accessor :cardholder

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T.nilable(String)) }
      attr_accessor :physical_card_profile_id

      sig { returns(Increase::Models::PhysicalCard::Shipment) }
      attr_accessor :shipment

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          card_id: String,
          cardholder: Increase::Models::PhysicalCard::Cardholder,
          created_at: Time,
          idempotency_key: T.nilable(String),
          physical_card_profile_id: T.nilable(String),
          shipment: Increase::Models::PhysicalCard::Shipment,
          status: Symbol,
          type: Symbol
        ).void
      end
      def initialize(
        id:,
        card_id:,
        cardholder:,
        created_at:,
        idempotency_key:,
        physical_card_profile_id:,
        shipment:,
        status:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            card_id: String,
            cardholder: Increase::Models::PhysicalCard::Cardholder,
            created_at: Time,
            idempotency_key: T.nilable(String),
            physical_card_profile_id: T.nilable(String),
            shipment: Increase::Models::PhysicalCard::Shipment,
            status: Symbol,
            type: Symbol
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
        sig { returns(Increase::Models::PhysicalCard::Shipment::Address) }
        attr_accessor :address

        sig { returns(Symbol) }
        attr_accessor :method_

        sig { returns(Symbol) }
        attr_accessor :status

        sig { returns(T.nilable(Increase::Models::PhysicalCard::Shipment::Tracking)) }
        attr_accessor :tracking

        sig do
          params(
            address: Increase::Models::PhysicalCard::Shipment::Address,
            method_: Symbol,
            status: Symbol,
            tracking: T.nilable(Increase::Models::PhysicalCard::Shipment::Tracking)
          ).void
        end
        def initialize(address:, method_:, status:, tracking:)
        end

        sig do
          override.returns(
            {
              address: Increase::Models::PhysicalCard::Shipment::Address,
              method_: Symbol,
              status: Symbol,
              tracking: T.nilable(Increase::Models::PhysicalCard::Shipment::Tracking)
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

          sig { returns(T.nilable(String)) }
          attr_accessor :line2

          sig { returns(T.nilable(String)) }
          attr_accessor :line3

          sig { returns(String) }
          attr_accessor :name

          sig { returns(String) }
          attr_accessor :postal_code

          sig { returns(String) }
          attr_accessor :state

          sig do
            params(
              city: String,
              line1: String,
              line2: T.nilable(String),
              line3: T.nilable(String),
              name: String,
              postal_code: String,
              state: String
            ).void
          end
          def initialize(city:, line1:, line2:, line3:, name:, postal_code:, state:)
          end

          sig do
            override.returns(
              {
                city: String,
                line1: String,
                line2: T.nilable(String),
                line3: T.nilable(String),
                name: String,
                postal_code: String,
                state: String
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

        class Status < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Tracking < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :number

          sig { returns(T.nilable(String)) }
          attr_accessor :return_number

          sig { returns(T.nilable(String)) }
          attr_accessor :return_reason

          sig { returns(Time) }
          attr_accessor :shipped_at

          sig do
            params(
              number: String,
              return_number: T.nilable(String),
              return_reason: T.nilable(String),
              shipped_at: Time
            ).void
          end
          def initialize(number:, return_number:, return_reason:, shipped_at:)
          end

          sig do
            override.returns(
              {
                number: String,
                return_number: T.nilable(String),
                return_reason: T.nilable(String),
                shipped_at: Time
              }
            )
          end
          def to_hash
          end
        end
      end

      class Status < Increase::Enum
        abstract!

        # The physical card is active.
        ACTIVE = :active

        # The physical card is temporarily disabled.
        DISABLED = :disabled

        # The physical card is permanently canceled.
        CANCELED = :canceled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        PHYSICAL_CARD = :physical_card

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
