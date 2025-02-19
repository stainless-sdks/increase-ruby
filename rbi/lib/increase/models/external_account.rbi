# typed: strong

module Increase
  module Models
    class ExternalAccount < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Symbol) }
      def account_holder
      end

      sig { params(_: Symbol).returns(Symbol) }
      def account_holder=(_)
      end

      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(Symbol) }
      def funding
      end

      sig { params(_: Symbol).returns(Symbol) }
      def funding=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
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

      sig { returns(Symbol) }
      def verification_status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def verification_status=(_)
      end

      sig do
        params(
          id: String,
          account_holder: Symbol,
          account_number: String,
          created_at: Time,
          description: String,
          funding: Symbol,
          idempotency_key: T.nilable(String),
          routing_number: String,
          status: Symbol,
          type: Symbol,
          verification_status: Symbol
        )
          .void
      end
      def initialize(
        id:,
        account_holder:,
        account_number:,
        created_at:,
        description:,
        funding:,
        idempotency_key:,
        routing_number:,
        status:,
        type:,
        verification_status:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_holder: Symbol,
              account_number: String,
              created_at: Time,
              description: String,
              funding: Symbol,
              idempotency_key: T.nilable(String),
              routing_number: String,
              status: Symbol,
              type: Symbol,
              verification_status: Symbol
            }
          )
      end
      def to_hash
      end

      class AccountHolder < Increase::Enum
        abstract!

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Funding < Increase::Enum
        abstract!

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Increase::Enum
        abstract!

        # The External Account is active.
        ACTIVE = :active

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = :archived

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        EXTERNAL_ACCOUNT = :external_account

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class VerificationStatus < Increase::Enum
        abstract!

        # The External Account has not been verified.
        UNVERIFIED = :unverified

        # The External Account is in the process of being verified.
        PENDING = :pending

        # The External Account is verified.
        VERIFIED = :verified

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
