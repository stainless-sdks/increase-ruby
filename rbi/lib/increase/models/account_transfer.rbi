# typed: strong

module Increase
  module Models
    class AccountTransfer < Increase::BaseModel
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

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountTransfer::Approval)) }
      def approval
      end

      sig do
        params(_: T.nilable(Increase::Models::AccountTransfer::Approval)).returns(T.nilable(Increase::Models::AccountTransfer::Approval))
      end
      def approval=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(Increase::Models::AccountTransfer::Cancellation)).returns(T.nilable(Increase::Models::AccountTransfer::Cancellation))
      end
      def cancellation=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy)) }
      def created_by
      end

      sig do
        params(_: T.nilable(Increase::Models::AccountTransfer::CreatedBy)).returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy))
      end
      def created_by=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(String) }
      def destination_account_id
      end

      sig { params(_: String).returns(String) }
      def destination_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def destination_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def destination_transaction_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(Symbol) }
      def network
      end

      sig { params(_: Symbol).returns(Symbol) }
      def network=(_)
      end

      sig { returns(T.nilable(String)) }
      def pending_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def pending_transaction_id=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
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
          amount: Integer,
          approval: T.nilable(Increase::Models::AccountTransfer::Approval),
          cancellation: T.nilable(Increase::Models::AccountTransfer::Cancellation),
          created_at: Time,
          created_by: T.nilable(Increase::Models::AccountTransfer::CreatedBy),
          currency: Symbol,
          description: String,
          destination_account_id: String,
          destination_transaction_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          network: Symbol,
          pending_transaction_id: T.nilable(String),
          status: Symbol,
          transaction_id: T.nilable(String),
          type: Symbol
        ).void
      end
      def initialize(
        id:,
        account_id:,
        amount:,
        approval:,
        cancellation:,
        created_at:,
        created_by:,
        currency:,
        description:,
        destination_account_id:,
        destination_transaction_id:,
        idempotency_key:,
        network:,
        pending_transaction_id:,
        status:,
        transaction_id:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            amount: Integer,
            approval: T.nilable(Increase::Models::AccountTransfer::Approval),
            cancellation: T.nilable(Increase::Models::AccountTransfer::Cancellation),
            created_at: Time,
            created_by: T.nilable(Increase::Models::AccountTransfer::CreatedBy),
            currency: Symbol,
            description: String,
            destination_account_id: String,
            destination_transaction_id: T.nilable(String),
            idempotency_key: T.nilable(String),
            network: Symbol,
            pending_transaction_id: T.nilable(String),
            status: Symbol,
            transaction_id: T.nilable(String),
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Approval < Increase::BaseModel
        sig { returns(Time) }
        def approved_at
        end

        sig { params(_: Time).returns(Time) }
        def approved_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def approved_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def approved_by=(_)
        end

        sig { params(approved_at: Time, approved_by: T.nilable(String)).void }
        def initialize(approved_at:, approved_by:)
        end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class Cancellation < Increase::BaseModel
        sig { returns(Time) }
        def canceled_at
        end

        sig { params(_: Time).returns(Time) }
        def canceled_at=(_)
        end

        sig { returns(T.nilable(String)) }
        def canceled_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def canceled_by=(_)
        end

        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).void }
        def initialize(canceled_at:, canceled_by:)
        end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class CreatedBy < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey)) }
        def api_key
        end

        sig do
          params(_: T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey)).returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey))
        end
        def api_key=(_)
        end

        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(_: T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication)).returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication))
        end
        def oauth_application=(_)
        end

        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(Increase::Models::AccountTransfer::CreatedBy::User)).returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::User))
        end
        def user=(_)
        end

        sig do
          params(
            api_key: T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey),
            category: Symbol,
            oauth_application: T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::AccountTransfer::CreatedBy::User)
          ).void
        end
        def initialize(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override.returns(
            {
              api_key: T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey),
              category: Symbol,
              oauth_application: T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication),
              user: T.nilable(Increase::Models::AccountTransfer::CreatedBy::User)
            }
          )
        end
        def to_hash
        end

        class APIKey < Increase::BaseModel
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          sig { params(description: T.nilable(String)).void }
          def initialize(description:)
          end

          sig { override.returns({description: T.nilable(String)}) }
          def to_hash
          end
        end

        class Category < Increase::Enum
          abstract!

          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class OAuthApplication < Increase::BaseModel
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(name: String).void }
          def initialize(name:)
          end

          sig { override.returns({name: String}) }
          def to_hash
          end
        end

        class User < Increase::BaseModel
          sig { returns(String) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          sig { params(email: String).void }
          def initialize(email:)
          end

          sig { override.returns({email: String}) }
          def to_hash
          end
        end
      end

      class Currency < Increase::Enum
        abstract!

        # Canadian Dollar (CAD)
        CAD = :CAD

        # Swiss Franc (CHF)
        CHF = :CHF

        # Euro (EUR)
        EUR = :EUR

        # British Pound (GBP)
        GBP = :GBP

        # Japanese Yen (JPY)
        JPY = :JPY

        # US Dollar (USD)
        USD = :USD

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Network < Increase::Enum
        abstract!

        ACCOUNT = :account

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Increase::Enum
        abstract!

        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer has been completed.
        COMPLETE = :complete

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        ACCOUNT_TRANSFER = :account_transfer

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
