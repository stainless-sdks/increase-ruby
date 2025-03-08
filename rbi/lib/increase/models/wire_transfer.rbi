# typed: strong

module Increase
  module Models
    class WireTransfer < Increase::BaseModel
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

      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(T.nilable(Increase::Models::WireTransfer::Approval)) }
      def approval
      end

      sig do
        params(_: T.nilable(Increase::Models::WireTransfer::Approval))
          .returns(T.nilable(Increase::Models::WireTransfer::Approval))
      end
      def approval=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line1=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line2=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line3=(_)
      end

      sig { returns(T.nilable(String)) }
      def beneficiary_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_name=(_)
      end

      sig { returns(T.nilable(Increase::Models::WireTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(Increase::Models::WireTransfer::Cancellation))
          .returns(T.nilable(Increase::Models::WireTransfer::Cancellation))
      end
      def cancellation=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy)) }
      def created_by
      end

      sig do
        params(_: T.nilable(Increase::Models::WireTransfer::CreatedBy))
          .returns(T.nilable(Increase::Models::WireTransfer::CreatedBy))
      end
      def created_by=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(String)) }
      def message_to_recipient
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def message_to_recipient=(_)
      end

      sig { returns(Symbol) }
      def network
      end

      sig { params(_: Symbol).returns(Symbol) }
      def network=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line1=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line2=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line3=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_name=(_)
      end

      sig { returns(T.nilable(String)) }
      def pending_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def pending_transaction_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::WireTransfer::Reversal)) }
      def reversal
      end

      sig do
        params(_: T.nilable(Increase::Models::WireTransfer::Reversal))
          .returns(T.nilable(Increase::Models::WireTransfer::Reversal))
      end
      def reversal=(_)
      end

      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def source_account_number_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def source_account_number_id=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Increase::Models::WireTransfer::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(Increase::Models::WireTransfer::Submission))
          .returns(T.nilable(Increase::Models::WireTransfer::Submission))
      end
      def submission=(_)
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
          currency: Symbol,
          external_account_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          message_to_recipient: T.nilable(String),
          network: Symbol,
          originator_address_line1: T.nilable(String),
          originator_address_line2: T.nilable(String),
          originator_address_line3: T.nilable(String),
          originator_name: T.nilable(String),
          pending_transaction_id: T.nilable(String),
          reversal: T.nilable(Increase::Models::WireTransfer::Reversal),
          routing_number: String,
          source_account_number_id: T.nilable(String),
          status: Symbol,
          submission: T.nilable(Increase::Models::WireTransfer::Submission),
          transaction_id: T.nilable(String),
          type: Symbol
        )
          .void
      end
      def initialize(
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
      )
      end

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
              currency: Symbol,
              external_account_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              message_to_recipient: T.nilable(String),
              network: Symbol,
              originator_address_line1: T.nilable(String),
              originator_address_line2: T.nilable(String),
              originator_address_line3: T.nilable(String),
              originator_name: T.nilable(String),
              pending_transaction_id: T.nilable(String),
              reversal: T.nilable(Increase::Models::WireTransfer::Reversal),
              routing_number: String,
              source_account_number_id: T.nilable(String),
              status: Symbol,
              submission: T.nilable(Increase::Models::WireTransfer::Submission),
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
        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey)) }
        def api_key
        end

        sig do
          params(_: T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey))
            .returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey))
        end
        def api_key=(_)
        end

        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(_: T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication))
            .returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication))
        end
        def oauth_application=(_)
        end

        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(Increase::Models::WireTransfer::CreatedBy::User))
            .returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::User))
        end
        def user=(_)
        end

        sig do
          params(
            api_key: T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey),
            category: Symbol,
            oauth_application: T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::WireTransfer::CreatedBy::User)
          )
            .void
        end
        def initialize(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override
            .returns(
              {
                api_key: T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey),
                category: Symbol,
                oauth_application: T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication),
                user: T.nilable(Increase::Models::WireTransfer::CreatedBy::User)
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

        WIRE = :wire

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Reversal < Increase::BaseModel
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
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

        sig { returns(T.nilable(String)) }
        def financial_institution_to_financial_institution_information
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def financial_institution_to_financial_institution_information=(_)
        end

        sig { returns(Date) }
        def input_cycle_date
        end

        sig { params(_: Date).returns(Date) }
        def input_cycle_date=(_)
        end

        sig { returns(String) }
        def input_message_accountability_data
        end

        sig { params(_: String).returns(String) }
        def input_message_accountability_data=(_)
        end

        sig { returns(String) }
        def input_sequence_number
        end

        sig { params(_: String).returns(String) }
        def input_sequence_number=(_)
        end

        sig { returns(String) }
        def input_source
        end

        sig { params(_: String).returns(String) }
        def input_source=(_)
        end

        sig { returns(T.nilable(String)) }
        def originator_routing_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def originator_routing_number=(_)
        end

        sig { returns(Date) }
        def previous_message_input_cycle_date
        end

        sig { params(_: Date).returns(Date) }
        def previous_message_input_cycle_date=(_)
        end

        sig { returns(String) }
        def previous_message_input_message_accountability_data
        end

        sig { params(_: String).returns(String) }
        def previous_message_input_message_accountability_data=(_)
        end

        sig { returns(String) }
        def previous_message_input_sequence_number
        end

        sig { params(_: String).returns(String) }
        def previous_message_input_sequence_number=(_)
        end

        sig { returns(String) }
        def previous_message_input_source
        end

        sig { params(_: String).returns(String) }
        def previous_message_input_source=(_)
        end

        sig { returns(T.nilable(String)) }
        def receiver_financial_institution_information
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def receiver_financial_institution_information=(_)
        end

        sig { returns(T.nilable(String)) }
        def sender_reference
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def sender_reference=(_)
        end

        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig { returns(String) }
        def wire_transfer_id
        end

        sig { params(_: String).returns(String) }
        def wire_transfer_id=(_)
        end

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
            .void
        end
        def initialize(
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
        )
        end

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
        def to_hash
        end
      end

      class Status < Increase::Enum
        abstract!

        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = :pending_reviewing

        # The transfer has been rejected by Increase.
        REJECTED = :rejected

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer is pending creation.
        PENDING_CREATING = :pending_creating

        # The transfer has been reversed.
        REVERSED = :reversed

        # The transfer has been submitted to Fedwire.
        SUBMITTED = :submitted

        # The transfer has been acknowledged by Fedwire and can be considered complete.
        COMPLETE = :complete

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Submission < Increase::BaseModel
        sig { returns(String) }
        def input_message_accountability_data
        end

        sig { params(_: String).returns(String) }
        def input_message_accountability_data=(_)
        end

        sig { returns(Time) }
        def submitted_at
        end

        sig { params(_: Time).returns(Time) }
        def submitted_at=(_)
        end

        sig { params(input_message_accountability_data: String, submitted_at: Time).void }
        def initialize(input_message_accountability_data:, submitted_at:)
        end

        sig { override.returns({input_message_accountability_data: String, submitted_at: Time}) }
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        WIRE_TRANSFER = :wire_transfer

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
