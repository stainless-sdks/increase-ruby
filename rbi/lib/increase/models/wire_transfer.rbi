# typed: strong

module Increase
  module Models
    class WireTransfer < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(String) }
      attr_accessor :account_number

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(Increase::Models::WireTransfer::Approval)) }
      attr_accessor :approval

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line1

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line2

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_address_line3

      sig { returns(T.nilable(String)) }
      attr_accessor :beneficiary_name

      sig { returns(T.nilable(Increase::Models::WireTransfer::Cancellation)) }
      attr_accessor :cancellation

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy)) }
      attr_accessor :created_by

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :external_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T.nilable(String)) }
      attr_accessor :message_to_recipient

      sig { returns(Symbol) }
      attr_accessor :network

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line1

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line2

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_address_line3

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_name

      sig { returns(T.nilable(String)) }
      attr_accessor :pending_transaction_id

      sig { returns(T.nilable(Increase::Models::WireTransfer::Reversal)) }
      attr_accessor :reversal

      sig { returns(String) }
      attr_accessor :routing_number

      sig { returns(T.nilable(String)) }
      attr_accessor :source_account_number_id

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(Increase::Models::WireTransfer::Submission)) }
      attr_accessor :submission

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
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
        override.returns(
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
        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey)) }
        attr_accessor :api_key

        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication)) }
        attr_accessor :oauth_application

        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::User)) }
        attr_accessor :user

        sig do
          params(
            api_key: T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey),
            category: Symbol,
            oauth_application: T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::WireTransfer::CreatedBy::User)
          ).void
        end
        def initialize(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override.returns(
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

        WIRE = :wire

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Reversal < Increase::BaseModel
        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :description

        sig { returns(T.nilable(String)) }
        attr_accessor :financial_institution_to_financial_institution_information

        sig { returns(Date) }
        attr_accessor :input_cycle_date

        sig { returns(String) }
        attr_accessor :input_message_accountability_data

        sig { returns(String) }
        attr_accessor :input_sequence_number

        sig { returns(String) }
        attr_accessor :input_source

        sig { returns(T.nilable(String)) }
        attr_accessor :originator_routing_number

        sig { returns(Date) }
        attr_accessor :previous_message_input_cycle_date

        sig { returns(String) }
        attr_accessor :previous_message_input_message_accountability_data

        sig { returns(String) }
        attr_accessor :previous_message_input_sequence_number

        sig { returns(String) }
        attr_accessor :previous_message_input_source

        sig { returns(T.nilable(String)) }
        attr_accessor :receiver_financial_institution_information

        sig { returns(T.nilable(String)) }
        attr_accessor :sender_reference

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { returns(String) }
        attr_accessor :wire_transfer_id

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
          ).void
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
          override.returns(
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
        attr_accessor :input_message_accountability_data

        sig { returns(Time) }
        attr_accessor :submitted_at

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
