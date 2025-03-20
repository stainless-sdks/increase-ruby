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
      sig { returns(Increase::Models::ExternalAccount::AccountHolder::TaggedSymbol) }
      def account_holder
      end

      sig do
        params(_: Increase::Models::ExternalAccount::AccountHolder::TaggedSymbol)
          .returns(Increase::Models::ExternalAccount::AccountHolder::TaggedSymbol)
      end
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
      sig { returns(Increase::Models::ExternalAccount::Funding::TaggedSymbol) }
      def funding
      end

      sig do
        params(_: Increase::Models::ExternalAccount::Funding::TaggedSymbol)
          .returns(Increase::Models::ExternalAccount::Funding::TaggedSymbol)
      end
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
      sig { returns(Increase::Models::ExternalAccount::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::ExternalAccount::Status::TaggedSymbol)
          .returns(Increase::Models::ExternalAccount::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `external_account`.
      sig { returns(Increase::Models::ExternalAccount::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::ExternalAccount::Type::TaggedSymbol)
          .returns(Increase::Models::ExternalAccount::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # If you have verified ownership of the External Account.
      sig { returns(Increase::Models::ExternalAccount::VerificationStatus::TaggedSymbol) }
      def verification_status
      end

      sig do
        params(_: Increase::Models::ExternalAccount::VerificationStatus::TaggedSymbol)
          .returns(Increase::Models::ExternalAccount::VerificationStatus::TaggedSymbol)
      end
      def verification_status=(_)
      end

      # External Accounts represent accounts at financial institutions other than
      #   Increase. You can use this API to store their details for reuse.
      sig do
        params(
          id: String,
          account_holder: Increase::Models::ExternalAccount::AccountHolder::TaggedSymbol,
          account_number: String,
          created_at: Time,
          description: String,
          funding: Increase::Models::ExternalAccount::Funding::TaggedSymbol,
          idempotency_key: T.nilable(String),
          routing_number: String,
          status: Increase::Models::ExternalAccount::Status::TaggedSymbol,
          type: Increase::Models::ExternalAccount::Type::TaggedSymbol,
          verification_status: Increase::Models::ExternalAccount::VerificationStatus::TaggedSymbol
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
              account_holder: Increase::Models::ExternalAccount::AccountHolder::TaggedSymbol,
              account_number: String,
              created_at: Time,
              description: String,
              funding: Increase::Models::ExternalAccount::Funding::TaggedSymbol,
              idempotency_key: T.nilable(String),
              routing_number: String,
              status: Increase::Models::ExternalAccount::Status::TaggedSymbol,
              type: Increase::Models::ExternalAccount::Type::TaggedSymbol,
              verification_status: Increase::Models::ExternalAccount::VerificationStatus::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # The type of entity that owns the External Account.
      module AccountHolder
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccount::AccountHolder) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ExternalAccount::AccountHolder::TaggedSymbol) }

        # The External Account is owned by a business.
        BUSINESS = T.let(:business, Increase::Models::ExternalAccount::AccountHolder::TaggedSymbol)

        # The External Account is owned by an individual.
        INDIVIDUAL = T.let(:individual, Increase::Models::ExternalAccount::AccountHolder::TaggedSymbol)

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = T.let(:unknown, Increase::Models::ExternalAccount::AccountHolder::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExternalAccount::AccountHolder::TaggedSymbol]) }
          def values
          end
        end
      end

      # The type of the account to which the transfer will be sent.
      module Funding
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccount::Funding) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ExternalAccount::Funding::TaggedSymbol) }

        # A checking account.
        CHECKING = T.let(:checking, Increase::Models::ExternalAccount::Funding::TaggedSymbol)

        # A savings account.
        SAVINGS = T.let(:savings, Increase::Models::ExternalAccount::Funding::TaggedSymbol)

        # A different type of account.
        OTHER = T.let(:other, Increase::Models::ExternalAccount::Funding::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExternalAccount::Funding::TaggedSymbol]) }
          def values
          end
        end
      end

      # The External Account's status.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccount::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ExternalAccount::Status::TaggedSymbol) }

        # The External Account is active.
        ACTIVE = T.let(:active, Increase::Models::ExternalAccount::Status::TaggedSymbol)

        # The External Account is archived and won't appear in the dashboard.
        ARCHIVED = T.let(:archived, Increase::Models::ExternalAccount::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExternalAccount::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `external_account`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccount::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::ExternalAccount::Type::TaggedSymbol) }

        EXTERNAL_ACCOUNT = T.let(:external_account, Increase::Models::ExternalAccount::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExternalAccount::Type::TaggedSymbol]) }
          def values
          end
        end
      end

      # If you have verified ownership of the External Account.
      module VerificationStatus
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccount::VerificationStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::ExternalAccount::VerificationStatus::TaggedSymbol) }

        # The External Account has not been verified.
        UNVERIFIED = T.let(:unverified, Increase::Models::ExternalAccount::VerificationStatus::TaggedSymbol)

        # The External Account is in the process of being verified.
        PENDING = T.let(:pending, Increase::Models::ExternalAccount::VerificationStatus::TaggedSymbol)

        # The External Account is verified.
        VERIFIED = T.let(:verified, Increase::Models::ExternalAccount::VerificationStatus::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::ExternalAccount::VerificationStatus::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
