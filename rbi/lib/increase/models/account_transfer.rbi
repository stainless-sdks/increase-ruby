# typed: strong

module Increase
  module Models
    class AccountTransfer < Increase::BaseModel
      # The account transfer's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The Account to which the transfer belongs.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The transfer amount in the minor unit of the destination account currency. For
      #   dollars, for example, this is cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # If your account requires approvals for transfers and the transfer was approved,
      #   this will contain details of the approval.
      sig { returns(T.nilable(Increase::Models::AccountTransfer::Approval)) }
      def approval
      end

      sig do
        params(_: T.nilable(Increase::Models::AccountTransfer::Approval))
          .returns(T.nilable(Increase::Models::AccountTransfer::Approval))
      end
      def approval=(_)
      end

      # If your account requires approvals for transfers and the transfer was not
      #   approved, this will contain details of the cancellation.
      sig { returns(T.nilable(Increase::Models::AccountTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(Increase::Models::AccountTransfer::Cancellation))
          .returns(T.nilable(Increase::Models::AccountTransfer::Cancellation))
      end
      def cancellation=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the transfer was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # What object created the transfer, either via the API or the dashboard.
      sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy)) }
      def created_by
      end

      sig do
        params(_: T.nilable(Increase::Models::AccountTransfer::CreatedBy))
          .returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy))
      end
      def created_by=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
      #   account currency.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # The description that will show on the transactions.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The destination account's identifier.
      sig { returns(String) }
      def destination_account_id
      end

      sig { params(_: String).returns(String) }
      def destination_account_id=(_)
      end

      # The ID for the transaction receiving the transfer.
      sig { returns(T.nilable(String)) }
      def destination_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def destination_transaction_id=(_)
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

      # The transfer's network.
      sig { returns(Symbol) }
      def network
      end

      sig { params(_: Symbol).returns(Symbol) }
      def network=(_)
      end

      # The ID for the pending transaction representing the transfer. A pending
      #   transaction is created when the transfer
      #   [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      #   by someone else in your organization.
      sig { returns(T.nilable(String)) }
      def pending_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def pending_transaction_id=(_)
      end

      # The lifecycle status of the transfer.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The ID for the transaction funding the transfer.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account_transfer`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Account transfers move funds between your own accounts at Increase.
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
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
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
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the transfer was approved.
        sig { returns(Time) }
        def approved_at
        end

        sig { params(_: Time).returns(Time) }
        def approved_at=(_)
        end

        # If the Transfer was approved by a user in the dashboard, the email address of
        #   that user.
        sig { returns(T.nilable(String)) }
        def approved_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def approved_by=(_)
        end

        # If your account requires approvals for transfers and the transfer was approved,
        #   this will contain details of the approval.
        sig { params(approved_at: Time, approved_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(approved_at:, approved_by:)
        end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class Cancellation < Increase::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the Transfer was canceled.
        sig { returns(Time) }
        def canceled_at
        end

        sig { params(_: Time).returns(Time) }
        def canceled_at=(_)
        end

        # If the Transfer was canceled by a user in the dashboard, the email address of
        #   that user.
        sig { returns(T.nilable(String)) }
        def canceled_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def canceled_by=(_)
        end

        # If your account requires approvals for transfers and the transfer was not
        #   approved, this will contain details of the cancellation.
        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(canceled_at:, canceled_by:)
        end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class CreatedBy < Increase::BaseModel
        # If present, details about the API key that created the transfer.
        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey)) }
        def api_key
        end

        sig do
          params(_: T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey))
            .returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey))
        end
        def api_key=(_)
        end

        # The type of object that created this transfer.
        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        # If present, details about the OAuth Application that created the transfer.
        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(_: T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication))
            .returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication))
        end
        def oauth_application=(_)
        end

        # If present, details about the User that created the transfer.
        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(Increase::Models::AccountTransfer::CreatedBy::User))
            .returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::User))
        end
        def user=(_)
        end

        # What object created the transfer, either via the API or the dashboard.
        sig do
          params(
            api_key: T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey),
            category: Symbol,
            oauth_application: T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::AccountTransfer::CreatedBy::User)
          )
            .returns(T.attached_class)
        end
        def self.new(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override
            .returns(
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
          # The description set for the API key when it was created.
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          # If present, details about the API key that created the transfer.
          sig { params(description: T.nilable(String)).returns(T.attached_class) }
          def self.new(description:)
          end

          sig { override.returns({description: T.nilable(String)}) }
          def to_hash
          end
        end

        # The type of object that created this transfer.
        class Category < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user
        end

        class OAuthApplication < Increase::BaseModel
          # The name of the OAuth Application.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # If present, details about the OAuth Application that created the transfer.
          sig { params(name: String).returns(T.attached_class) }
          def self.new(name:)
          end

          sig { override.returns({name: String}) }
          def to_hash
          end
        end

        class User < Increase::BaseModel
          # The email address of the User.
          sig { returns(String) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          # If present, details about the User that created the transfer.
          sig { params(email: String).returns(T.attached_class) }
          def self.new(email:)
          end

          sig { override.returns({email: String}) }
          def to_hash
          end
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
      #   account currency.
      class Currency < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end

      # The transfer's network.
      class Network < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACCOUNT = :account
      end

      # The lifecycle status of the transfer.
      class Status < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer has been completed.
        COMPLETE = :complete
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account_transfer`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACCOUNT_TRANSFER = :account_transfer
      end
    end
  end
end
