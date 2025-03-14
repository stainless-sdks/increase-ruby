# typed: strong

module Increase
  module Models
    class ExternalAccount < Increase::BaseModel
      # The External Account's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The type of entity that owns the External Account.
      sig { returns(Symbol) }
      def account_holder
      end

      sig { params(_: Symbol).returns(Symbol) }
      def account_holder=(_)
      end

      # The destination account number.
      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the External Account was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The External Account's description for display purposes.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The type of the account to which the transfer will be sent.
      sig { returns(Symbol) }
      def funding
      end

      sig { params(_: Symbol).returns(Symbol) }
      def funding=(_)
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

      # The American Bankers' Association (ABA) Routing Transit Number (RTN).
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # The External Account's status.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `external_account`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # If you have verified ownership of the External Account.
      sig { returns(Symbol) }
      def verification_status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def verification_status=(_)
      end

      # External Accounts represent accounts at financial institutions other than
      #   Increase. You can use this API to store their details for reuse.
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
          .returns(T.attached_class)
      end
      def self.new(
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

      # The type of entity that owns the External Account.
      class AccountHolder < Increase::Enum
        abstract!

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # The type of the account to which the transfer will be sent.
      class Funding < Increase::Enum
        abstract!

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # The External Account's status.
      class Status < Increase::Enum
        abstract!

        # The External Account is active.
        ACTIVE = :active

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = :archived

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `external_account`.
      class Type < Increase::Enum
        abstract!

        EXTERNAL_ACCOUNT = :external_account

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # If you have verified ownership of the External Account.
      class VerificationStatus < Increase::Enum
        abstract!

        # The External Account has not been verified.
        UNVERIFIED = :unverified

        # The External Account is in the process of being verified.
        PENDING = :pending

        # The External Account is verified.
        VERIFIED = :verified

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
