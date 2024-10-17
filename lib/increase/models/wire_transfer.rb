# frozen_string_literal: true

module Increase
  module Models
    class WireTransfer < BaseModel
      # @!attribute [rw] id
      #   The wire transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account to which the transfer belongs.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number
      #   The destination account number.
      #   @return [String]
      required :account_number, String

      # @!attribute [rw] amount
      #   The transfer amount in USD cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] approval
      #   If your account requires approvals for transfers and the transfer was approved, this will contain details of the approval.
      #   @return [Increase::Models::WireTransfer::Approval]
      required :approval, -> { Increase::Models::WireTransfer::Approval }

      # @!attribute [rw] beneficiary_address_line1
      #   The beneficiary's address line 1.
      #   @return [String]
      required :beneficiary_address_line1, String

      # @!attribute [rw] beneficiary_address_line2
      #   The beneficiary's address line 2.
      #   @return [String]
      required :beneficiary_address_line2, String

      # @!attribute [rw] beneficiary_address_line3
      #   The beneficiary's address line 3.
      #   @return [String]
      required :beneficiary_address_line3, String

      # @!attribute [rw] beneficiary_name
      #   The beneficiary's name.
      #   @return [String]
      required :beneficiary_name, String

      # @!attribute [rw] cancellation
      #   If your account requires approvals for transfers and the transfer was not approved, this will contain details of the cancellation.
      #   @return [Increase::Models::WireTransfer::Cancellation]
      required :cancellation, -> { Increase::Models::WireTransfer::Cancellation }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] created_by
      #   What object created the transfer, either via the API or the dashboard.
      #   @return [Increase::Models::WireTransfer::CreatedBy]
      required :created_by, -> { Increase::Models::WireTransfer::CreatedBy }

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For wire transfers this is always equal to `usd`.
      #   @return [Symbol, Increase::Models::WireTransfer::Currency]
      required :currency, enum: -> { Increase::Models::WireTransfer::Currency }

      # @!attribute [rw] external_account_id
      #   The identifier of the External Account the transfer was made to, if any.
      #   @return [String]
      required :external_account_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] message_to_recipient
      #   The message that will show on the recipient's bank statement.
      #   @return [String]
      required :message_to_recipient, String

      # @!attribute [rw] network
      #   The transfer's network.
      #   @return [Symbol, Increase::Models::WireTransfer::Network]
      required :network, enum: -> { Increase::Models::WireTransfer::Network }

      # @!attribute [rw] originator_address_line1
      #   The originator's address line 1.
      #   @return [String]
      required :originator_address_line1, String

      # @!attribute [rw] originator_address_line2
      #   The originator's address line 2.
      #   @return [String]
      required :originator_address_line2, String

      # @!attribute [rw] originator_address_line3
      #   The originator's address line 3.
      #   @return [String]
      required :originator_address_line3, String

      # @!attribute [rw] originator_name
      #   The originator's name.
      #   @return [String]
      required :originator_name, String

      # @!attribute [rw] pending_transaction_id
      #   The ID for the pending transaction representing the transfer. A pending transaction is created when the transfer [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals) by someone else in your organization.
      #   @return [String]
      required :pending_transaction_id, String

      # @!attribute [rw] reversal
      #   If your transfer is reversed, this will contain details of the reversal.
      #   @return [Increase::Models::WireTransfer::Reversal]
      required :reversal, -> { Increase::Models::WireTransfer::Reversal }

      # @!attribute [rw] routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] status
      #   The lifecycle status of the transfer.
      #   @return [Symbol, Increase::Models::WireTransfer::Status]
      required :status, enum: -> { Increase::Models::WireTransfer::Status }

      # @!attribute [rw] submission
      #   After the transfer is submitted to Fedwire, this will contain supplemental details.
      #   @return [Increase::Models::WireTransfer::Submission]
      required :submission, -> { Increase::Models::WireTransfer::Submission }

      # @!attribute [rw] transaction_id
      #   The ID for the transaction funding the transfer.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `wire_transfer`.
      #   @return [Symbol, Increase::Models::WireTransfer::Type]
      required :type, enum: -> { Increase::Models::WireTransfer::Type }

      class Approval < BaseModel
        # @!attribute [rw] approved_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was approved.
        #   @return [Time]
        required :approved_at, Time

        # @!attribute [rw] approved_by
        #   If the Transfer was approved by a user in the dashboard, the email address of that user.
        #   @return [String]
        required :approved_by, String

        # @!parse
        #   # Create a new instance of Approval from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :approved_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the transfer was approved.
        #   #   @option data [String] :approved_by If the Transfer was approved by a user in the dashboard, the email address of
        #   #     that user.
        #   def initialize(data = {}) = super
      end

      class Cancellation < BaseModel
        # @!attribute [rw] canceled_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Transfer was canceled.
        #   @return [Time]
        required :canceled_at, Time

        # @!attribute [rw] canceled_by
        #   If the Transfer was canceled by a user in the dashboard, the email address of that user.
        #   @return [String]
        required :canceled_by, String

        # @!parse
        #   # Create a new instance of Cancellation from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :canceled_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the Transfer was canceled.
        #   #   @option data [String] :canceled_by If the Transfer was canceled by a user in the dashboard, the email address of
        #   #     that user.
        #   def initialize(data = {}) = super
      end

      class CreatedBy < BaseModel
        # @!attribute [rw] api_key
        #   If present, details about the API key that created the transfer.
        #   @return [Increase::Models::WireTransfer::CreatedBy::APIKey]
        required :api_key, -> { Increase::Models::WireTransfer::CreatedBy::APIKey }

        # @!attribute [rw] category
        #   The type of object that created this transfer.
        #   @return [Symbol, Increase::Models::WireTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::WireTransfer::CreatedBy::Category }

        # @!attribute [rw] oauth_application
        #   If present, details about the OAuth Application that created the transfer.
        #   @return [Increase::Models::WireTransfer::CreatedBy::OAuthApplication]
        required :oauth_application, -> { Increase::Models::WireTransfer::CreatedBy::OAuthApplication }

        # @!attribute [rw] user
        #   If present, details about the User that created the transfer.
        #   @return [Increase::Models::WireTransfer::CreatedBy::User]
        required :user, -> { Increase::Models::WireTransfer::CreatedBy::User }

        class APIKey < BaseModel
          # @!attribute [rw] description
          #   The description set for the API key when it was created.
          #   @return [String]
          required :description, String

          # @!parse
          #   # Create a new instance of APIKey from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :description The description set for the API key when it was created.
          #   def initialize(data = {}) = super
        end

        # The type of object that created this transfer.
        class Category < Increase::Enum
          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user
        end

        class OAuthApplication < BaseModel
          # @!attribute [rw] name_
          #   The name of the OAuth Application.
          #   @return [String]
          required :name_, String, api_name: :name

          # @!parse
          #   # Create a new instance of OAuthApplication from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :name The name of the OAuth Application.
          #   def initialize(data = {}) = super
        end

        class User < BaseModel
          # @!attribute [rw] email
          #   The email address of the User.
          #   @return [String]
          required :email, String

          # @!parse
          #   # Create a new instance of User from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :email The email address of the User.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of CreatedBy from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :api_key If present, details about the API key that created the transfer.
        #   #   @option data [String] :category The type of object that created this transfer.
        #   #   @option data [Object] :oauth_application If present, details about the OAuth Application that created the transfer.
        #   #   @option data [Object] :user If present, details about the User that created the transfer.
        #   def initialize(data = {}) = super
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For wire transfers this is always equal to `usd`.
      class Currency < Increase::Enum
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
        WIRE = :wire
      end

      class Reversal < BaseModel
        # @!attribute [rw] amount
        #   The amount that was reversed in USD cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the reversal was created.
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] description
        #   The description on the reversal message from Fedwire, set by the reversing bank.
        #   @return [String]
        required :description, String

        # @!attribute [rw] financial_institution_to_financial_institution_information
        #   Additional financial institution information included in the wire reversal.
        #   @return [String]
        required :financial_institution_to_financial_institution_information, String

        # @!attribute [rw] input_cycle_date
        #   The Fedwire cycle date for the wire reversal. The "Fedwire day" begins at 9:00 PM Eastern Time on the evening before the `cycle date`.
        #   @return [Date]
        required :input_cycle_date, Date

        # @!attribute [rw] input_message_accountability_data
        #   The Fedwire transaction identifier.
        #   @return [String]
        required :input_message_accountability_data, String

        # @!attribute [rw] input_sequence_number
        #   The Fedwire sequence number.
        #   @return [String]
        required :input_sequence_number, String

        # @!attribute [rw] input_source
        #   The Fedwire input source identifier.
        #   @return [String]
        required :input_source, String

        # @!attribute [rw] originator_routing_number
        #   The American Banking Association (ABA) routing number of the bank originating the transfer.
        #   @return [String]
        required :originator_routing_number, String

        # @!attribute [rw] previous_message_input_cycle_date
        #   The Fedwire cycle date for the wire transfer that is being reversed by this message.
        #   @return [Date]
        required :previous_message_input_cycle_date, Date

        # @!attribute [rw] previous_message_input_message_accountability_data
        #   The Fedwire transaction identifier for the wire transfer that was reversed.
        #   @return [String]
        required :previous_message_input_message_accountability_data, String

        # @!attribute [rw] previous_message_input_sequence_number
        #   The Fedwire sequence number for the wire transfer that was reversed.
        #   @return [String]
        required :previous_message_input_sequence_number, String

        # @!attribute [rw] previous_message_input_source
        #   The Fedwire input source identifier for the wire transfer that was reversed.
        #   @return [String]
        required :previous_message_input_source, String

        # @!attribute [rw] receiver_financial_institution_information
        #   Information included in the wire reversal for the receiving financial institution.
        #   @return [String]
        required :receiver_financial_institution_information, String

        # @!attribute [rw] sender_reference
        #   The sending bank's reference number for the wire reversal.
        #   @return [String]
        required :sender_reference, String

        # @!attribute [rw] transaction_id
        #   The ID for the Transaction associated with the transfer reversal.
        #   @return [String]
        required :transaction_id, String

        # @!attribute [rw] wire_transfer_id
        #   The ID for the Wire Transfer that is being reversed.
        #   @return [String]
        required :wire_transfer_id, String

        # @!parse
        #   # Create a new instance of Reversal from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer] :amount The amount that was reversed in USD cents.
        #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the reversal was created.
        #   #   @option data [String] :description The description on the reversal message from Fedwire, set by the reversing bank.
        #   #   @option data [String] :financial_institution_to_financial_institution_information Additional financial institution information included in the wire reversal.
        #   #   @option data [String] :input_cycle_date The Fedwire cycle date for the wire reversal. The "Fedwire day" begins at 9:00
        #   #     PM Eastern Time on the evening before the `cycle date`.
        #   #   @option data [String] :input_message_accountability_data The Fedwire transaction identifier.
        #   #   @option data [String] :input_sequence_number The Fedwire sequence number.
        #   #   @option data [String] :input_source The Fedwire input source identifier.
        #   #   @option data [String] :originator_routing_number The American Banking Association (ABA) routing number of the bank originating
        #   #     the transfer.
        #   #   @option data [String] :previous_message_input_cycle_date The Fedwire cycle date for the wire transfer that is being reversed by this
        #   #     message.
        #   #   @option data [String] :previous_message_input_message_accountability_data The Fedwire transaction identifier for the wire transfer that was reversed.
        #   #   @option data [String] :previous_message_input_sequence_number The Fedwire sequence number for the wire transfer that was reversed.
        #   #   @option data [String] :previous_message_input_source The Fedwire input source identifier for the wire transfer that was reversed.
        #   #   @option data [String] :receiver_financial_institution_information Information included in the wire reversal for the receiving financial
        #   #     institution.
        #   #   @option data [String] :sender_reference The sending bank's reference number for the wire reversal.
        #   #   @option data [String] :transaction_id The ID for the Transaction associated with the transfer reversal.
        #   #   @option data [String] :wire_transfer_id The ID for the Wire Transfer that is being reversed.
        #   def initialize(data = {}) = super
      end

      # The lifecycle status of the transfer.
      class Status < Increase::Enum
        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = :pending_reviewing

        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been rejected by Increase.
        REJECTED = :rejected

        # The transfer has been reversed.
        REVERSED = :reversed

        # The transfer has been submitted to Fedwire.
        SUBMITTED = :submitted

        # The transfer has been acknowledged by Fedwire and can be considered complete.
        COMPLETE = :complete

        # The transfer is pending creation.
        PENDING_CREATING = :pending_creating
      end

      class Submission < BaseModel
        # @!attribute [rw] input_message_accountability_data
        #   The accountability data for the submission.
        #   @return [String]
        required :input_message_accountability_data, String

        # @!attribute [rw] submitted_at
        #   When this wire transfer was submitted to Fedwire.
        #   @return [Time]
        required :submitted_at, Time

        # @!parse
        #   # Create a new instance of Submission from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :input_message_accountability_data The accountability data for the submission.
        #   #   @option data [String] :submitted_at When this wire transfer was submitted to Fedwire.
        #   def initialize(data = {}) = super
      end

      # A constant representing the object's type. For this resource it will always be `wire_transfer`.
      class Type < Increase::Enum
        WIRE_TRANSFER = :wire_transfer
      end

      # @!parse
      #   # Create a new instance of WireTransfer from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The wire transfer's identifier.
      #   #   @option data [String] :account_id The Account to which the transfer belongs.
      #   #   @option data [String] :account_number The destination account number.
      #   #   @option data [Integer] :amount The transfer amount in USD cents.
      #   #   @option data [Object] :approval If your account requires approvals for transfers and the transfer was approved,
      #   #     this will contain details of the approval.
      #   #   @option data [String] :beneficiary_address_line1 The beneficiary's address line 1.
      #   #   @option data [String] :beneficiary_address_line2 The beneficiary's address line 2.
      #   #   @option data [String] :beneficiary_address_line3 The beneficiary's address line 3.
      #   #   @option data [String] :beneficiary_name The beneficiary's name.
      #   #   @option data [Object] :cancellation If your account requires approvals for transfers and the transfer was not
      #   #     approved, this will contain details of the cancellation.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #     the transfer was created.
      #   #   @option data [Object] :created_by What object created the transfer, either via the API or the dashboard.
      #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   #     currency. For wire transfers this is always equal to `usd`.
      #   #   @option data [String] :external_account_id The identifier of the External Account the transfer was made to, if any.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [String] :message_to_recipient The message that will show on the recipient's bank statement.
      #   #   @option data [String] :network The transfer's network.
      #   #   @option data [String] :originator_address_line1 The originator's address line 1.
      #   #   @option data [String] :originator_address_line2 The originator's address line 2.
      #   #   @option data [String] :originator_address_line3 The originator's address line 3.
      #   #   @option data [String] :originator_name The originator's name.
      #   #   @option data [String] :pending_transaction_id The ID for the pending transaction representing the transfer. A pending
      #   #     transaction is created when the transfer
      #   #     [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      #   #     by someone else in your organization.
      #   #   @option data [Object] :reversal If your transfer is reversed, this will contain details of the reversal.
      #   #   @option data [String] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   #   @option data [String] :status The lifecycle status of the transfer.
      #   #   @option data [Object] :submission After the transfer is submitted to Fedwire, this will contain supplemental
      #   #     details.
      #   #   @option data [String] :transaction_id The ID for the transaction funding the transfer.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `wire_transfer`.
      #   def initialize(data = {}) = super
    end
  end
end
