# typed: strong

module Increase
  module Models
    class AccountTransfer < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(Increase::Models::AccountTransfer::Approval)) }
      attr_accessor :approval

      sig { returns(T.nilable(Increase::Models::AccountTransfer::Cancellation)) }
      attr_accessor :cancellation

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy)) }
      attr_accessor :created_by

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :destination_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :destination_transaction_id

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(Symbol) }
      attr_accessor :network

      sig { returns(T.nilable(String)) }
      attr_accessor :pending_transaction_id

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      sig { returns(Symbol) }
      attr_accessor :type

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
        attr_accessor :approved_at

        sig { returns(T.nilable(String)) }
        attr_accessor :approved_by

        sig { params(approved_at: Time, approved_by: T.nilable(String)).void }
        def initialize(approved_at:, approved_by:)
        end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class Cancellation < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :canceled_at

        sig { returns(T.nilable(String)) }
        attr_accessor :canceled_by

        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).void }
        def initialize(canceled_at:, canceled_by:)
        end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class CreatedBy < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey)) }
        attr_accessor :api_key

        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication)) }
        attr_accessor :oauth_application

        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::User)) }
        attr_accessor :user

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
          attr_accessor :description

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
          attr_accessor :name

          sig { params(name: String).void }
          def initialize(name:)
          end

          sig { override.returns({name: String}) }
          def to_hash
          end
        end

        class User < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :email

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
