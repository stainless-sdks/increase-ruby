# typed: strong

module Increase
  module Models
    class AccountTransfer < Increase::Internal::Type::BaseModel
      # #/components/schemas/account_transfer/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/account_transfer/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/account_transfer/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/account_transfer/properties/approval
      sig { returns(T.nilable(Increase::Models::AccountTransfer::Approval)) }
      attr_reader :approval

      sig do
        params(
          approval: T.nilable(T.any(Increase::Models::AccountTransfer::Approval, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :approval

      # #/components/schemas/account_transfer/properties/cancellation
      sig { returns(T.nilable(Increase::Models::AccountTransfer::Cancellation)) }
      attr_reader :cancellation

      sig do
        params(
          cancellation: T.nilable(T.any(Increase::Models::AccountTransfer::Cancellation, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :cancellation

      # #/components/schemas/account_transfer/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/account_transfer/properties/created_by
      sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy)) }
      attr_reader :created_by

      sig do
        params(
          created_by: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :created_by

      # #/components/schemas/account_transfer/properties/currency
      sig { returns(Increase::Models::AccountTransfer::Currency::TaggedSymbol) }
      attr_accessor :currency

      # #/components/schemas/account_transfer/properties/description
      sig { returns(String) }
      attr_accessor :description

      # #/components/schemas/account_transfer/properties/destination_account_id
      sig { returns(String) }
      attr_accessor :destination_account_id

      # #/components/schemas/account_transfer/properties/destination_transaction_id
      sig { returns(T.nilable(String)) }
      attr_accessor :destination_transaction_id

      # #/components/schemas/account_transfer/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/account_transfer/properties/network
      sig { returns(Increase::Models::AccountTransfer::Network::TaggedSymbol) }
      attr_accessor :network

      # #/components/schemas/account_transfer/properties/pending_transaction_id
      sig { returns(T.nilable(String)) }
      attr_accessor :pending_transaction_id

      # #/components/schemas/account_transfer/properties/status
      sig { returns(Increase::Models::AccountTransfer::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/account_transfer/properties/transaction_id
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      # #/components/schemas/account_transfer/properties/type
      sig { returns(Increase::Models::AccountTransfer::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/account_transfer
      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          approval: T.nilable(T.any(Increase::Models::AccountTransfer::Approval, Increase::Internal::AnyHash)),
          cancellation: T.nilable(T.any(Increase::Models::AccountTransfer::Cancellation, Increase::Internal::AnyHash)),
          created_at: Time,
          created_by: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy, Increase::Internal::AnyHash)),
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
      ); end
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
      def to_hash; end

      class Approval < Increase::Internal::Type::BaseModel
        # #/components/schemas/account_transfer/properties/approval/anyOf/0/properties/approved_at
        sig { returns(Time) }
        attr_accessor :approved_at

        # #/components/schemas/account_transfer/properties/approval/anyOf/0/properties/approved_by
        sig { returns(T.nilable(String)) }
        attr_accessor :approved_by

        # #/components/schemas/account_transfer/properties/approval
        sig { params(approved_at: Time, approved_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(approved_at:, approved_by:); end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash; end
      end

      class Cancellation < Increase::Internal::Type::BaseModel
        # #/components/schemas/account_transfer/properties/cancellation/anyOf/0/properties/canceled_at
        sig { returns(Time) }
        attr_accessor :canceled_at

        # #/components/schemas/account_transfer/properties/cancellation/anyOf/0/properties/canceled_by
        sig { returns(T.nilable(String)) }
        attr_accessor :canceled_by

        # #/components/schemas/account_transfer/properties/cancellation
        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(canceled_at:, canceled_by:); end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash; end
      end

      class CreatedBy < Increase::Internal::Type::BaseModel
        # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/api_key
        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::APIKey)) }
        attr_reader :api_key

        sig do
          params(
            api_key: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::APIKey, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :api_key

        # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/category
        sig { returns(Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol) }
        attr_accessor :category

        # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/oauth_application
        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication)) }
        attr_reader :oauth_application

        sig do
          params(
            oauth_application: T.nilable(
              T.any(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication, Increase::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :oauth_application

        # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/user
        sig { returns(T.nilable(Increase::Models::AccountTransfer::CreatedBy::User)) }
        attr_reader :user

        sig do
          params(
            user: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::User, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :user

        # #/components/schemas/account_transfer/properties/created_by
        sig do
          params(
            api_key: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::APIKey, Increase::Internal::AnyHash)),
            category: Increase::Models::AccountTransfer::CreatedBy::Category::OrSymbol,
            oauth_application: T.nilable(
              T.any(Increase::Models::AccountTransfer::CreatedBy::OAuthApplication, Increase::Internal::AnyHash)
            ),
            user: T.nilable(T.any(Increase::Models::AccountTransfer::CreatedBy::User, Increase::Internal::AnyHash))
          )
            .returns(T.attached_class)
        end
        def self.new(api_key:, category:, oauth_application:, user:); end

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
        def to_hash; end

        class APIKey < Increase::Internal::Type::BaseModel
          # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/api_key/anyOf/0/properties/description
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/api_key
          sig { params(description: T.nilable(String)).returns(T.attached_class) }
          def self.new(description:); end

          sig { override.returns({description: T.nilable(String)}) }
          def to_hash; end
        end

        # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/category
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountTransfer::CreatedBy::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol) }

          # An API key. Details will be under the `api_key` object.
          API_KEY = T.let(:api_key, Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol)

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION =
            T.let(:oauth_application, Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol)

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = T.let(:user, Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::AccountTransfer::CreatedBy::Category::TaggedSymbol]) }
          def self.values; end
        end

        class OAuthApplication < Increase::Internal::Type::BaseModel
          # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/oauth_application/anyOf/0/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/oauth_application
          sig { params(name: String).returns(T.attached_class) }
          def self.new(name:); end

          sig { override.returns({name: String}) }
          def to_hash; end
        end

        class User < Increase::Internal::Type::BaseModel
          # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/user/anyOf/0/properties/email
          sig { returns(String) }
          attr_accessor :email

          # #/components/schemas/account_transfer/properties/created_by/anyOf/0/properties/user
          sig { params(email: String).returns(T.attached_class) }
          def self.new(email:); end

          sig { override.returns({email: String}) }
          def to_hash; end
        end
      end

      # #/components/schemas/account_transfer/properties/currency
      module Currency
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountTransfer::Currency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::AccountTransfer::Currency::TaggedSymbol) }

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

        sig { override.returns(T::Array[Increase::Models::AccountTransfer::Currency::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/account_transfer/properties/network
      module Network
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountTransfer::Network) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::AccountTransfer::Network::TaggedSymbol) }

        ACCOUNT = T.let(:account, Increase::Models::AccountTransfer::Network::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::AccountTransfer::Network::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/account_transfer/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountTransfer::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::AccountTransfer::Status::TaggedSymbol) }

        # The transfer is pending approval.
        PENDING_APPROVAL = T.let(:pending_approval, Increase::Models::AccountTransfer::Status::TaggedSymbol)

        # The transfer has been canceled.
        CANCELED = T.let(:canceled, Increase::Models::AccountTransfer::Status::TaggedSymbol)

        # The transfer has been completed.
        COMPLETE = T.let(:complete, Increase::Models::AccountTransfer::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::AccountTransfer::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/account_transfer/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountTransfer::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::AccountTransfer::Type::TaggedSymbol) }

        ACCOUNT_TRANSFER = T.let(:account_transfer, Increase::Models::AccountTransfer::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::AccountTransfer::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
