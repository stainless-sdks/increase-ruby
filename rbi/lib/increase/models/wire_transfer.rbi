# typed: strong

module Increase
  module Models
    class WireTransfer < Increase::BaseModel
      # The wire transfer's identifier.
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

      # The destination account number.
      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # The transfer amount in USD cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # If your account requires approvals for transfers and the transfer was approved,
      #   this will contain details of the approval.
      sig { returns(T.nilable(Increase::Models::WireTransfer::Approval)) }
      def approval
      end

      sig do
        params(_: T.nilable(Increase::Models::WireTransfer::Approval))
          .returns(T.nilable(Increase::Models::WireTransfer::Approval))
      end
      def approval=(_)
      end

      # The beneficiary's address line 1.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line1=(_)
      end

      # The beneficiary's address line 2.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line2=(_)
      end

      # The beneficiary's address line 3.
      sig { returns(T.nilable(String)) }
      def beneficiary_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_address_line3=(_)
      end

      # The beneficiary's name.
      sig { returns(T.nilable(String)) }
      def beneficiary_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def beneficiary_name=(_)
      end

      # If your account requires approvals for transfers and the transfer was not
      #   approved, this will contain details of the cancellation.
      sig { returns(T.nilable(Increase::Models::WireTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(Increase::Models::WireTransfer::Cancellation))
          .returns(T.nilable(Increase::Models::WireTransfer::Cancellation))
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
      sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy)) }
      def created_by
      end

      sig do
        params(_: T.nilable(Increase::Models::WireTransfer::CreatedBy))
          .returns(T.nilable(Increase::Models::WireTransfer::CreatedBy))
      end
      def created_by=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   currency. For wire transfers this is always equal to `usd`.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # The identifier of the External Account the transfer was made to, if any.
      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_account_id=(_)
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

      # The message that will show on the recipient's bank statement.
      sig { returns(T.nilable(String)) }
      def message_to_recipient
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def message_to_recipient=(_)
      end

      # The transfer's network.
      sig { returns(Symbol) }
      def network
      end

      sig { params(_: Symbol).returns(Symbol) }
      def network=(_)
      end

      # The originator's address line 1.
      sig { returns(T.nilable(String)) }
      def originator_address_line1
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line1=(_)
      end

      # The originator's address line 2.
      sig { returns(T.nilable(String)) }
      def originator_address_line2
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line2=(_)
      end

      # The originator's address line 3.
      sig { returns(T.nilable(String)) }
      def originator_address_line3
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_address_line3=(_)
      end

      # The originator's name.
      sig { returns(T.nilable(String)) }
      def originator_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_name=(_)
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

      # If your transfer is reversed, this will contain details of the reversal.
      sig { returns(T.nilable(Increase::Models::WireTransfer::Reversal)) }
      def reversal
      end

      sig do
        params(_: T.nilable(Increase::Models::WireTransfer::Reversal))
          .returns(T.nilable(Increase::Models::WireTransfer::Reversal))
      end
      def reversal=(_)
      end

      # The American Bankers' Association (ABA) Routing Transit Number (RTN).
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # The Account Number that was passed to the wire's recipient.
      sig { returns(T.nilable(String)) }
      def source_account_number_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def source_account_number_id=(_)
      end

      # The lifecycle status of the transfer.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # After the transfer is submitted to Fedwire, this will contain supplemental
      #   details.
      sig { returns(T.nilable(Increase::Models::WireTransfer::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(Increase::Models::WireTransfer::Submission))
          .returns(T.nilable(Increase::Models::WireTransfer::Submission))
      end
      def submission=(_)
      end

      # The ID for the transaction funding the transfer.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `wire_transfer`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Wire transfers move funds between your Increase account and any other account
      #   accessible by Fedwire.
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
        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey)) }
        def api_key
        end

        sig do
          params(_: T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey))
            .returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey))
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
        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(_: T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication))
            .returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication))
        end
        def oauth_application=(_)
        end

        # If present, details about the User that created the transfer.
        sig { returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(Increase::Models::WireTransfer::CreatedBy::User))
            .returns(T.nilable(Increase::Models::WireTransfer::CreatedBy::User))
        end
        def user=(_)
        end

        # What object created the transfer, either via the API or the dashboard.
        sig do
          params(
            api_key: T.nilable(Increase::Models::WireTransfer::CreatedBy::APIKey),
            category: Symbol,
            oauth_application: T.nilable(Increase::Models::WireTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::WireTransfer::CreatedBy::User)
          )
            .returns(T.attached_class)
        end
        def self.new(api_key:, category:, oauth_application:, user:)
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

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   currency. For wire transfers this is always equal to `usd`.
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

        WIRE = :wire
      end

      class Reversal < Increase::BaseModel
        # The amount that was reversed in USD cents.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the reversal was created.
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # The description on the reversal message from Fedwire, set by the reversing bank.
        sig { returns(String) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        # Additional financial institution information included in the wire reversal.
        sig { returns(T.nilable(String)) }
        def financial_institution_to_financial_institution_information
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def financial_institution_to_financial_institution_information=(_)
        end

        # The Fedwire cycle date for the wire reversal. The "Fedwire day" begins at 9:00
        #   PM Eastern Time on the evening before the `cycle date`.
        sig { returns(Date) }
        def input_cycle_date
        end

        sig { params(_: Date).returns(Date) }
        def input_cycle_date=(_)
        end

        # The Fedwire transaction identifier.
        sig { returns(String) }
        def input_message_accountability_data
        end

        sig { params(_: String).returns(String) }
        def input_message_accountability_data=(_)
        end

        # The Fedwire sequence number.
        sig { returns(String) }
        def input_sequence_number
        end

        sig { params(_: String).returns(String) }
        def input_sequence_number=(_)
        end

        # The Fedwire input source identifier.
        sig { returns(String) }
        def input_source
        end

        sig { params(_: String).returns(String) }
        def input_source=(_)
        end

        # The American Banking Association (ABA) routing number of the bank originating
        #   the transfer.
        sig { returns(T.nilable(String)) }
        def originator_routing_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def originator_routing_number=(_)
        end

        # The Fedwire cycle date for the wire transfer that is being reversed by this
        #   message.
        sig { returns(Date) }
        def previous_message_input_cycle_date
        end

        sig { params(_: Date).returns(Date) }
        def previous_message_input_cycle_date=(_)
        end

        # The Fedwire transaction identifier for the wire transfer that was reversed.
        sig { returns(String) }
        def previous_message_input_message_accountability_data
        end

        sig { params(_: String).returns(String) }
        def previous_message_input_message_accountability_data=(_)
        end

        # The Fedwire sequence number for the wire transfer that was reversed.
        sig { returns(String) }
        def previous_message_input_sequence_number
        end

        sig { params(_: String).returns(String) }
        def previous_message_input_sequence_number=(_)
        end

        # The Fedwire input source identifier for the wire transfer that was reversed.
        sig { returns(String) }
        def previous_message_input_source
        end

        sig { params(_: String).returns(String) }
        def previous_message_input_source=(_)
        end

        # Information included in the wire reversal for the receiving financial
        #   institution.
        sig { returns(T.nilable(String)) }
        def receiver_financial_institution_information
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def receiver_financial_institution_information=(_)
        end

        # The sending bank's reference number for the wire reversal.
        sig { returns(T.nilable(String)) }
        def sender_reference
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def sender_reference=(_)
        end

        # The ID for the Transaction associated with the transfer reversal.
        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        # The ID for the Wire Transfer that is being reversed.
        sig { returns(String) }
        def wire_transfer_id
        end

        sig { params(_: String).returns(String) }
        def wire_transfer_id=(_)
        end

        # If your transfer is reversed, this will contain details of the reversal.
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

      # The lifecycle status of the transfer.
      class Status < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end

      class Submission < Increase::BaseModel
        # The accountability data for the submission.
        sig { returns(String) }
        def input_message_accountability_data
        end

        sig { params(_: String).returns(String) }
        def input_message_accountability_data=(_)
        end

        # When this wire transfer was submitted to Fedwire.
        sig { returns(Time) }
        def submitted_at
        end

        sig { params(_: Time).returns(Time) }
        def submitted_at=(_)
        end

        # After the transfer is submitted to Fedwire, this will contain supplemental
        #   details.
        sig do
          params(input_message_accountability_data: String, submitted_at: Time).returns(T.attached_class)
        end
        def self.new(input_message_accountability_data:, submitted_at:)
        end

        sig { override.returns({input_message_accountability_data: String, submitted_at: Time}) }
        def to_hash
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `wire_transfer`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        WIRE_TRANSFER = :wire_transfer
      end
    end
  end
end
