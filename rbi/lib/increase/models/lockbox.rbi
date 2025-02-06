# typed: strong

module Increase
  module Models
    class Lockbox < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Increase::Models::Lockbox::Address) }
      attr_accessor :address

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T.nilable(String)) }
      attr_accessor :recipient_name

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
      end
      def initialize(
        id:,
        account_id:,
        address:,
        created_at:,
        description:,
        idempotency_key:,
        recipient_name:,
        status:,
        type:
      )
      end

      sig do
        override.returns(
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
        attr_accessor :city

        sig { returns(String) }
        attr_accessor :line1

        sig { returns(String) }
        attr_accessor :line2

        sig { returns(String) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :recipient

        sig { returns(String) }
        attr_accessor :state

        sig do
          params(
            city: String,
            line1: String,
            line2: String,
            postal_code: String,
            recipient: T.nilable(String),
            state: String
          ).void
        end
        def initialize(city:, line1:, line2:, postal_code:, recipient:, state:)
        end

        sig do
          override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        LOCKBOX = :lockbox

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
