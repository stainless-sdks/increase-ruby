# typed: strong

module Increase
  module Models
    class WireTransfer < Increase::Internal::Type::BaseModel
      # #/components/schemas/wire_transfer/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/wire_transfer/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/wire_transfer/properties/account_number
      sig { returns(String) }
      attr_accessor :account_number

      # #/components/schemas/wire_transfer/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/wire_transfer/properties/approval
      sig { returns(T.nilable(Increase::Models::WireTransfer::Approval)) }
      attr_reader :approval

      sig do
        params(approval: T.nilable(T.any(Increase::Models::WireTransfer::Approval, Increase::Internal::AnyHash)))
          .void
      end
      attr_writer :approval

      # #/components/schemas/wire_transfer/properties/beneficiary_address_line1
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line1

      # #/components/schemas/wire_transfer/properties/beneficiary_address_line2
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line2

      # #/components/schemas/wire_transfer/properties/beneficiary_address_line3
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line3

      # #/components/schemas/wire_transfer/properties/beneficiary_name
      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_name

      # #/components/schemas/wire_transfer/properties/cancellation
      sig { returns(T.nilable(Increase::Models::WireTransfer::Cancellation)) }
      attr_reader :cancellation

      sig do
        params(
          cancellation: T.nilable(T.any(Increase::Models::WireTransfer::Cancellation, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :cancellation

      # #/components/schemas/wire_transfer/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/wire_transfer/properties/created_by
      sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy)) }
      attr_reader :created_by

      sig do
        params(
          created_by: T.nilable(T.any(Increase::Models::WireTransfer::CreatedBy, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :created_by

      # #/components/schemas/wire_transfer/properties/currency
      sig { returns(Increase::Models::WireTransfer::Currency::TaggedSymbol) }
      attr_accessor :currency

      # #/components/schemas/wire_transfer/properties/external_account_id
      sig { returns(T.nilable(String)) }
      attr_accessor :external_account_id

      # #/components/schemas/wire_transfer/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/wire_transfer/properties/message_to_recipient
      sig { returns(T.nilable(String)) }
      attr_accessor :message_to_recipient

      # #/components/schemas/wire_transfer/properties/network
      sig { returns(Increase::Models::WireTransfer::Network::TaggedSymbol) }
      attr_accessor :network

      # #/components/schemas/wire_transfer/properties/originator_address_line1
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line1

      # #/components/schemas/wire_transfer/properties/originator_address_line2
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line2

      # #/components/schemas/wire_transfer/properties/originator_address_line3
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line3

      # #/components/schemas/wire_transfer/properties/originator_name
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_name

      # #/components/schemas/wire_transfer/properties/pending_transaction_id
      sig { returns(T.nilable(String)) }
      attr_accessor :pending_transaction_id

      # #/components/schemas/wire_transfer/properties/reversal
      sig { returns(T.nilable(Increase::Models::WireTransfer::Reversal)) }
      attr_reader :reversal

      sig do
        params(reversal: T.nilable(T.any(Increase::Models::WireTransfer::Reversal, Increase::Internal::AnyHash)))
          .void
      end
      attr_writer :reversal

      # #/components/schemas/wire_transfer/properties/routing_number
      sig { returns(String) }
      attr_accessor :routing_number

      # #/components/schemas/wire_transfer/properties/source_account_number_id
      sig { returns(T.nilable(String)) }
      attr_accessor :source_account_number_id

      # #/components/schemas/wire_transfer/properties/status
      sig { returns(Increase::Models::WireTransfer::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/wire_transfer/properties/submission
      sig { returns(T.nilable(Increase::Models::WireTransfer::Submission)) }
      attr_reader :submission

      sig do
        params(
          submission: T.nilable(T.any(Increase::Models::WireTransfer::Submission, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :submission

      # #/components/schemas/wire_transfer/properties/transaction_id
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      # #/components/schemas/wire_transfer/properties/type
      sig { returns(Increase::Models::WireTransfer::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/wire_transfer
      sig do
        params(
          id: String,
          account_id: String,
          account_number: String,
          amount: Integer,
          approval: T.nilable(T.any(Increase::Models::WireTransfer::Approval, Increase::Internal::AnyHash)),
          beneficiary_address_line1: T.nilable(String),
          beneficiary_address_line2: T.nilable(String),
          beneficiary_address_line3: T.nilable(String),
          beneficiary_name: T.nilable(String),
          cancellation: T.nilable(T.any(Increase::Models::WireTransfer::Cancellation, Increase::Internal::AnyHash)),
          created_at: Time,
          created_by: T.nilable(T.any(Increase::Models::WireTransfer::CreatedBy, Increase::Internal::AnyHash)),
          currency: Increase::Models::WireTransfer::Currency::OrSymbol,
          external_account_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          message_to_recipient: T.nilable(String),
          network: Increase::Models::WireTransfer::Network::OrSymbol,
          originator_address_line1: T.nilable(String),
          originator_address_line2: T.nilable(String),
          originator_address_line3: T.nilable(String),
          originator_name: T.nilable(String),
          pending_transaction_id: T.nilable(String),
          reversal: T.nilable(T.any(Increase::Models::WireTransfer::Reversal, Increase::Internal::AnyHash)),
          routing_number: String,
          source_account_number_id: T.nilable(String),
          status: Increase::Models::WireTransfer::Status::OrSymbol,
          submission: T.nilable(T.any(Increase::Models::WireTransfer::Submission, Increase::Internal::AnyHash)),
          transaction_id: T.nilable(String),
          type: Increase::Models::WireTransfer::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        account_number:,
        amount:,
        approval:,
        beneficiary_address_line1:,
        beneficiary_address_line2:,
        beneficiary_address_line3:,
        beneficiary_name:,
        cancellation:,
        created_at:,
        created_by:,
        currency:,
        external_account_id:,
        idempotency_key:,
        message_to_recipient:,
        network:,
        originator_address_line1:,
        originator_address_line2:,
        originator_address_line3:,
        originator_name:,
        pending_transaction_id:,
        reversal:,
        routing_number:,
        source_account_number_id:,
        status:,
        submission:,
        transaction_id:,
        type:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              account_number: String,
              amount: Integer,
              approval: T.nilable(Increase::Models::WireTransfer::Approval),
              beneficiary_address_line1: T.nilable(String),
              beneficiary_address_line2: T.nilable(String),
              beneficiary_address_line3: T.nilable(String),
              beneficiary_name: T.nilable(String),
              cancellation: T.nilable(Increase::Models::WireTransfer::Cancellation),
              created_at: Time,
              created_by: T.nilable(Increase::Models::WireTransfer::CreatedBy),
              currency: Increase::Models::WireTransfer::Currency::TaggedSymbol,
              external_account_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              message_to_recipient: T.nilable(String),
              network: Increase::Models::WireTransfer::Network::TaggedSymbol,
              originator_address_line1: T.nilable(String),
              originator_address_line2: T.nilable(String),
              originator_address_line3: T.nilable(String),
              originator_name: T.nilable(String),
              pending_transaction_id: T.nilable(String),
              reversal: T.nilable(Increase::Models::WireTransfer::Reversal),
              routing_number: String,
              source_account_number_id: T.nilable(String),
              status: Increase::Models::WireTransfer::Status::TaggedSymbol,
              submission: T.nilable(Increase::Models::WireTransfer::Submission),
              transaction_id: T.nilable(String),
              type: Increase::Models::WireTransfer::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Approval < Increase::Internal::Type::BaseModel
        # #/components/schemas/wire_transfer/properties/approval/anyOf/0/properties/approved_at
        sig { returns(Time) }
        attr_accessor :approved_at

        # #/components/schemas/wire_transfer/properties/approval/anyOf/0/properties/approved_by
        sig { returns(T.nilable(String)) }
        attr_accessor :approved_by

        # #/components/schemas/wire_transfer/properties/approval
        sig { params(approved_at: Time, approved_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(approved_at:, approved_by:); end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash; end
      end

      class Cancellation < Increase::Internal::Type::BaseModel
        # #/components/schemas/wire_transfer/properties/cancellation/anyOf/0/properties/canceled_at
        sig { returns(Time) }
        attr_accessor :canceled_at

        # #/components/schemas/wire_transfer/properties/cancellation/anyOf/0/properties/canceled_by
        sig { returns(T.nilable(String)) }
        attr_accessor :canceled_by

        # #/components/schemas/wire_transfer/properties/cancellation
        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(canceled_at:, canceled_by:); end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash; end
      end

      class CreatedBy < Increase::Internal::Type::BaseModel
        # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/api_key
        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey)) }
        attr_reader :api_key

        sig do
          params(
            api_key: T.nilable(T.any(Increase::Models::WireTransfer::CreatedBy::APIKey, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :api_key

        # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/category
        sig { returns(Increase::Models::WireTransfer::CreatedBy::Category::TaggedSymbol) }
        attr_accessor :category

        # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/oauth_application
        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication)) }
        attr_reader :oauth_application

        sig do
          params(
            oauth_application: T.nilable(T.any(Increase::Models::WireTransfer::CreatedBy::OAuthApplication, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :oauth_application

        # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/user
        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::User)) }
        attr_reader :user

        sig do
          params(
            user: T.nilable(T.any(Increase::Models::WireTransfer::CreatedBy::User, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :user

        # #/components/schemas/wire_transfer/properties/created_by
        sig do
          params(
            api_key: T.nilable(T.any(Increase::Models::WireTransfer::CreatedBy::APIKey, Increase::Internal::AnyHash)),
            category: Increase::Models::WireTransfer::CreatedBy::Category::OrSymbol,
            oauth_application: T.nilable(T.any(Increase::Models::WireTransfer::CreatedBy::OAuthApplication, Increase::Internal::AnyHash)),
            user: T.nilable(T.any(Increase::Models::WireTransfer::CreatedBy::User, Increase::Internal::AnyHash))
          )
            .returns(T.attached_class)
        end
        def self.new(api_key:, category:, oauth_application:, user:); end

        sig do
          override
            .returns(
              {
                api_key: T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey),
                category: Increase::Models::WireTransfer::CreatedBy::Category::TaggedSymbol,
                oauth_application: T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication),
                user: T.nilable(Increase::Models::WireTransfer::CreatedBy::User)
              }
            )
        end
        def to_hash; end

        class APIKey < Increase::Internal::Type::BaseModel
          # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/api_key/anyOf/0/properties/description
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/api_key
          sig { params(description: T.nilable(String)).returns(T.attached_class) }
          def self.new(description:); end

          sig { override.returns({description: T.nilable(String)}) }
          def to_hash; end
        end

        # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/category
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::WireTransfer::CreatedBy::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::WireTransfer::CreatedBy::Category::TaggedSymbol) }

          # An API key. Details will be under the `api_key` object.
          API_KEY = T.let(:api_key, Increase::Models::WireTransfer::CreatedBy::Category::TaggedSymbol)

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION =
            T.let(:oauth_application, Increase::Models::WireTransfer::CreatedBy::Category::TaggedSymbol)

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = T.let(:user, Increase::Models::WireTransfer::CreatedBy::Category::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::WireTransfer::CreatedBy::Category::TaggedSymbol]) }
          def self.values; end
        end

        class OAuthApplication < Increase::Internal::Type::BaseModel
          # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/oauth_application/anyOf/0/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/oauth_application
          sig { params(name: String).returns(T.attached_class) }
          def self.new(name:); end

          sig { override.returns({name: String}) }
          def to_hash; end
        end

        class User < Increase::Internal::Type::BaseModel
          # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/user/anyOf/0/properties/email
          sig { returns(String) }
          attr_accessor :email

          # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/user
          sig { params(email: String).returns(T.attached_class) }
          def self.new(email:); end

          sig { override.returns({email: String}) }
          def to_hash; end
        end
      end

      # #/components/schemas/wire_transfer/properties/currency
      module Currency
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::WireTransfer::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::WireTransfer::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::WireTransfer::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::WireTransfer::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::WireTransfer::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::WireTransfer::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::WireTransfer::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::WireTransfer::Currency::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::WireTransfer::Currency::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/wire_transfer/properties/network
      module Network
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::WireTransfer::Network) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::WireTransfer::Network::TaggedSymbol) }

        WIRE = T.let(:wire, Increase::Models::WireTransfer::Network::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::WireTransfer::Network::TaggedSymbol]) }
        def self.values; end
      end

      class Reversal < Increase::Internal::Type::BaseModel
        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/amount
        sig { returns(Integer) }
        attr_accessor :amount

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/created_at
        sig { returns(Time) }
        attr_accessor :created_at

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/description
        sig { returns(String) }
        attr_accessor :description

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/financial_institution_to_financial_institution_information
        sig { returns(T.nilable(String)) }
        attr_accessor :financial_institution_to_financial_institution_information

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/input_cycle_date
        sig { returns(Date) }
        attr_accessor :input_cycle_date

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/input_message_accountability_data
        sig { returns(String) }
        attr_accessor :input_message_accountability_data

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/input_sequence_number
        sig { returns(String) }
        attr_accessor :input_sequence_number

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/input_source
        sig { returns(String) }
        attr_accessor :input_source

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/originator_routing_number
        sig { returns(T.nilable(String)) }
        attr_accessor :originator_routing_number

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/previous_message_input_cycle_date
        sig { returns(Date) }
        attr_accessor :previous_message_input_cycle_date

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/previous_message_input_message_accountability_data
        sig { returns(String) }
        attr_accessor :previous_message_input_message_accountability_data

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/previous_message_input_sequence_number
        sig { returns(String) }
        attr_accessor :previous_message_input_sequence_number

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/previous_message_input_source
        sig { returns(String) }
        attr_accessor :previous_message_input_source

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/receiver_financial_institution_information
        sig { returns(T.nilable(String)) }
        attr_accessor :receiver_financial_institution_information

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/sender_reference
        sig { returns(T.nilable(String)) }
        attr_accessor :sender_reference

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/transaction_id
        sig { returns(String) }
        attr_accessor :transaction_id

        # #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/wire_transfer_id
        sig { returns(String) }
        attr_accessor :wire_transfer_id

        # #/components/schemas/wire_transfer/properties/reversal
        sig do
          params(
            amount: Integer,
            created_at: Time,
            description: String,
            financial_institution_to_financial_institution_information: T.nilable(String),
            input_cycle_date: Date,
            input_message_accountability_data: String,
            input_sequence_number: String,
            input_source: String,
            originator_routing_number: T.nilable(String),
            previous_message_input_cycle_date: Date,
            previous_message_input_message_accountability_data: String,
            previous_message_input_sequence_number: String,
            previous_message_input_source: String,
            receiver_financial_institution_information: T.nilable(String),
            sender_reference: T.nilable(String),
            transaction_id: String,
            wire_transfer_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          amount:,
          created_at:,
          description:,
          financial_institution_to_financial_institution_information:,
          input_cycle_date:,
          input_message_accountability_data:,
          input_sequence_number:,
          input_source:,
          originator_routing_number:,
          previous_message_input_cycle_date:,
          previous_message_input_message_accountability_data:,
          previous_message_input_sequence_number:,
          previous_message_input_source:,
          receiver_financial_institution_information:,
          sender_reference:,
          transaction_id:,
          wire_transfer_id:
        ); end
        sig do
          override
            .returns(
              {
                amount: Integer,
                created_at: Time,
                description: String,
                financial_institution_to_financial_institution_information: T.nilable(String),
                input_cycle_date: Date,
                input_message_accountability_data: String,
                input_sequence_number: String,
                input_source: String,
                originator_routing_number: T.nilable(String),
                previous_message_input_cycle_date: Date,
                previous_message_input_message_accountability_data: String,
                previous_message_input_sequence_number: String,
                previous_message_input_source: String,
                receiver_financial_institution_information: T.nilable(String),
                sender_reference: T.nilable(String),
                transaction_id: String,
                wire_transfer_id: String
              }
            )
        end
        def to_hash; end
      end

      # #/components/schemas/wire_transfer/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::WireTransfer::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::WireTransfer::Status::TaggedSymbol) }

        # The transfer is pending approval.
        PENDING_APPROVAL = T.let(:pending_approval, Increase::Models::WireTransfer::Status::TaggedSymbol)

        # The transfer has been canceled.
        CANCELED = T.let(:canceled, Increase::Models::WireTransfer::Status::TaggedSymbol)

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = T.let(:pending_reviewing, Increase::Models::WireTransfer::Status::TaggedSymbol)

        # The transfer has been rejected by Increase.
        REJECTED = T.let(:rejected, Increase::Models::WireTransfer::Status::TaggedSymbol)

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = T.let(:requires_attention, Increase::Models::WireTransfer::Status::TaggedSymbol)

        # The transfer is pending creation.
        PENDING_CREATING = T.let(:pending_creating, Increase::Models::WireTransfer::Status::TaggedSymbol)

        # The transfer has been reversed.
        REVERSED = T.let(:reversed, Increase::Models::WireTransfer::Status::TaggedSymbol)

        # The transfer has been submitted to Fedwire.
        SUBMITTED = T.let(:submitted, Increase::Models::WireTransfer::Status::TaggedSymbol)

        # The transfer has been acknowledged by Fedwire and can be considered complete.
        COMPLETE = T.let(:complete, Increase::Models::WireTransfer::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::WireTransfer::Status::TaggedSymbol]) }
        def self.values; end
      end

      class Submission < Increase::Internal::Type::BaseModel
        # #/components/schemas/wire_transfer/properties/submission/anyOf/0/properties/input_message_accountability_data
        sig { returns(String) }
        attr_accessor :input_message_accountability_data

        # #/components/schemas/wire_transfer/properties/submission/anyOf/0/properties/submitted_at
        sig { returns(Time) }
        attr_accessor :submitted_at

        # #/components/schemas/wire_transfer/properties/submission
        sig do
          params(input_message_accountability_data: String, submitted_at: Time).returns(T.attached_class)
        end
        def self.new(input_message_accountability_data:, submitted_at:); end

        sig { override.returns({input_message_accountability_data: String, submitted_at: Time}) }
        def to_hash; end
      end

      # #/components/schemas/wire_transfer/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::WireTransfer::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::WireTransfer::Type::TaggedSymbol) }

        WIRE_TRANSFER = T.let(:wire_transfer, Increase::Models::WireTransfer::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::WireTransfer::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
