# typed: strong

module Increase
  module Models
    class PhysicalCard < Increase::BaseModel
      # The physical card identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the Card this Physical Card represents.
      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      # Details about the cardholder, as it appears on the printed card.
      sig { returns(Increase::Models::PhysicalCard::Cardholder) }
      def cardholder
      end

      sig { params(_: Increase::Models::PhysicalCard::Cardholder).returns(Increase::Models::PhysicalCard::Cardholder) }
      def cardholder=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Physical Card was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # The Physical Card Profile used for this Physical Card.
      sig { returns(T.nilable(String)) }
      def physical_card_profile_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def physical_card_profile_id=(_)
      end

      # The details used to ship this physical card.
      sig { returns(Increase::Models::PhysicalCard::Shipment) }
      def shipment
      end

      sig { params(_: Increase::Models::PhysicalCard::Shipment).returns(Increase::Models::PhysicalCard::Shipment) }
      def shipment=(_)
      end

      # The status of the Physical Card.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `physical_card`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Custom physical Visa cards that are shipped to your customers. The artwork is
      #   configurable by a connected [Card Profile](/documentation/api#card-profiles).
      #   The same Card can be used for multiple Physical Cards. Printing cards incurs a
      #   fee. Please contact [support@increase.com](mailto:support@increase.com) for
      #   pricing!
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
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
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

        # Details about the cardholder, as it appears on the printed card.
        sig { params(first_name: String, last_name: String).returns(T.attached_class) }
        def self.new(first_name:, last_name:)
        end

        sig { override.returns({first_name: String, last_name: String}) }
        def to_hash
        end
      end

      class Shipment < Increase::BaseModel
        # The location to where the card's packing label is addressed.
        sig { returns(Increase::Models::PhysicalCard::Shipment::Address) }
        def address
        end

        sig do
          params(_: Increase::Models::PhysicalCard::Shipment::Address)
            .returns(Increase::Models::PhysicalCard::Shipment::Address)
        end
        def address=(_)
        end

        # The shipping method.
        sig { returns(Symbol) }
        def method_
        end

        sig { params(_: Symbol).returns(Symbol) }
        def method_=(_)
        end

        # The status of this shipment.
        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        # Tracking details for the shipment.
        sig { returns(T.nilable(Increase::Models::PhysicalCard::Shipment::Tracking)) }
        def tracking
        end

        sig do
          params(_: T.nilable(Increase::Models::PhysicalCard::Shipment::Tracking))
            .returns(T.nilable(Increase::Models::PhysicalCard::Shipment::Tracking))
        end
        def tracking=(_)
        end

        # The details used to ship this physical card.
        sig do
          params(
            address: Increase::Models::PhysicalCard::Shipment::Address,
            method_: Symbol,
            status: Symbol,
            tracking: T.nilable(Increase::Models::PhysicalCard::Shipment::Tracking)
          )
            .returns(T.attached_class)
        end
        def self.new(address:, method_:, status:, tracking:)
        end

        sig do
          override
            .returns(
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

          # The second line of the shipping address.
          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_)
          end

          # The third line of the shipping address.
          sig { returns(T.nilable(String)) }
          def line3
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def line3=(_)
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

          # The location to where the card's packing label is addressed.
          sig do
            params(
              city: String,
              line1: String,
              line2: T.nilable(String),
              line3: T.nilable(String),
              name: String,
              postal_code: String,
              state: String
            )
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, line2:, line3:, name:, postal_code:, state:)
          end

          sig do
            override
              .returns(
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

        # The shipping method.
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

        # The status of this shipment.
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Tracking < Increase::BaseModel
          # The tracking number.
          sig { returns(String) }
          def number
          end

          sig { params(_: String).returns(String) }
          def number=(_)
          end

          # For returned shipments, the tracking number of the return shipment.
          sig { returns(T.nilable(String)) }
          def return_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def return_number=(_)
          end

          # For returned shipments, this describes why the package was returned.
          sig { returns(T.nilable(String)) }
          def return_reason
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def return_reason=(_)
          end

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   the fulfillment provider marked the card as ready for pick-up by the shipment
          #   carrier.
          sig { returns(Time) }
          def shipped_at
          end

          sig { params(_: Time).returns(Time) }
          def shipped_at=(_)
          end

          # Tracking details for the shipment.
          sig do
            params(
              number: String,
              return_number: T.nilable(String),
              return_reason: T.nilable(String),
              shipped_at: Time
            )
              .returns(T.attached_class)
          end
          def self.new(number:, return_number:, return_reason:, shipped_at:)
          end

          sig do
            override
              .returns(
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

      # The status of the Physical Card.
      class Status < Increase::Enum
        abstract!

        # The physical card is active.
        ACTIVE = :active

        # The physical card is temporarily disabled.
        DISABLED = :disabled

        # The physical card is permanently canceled.
        CANCELED = :canceled

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `physical_card`.
      class Type < Increase::Enum
        abstract!

        PHYSICAL_CARD = :physical_card

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
