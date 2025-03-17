# typed: strong

module Increase
  module Models
    class Lockbox < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Increase::Models::Lockbox::Address) }
      def address
      end

      sig { params(_: Increase::Models::Lockbox::Address).returns(Increase::Models::Lockbox::Address) }
      def address=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def recipient_name=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          id: String,
          account_id: String,
          address: Increase::Models::Lockbox::Address,
          created_at: Time,
          description: T.nilable(String),
          idempotency_key: T.nilable(String),
          recipient_name: T.nilable(String),
          status: Symbol,
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, address:, created_at:, description:, idempotency_key:, recipient_name:, status:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              address: Increase::Models::Lockbox::Address,
              created_at: Time,
              description: T.nilable(String),
              idempotency_key: T.nilable(String),
              recipient_name: T.nilable(String),
              status: Symbol,
              type: Symbol
            }
          )
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
        def line2
        end

        sig { params(_: String).returns(String) }
        def line2=(_)
        end

        sig { returns(String) }
        def postal_code
        end

        sig { params(_: String).returns(String) }
        def postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def recipient
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def recipient=(_)
        end

        sig { returns(String) }
        def state
        end

        sig { params(_: String).returns(String) }
        def state=(_)
        end

        sig do
          params(
            city: String,
            line1: String,
            line2: String,
            postal_code: String,
            recipient: T.nilable(String),
            state: String
          )
            .returns(T.attached_class)
        end
        def self.new(city:, line1:, line2:, postal_code:, recipient:, state:)
        end

        sig do
          override
            .returns(
              {
                city: String,
                line1: String,
                line2: String,
                postal_code: String,
                recipient: T.nilable(String),
                state: String
              }
            )
        end
        def to_hash
        end
      end

      class Status < Increase::Enum
        abstract!

        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = :active

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = :inactive

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        LOCKBOX = :lockbox

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
