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
        params(_: T.nilable(T.any(Increase::Models::AccountTransfer::Approval, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::AccountTransfer::Approval, Increase::Util::AnyHash)))
      end
      def approval=(_)
      end

      # If your account requires approvals for transfers and the transfer was not
      #   approved, this will contain details of the cancellation.
      sig { returns(T.nilable(Increase::Models::AccountTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::AccountTransfer::Cancellation, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::AccountTransfer::Cancellation, Increase::Util::AnyHash)))
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
        params(_: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy, Increase::Util::AnyHash)))
      end
      def created_by=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
      #   account currency.
      sig { returns(Increase::Models::AccountTransfer::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: Increase::Models::AccountTransfer::Currency::TaggedSymbol)
          .returns(Increase::Models::AccountTransfer::Currency::TaggedSymbol)
      end
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
      sig { returns(Increase::Models::AccountTransfer::Network::TaggedSymbol) }
      def network
      end

      sig do
        params(_: Increase::Models::AccountTransfer::Network::TaggedSymbol)
          .returns(Increase::Models::AccountTransfer::Network::TaggedSymbol)
      end
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
      sig { returns(Increase::Models::AccountTransfer::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::AccountTransfer::Status::TaggedSymbol)
          .returns(Increase::Models::AccountTransfer::Status::TaggedSymbol)
      end
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
      sig { returns(Increase::Models::AccountTransfer::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::AccountTransfer::Type::TaggedSymbol)
          .returns(Increase::Models::AccountTransfer::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Account transfers move funds between your own accounts at Increase.
      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          approval: T.nilable(T.any(Increase::Models::AccountTransfer::Approval, Increase::Util::AnyHash)),
          cancellation: T.nilable(T.any(Increase::Models::AccountTransfer::Cancellation, Increase::Util::AnyHash)),
          created_at: Time,
          created_by: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy, Increase::Util::AnyHash)),
          currency: Increase::Models::AccountTransfer::Currency::OrSymbol,
          description: String,
          destination_account_id: String,
          destination_transaction_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          network: Increase::Models::AccountTransfer::Network::OrSymbol,
          pending_transaction_id: T.nilable(String),
          status: Increase::Models::AccountTransfer::Status::OrSymbol,
          transaction_id: T.nilable(String),
          type: Increase::Models::AccountTransfer::Type::OrSymbol
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
              currency: Increase::Models::AccountTransfer::Currency::TaggedSymbol,
              description: String,
              destination_account_id: String,
              destination_transaction_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              network: Increase::Models::AccountTransfer::Network::TaggedSymbol,
              pending_transaction_id: T.nilable(String),
              status: Increase::Models::AccountTransfer::Status::TaggedSymbol,
              transaction_id: T.nilable(String),
              type: Increase::Models::AccountTransfer::Type::TaggedSymbol
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
          params(_: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::APIKey, Increase::Util::AnyHash)))
            .returns(T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::APIKey, Increase::Util::AnyHash)))
        end
        def api_key=(_)
        end

        # The type of object that created this transfer.
        sig { returns(Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol) }
        def category
        end

        sig do
          params(_: Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol)
            .returns(Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol)
        end
        def category=(_)
        end

        # If present, details about the OAuth Application that created the transfer.
        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(
            _: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication, Increase::Util::AnyHash))
          )
            .returns(
              T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication, Increase::Util::AnyHash))
            )
        end
        def oauth_application=(_)
        end

        # If present, details about the User that created the transfer.
        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::User, Increase::Util::AnyHash)))
            .returns(T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::User, Increase::Util::AnyHash)))
        end
        def user=(_)
        end

        # What object created the transfer, either via the API or the dashboard.
        sig do
          params(
            api_key: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::APIKey, Increase::Util::AnyHash)),
            category: Increase::Models::AccountTransfer::CreatedBy::Category::OrSymbol,
            oauth_application: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication, Increase::Util::AnyHash)),
            user: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::User, Increase::Util::AnyHash))
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
                category: Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol,
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
        module Category
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountTransfer::CreatedBy::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol) }

          # An API key. Details will be under the `api_key` object.
          API_KEY = T.let(:api_key, Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol)

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION =
            T.let(:oauth_application, Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol)

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = T.let(:user, Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol]) }
            def values
            end
          end
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
      module Currency
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountTransfer::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::AccountTransfer::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::AccountTransfer::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::AccountTransfer::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::AccountTransfer::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::AccountTransfer::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::AccountTransfer::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::AccountTransfer::Currency::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::AccountTransfer::Currency::TaggedSymbol]) }
          def values
          end
        end
      end

      # The transfer's network.
      module Network
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountTransfer::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::AccountTransfer::Network::TaggedSymbol) }

        ACCOUNT = T.let(:account, Increase::Models::AccountTransfer::Network::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::AccountTransfer::Network::TaggedSymbol]) }
          def values
          end
        end
      end

      # The lifecycle status of the transfer.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountTransfer::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::AccountTransfer::Status::TaggedSymbol) }

        # The transfer is pending approval.
        PENDING_APPROVAL = T.let(:pending_approval, Increase::Models::AccountTransfer::Status::TaggedSymbol)

        # The transfer has been canceled.
        CANCELED = T.let(:canceled, Increase::Models::AccountTransfer::Status::TaggedSymbol)

        # The transfer has been completed.
        COMPLETE = T.let(:complete, Increase::Models::AccountTransfer::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::AccountTransfer::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account_transfer`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountTransfer::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::AccountTransfer::Type::TaggedSymbol) }

        ACCOUNT_TRANSFER = T.let(:account_transfer, Increase::Models::AccountTransfer::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::AccountTransfer::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
