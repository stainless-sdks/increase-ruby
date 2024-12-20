# frozen_string_literal: true

module Increase
  module Models
    class RealTimePaymentsTransfer < Increase::BaseModel
      # @!attribute [rw] id
      #   The Real-Time Payments Transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account from which the transfer was sent.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] acknowledgement
      #   If the transfer is acknowledged by the recipient bank, this will contain supplemental details.
      #   @return [Increase::Models::RealTimePaymentsTransfer::Acknowledgement]
      required :acknowledgement, -> { Increase::Models::RealTimePaymentsTransfer::Acknowledgement }

      # @!attribute [rw] amount
      #   The transfer amount in USD cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] approval
      #   If your account requires approvals for transfers and the transfer was approved, this will contain details of the approval.
      #   @return [Increase::Models::RealTimePaymentsTransfer::Approval]
      required :approval, -> { Increase::Models::RealTimePaymentsTransfer::Approval }

      # @!attribute [rw] cancellation
      #   If your account requires approvals for transfers and the transfer was not approved, this will contain details of the cancellation.
      #   @return [Increase::Models::RealTimePaymentsTransfer::Cancellation]
      required :cancellation, -> { Increase::Models::RealTimePaymentsTransfer::Cancellation }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] created_by
      #   What object created the transfer, either via the API or the dashboard.
      #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy]
      required :created_by, -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy }

      # @!attribute [rw] creditor_name
      #   The name of the transfer's recipient. This is set by the sender when creating the transfer.
      #   @return [String]
      required :creditor_name, String

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For real-time payments transfers this is always equal to `USD`.
      #   @return [Symbol, Increase::Models::RealTimePaymentsTransfer::Currency]
      required :currency, enum: -> { Increase::Models::RealTimePaymentsTransfer::Currency }

      # @!attribute [rw] debtor_name
      #   The name of the transfer's sender. If not provided, defaults to the name of the account's entity.
      #   @return [String]
      required :debtor_name, String

      # @!attribute [rw] destination_account_number
      #   The destination account number.
      #   @return [String]
      required :destination_account_number, String

      # @!attribute [rw] destination_routing_number
      #   The destination American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   @return [String]
      required :destination_routing_number, String

      # @!attribute [rw] external_account_id
      #   The identifier of the External Account the transfer was made to, if any.
      #   @return [String]
      required :external_account_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] pending_transaction_id
      #   The ID for the pending transaction representing the transfer. A pending transaction is created when the transfer [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals) by someone else in your organization.
      #   @return [String]
      required :pending_transaction_id, String

      # @!attribute [rw] rejection
      #   If the transfer is rejected by Real-Time Payments or the destination financial institution, this will contain supplemental details.
      #   @return [Increase::Models::RealTimePaymentsTransfer::Rejection]
      required :rejection, -> { Increase::Models::RealTimePaymentsTransfer::Rejection }

      # @!attribute [rw] remittance_information
      #   Unstructured information that will show on the recipient's bank statement.
      #   @return [String]
      required :remittance_information, String

      # @!attribute [rw] source_account_number_id
      #   The Account Number the recipient will see as having sent the transfer.
      #   @return [String]
      required :source_account_number_id, String

      # @!attribute [rw] status
      #   The lifecycle status of the transfer.
      #   @return [Symbol, Increase::Models::RealTimePaymentsTransfer::Status]
      required :status, enum: -> { Increase::Models::RealTimePaymentsTransfer::Status }

      # @!attribute [rw] submission
      #   After the transfer is submitted to Real-Time Payments, this will contain supplemental details.
      #   @return [Increase::Models::RealTimePaymentsTransfer::Submission]
      required :submission, -> { Increase::Models::RealTimePaymentsTransfer::Submission }

      # @!attribute [rw] transaction_id
      #   The Transaction funding the transfer once it is complete.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `real_time_payments_transfer`.
      #   @return [Symbol, Increase::Models::RealTimePaymentsTransfer::Type]
      required :type, enum: -> { Increase::Models::RealTimePaymentsTransfer::Type }

      # @!attribute [rw] ultimate_creditor_name
      #   The name of the ultimate recipient of the transfer. Set this if the creditor is an intermediary receiving the payment for someone else.
      #   @return [String]
      required :ultimate_creditor_name, String

      # @!attribute [rw] ultimate_debtor_name
      #   The name of the ultimate sender of the transfer. Set this if the funds are being sent on behalf of someone who is not the account holder at Increase.
      #   @return [String]
      required :ultimate_debtor_name, String

      class Acknowledgement < Increase::BaseModel
        # @!attribute [rw] acknowledged_at
        #   When the transfer was acknowledged.
        #   @return [Time]
        required :acknowledged_at, Time

        # @!parse
        #   # Create a new instance of Acknowledgement from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :acknowledged_at When the transfer was acknowledged.
        #   def initialize(data = {}) = super
      end

      class Approval < Increase::BaseModel
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

      class Cancellation < Increase::BaseModel
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

      class CreatedBy < Increase::BaseModel
        # @!attribute [rw] api_key
        #   If present, details about the API key that created the transfer.
        #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey]
        required :api_key, -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey }

        # @!attribute [rw] category
        #   The type of object that created this transfer.
        #   @return [Symbol, Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category }

        # @!attribute [rw] oauth_application
        #   If present, details about the OAuth Application that created the transfer.
        #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication]
        required :oauth_application,
                 -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication }

        # @!attribute [rw] user
        #   If present, details about the User that created the transfer.
        #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy::User]
        required :user, -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::User }

        class APIKey < Increase::BaseModel
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

        class OAuthApplication < Increase::BaseModel
          # @!attribute [rw] name
          #   The name of the OAuth Application.
          #   @return [String]
          required :name, String

          # @!parse
          #   # Create a new instance of OAuthApplication from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :name The name of the OAuth Application.
          #   def initialize(data = {}) = super
        end

        class User < Increase::BaseModel
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

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For real-time payments transfers this is always equal to `USD`.
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

      class Rejection < Increase::BaseModel
        # @!attribute [rw] reject_reason_additional_information
        #   Additional information about the rejection provided by the recipient bank when the `reject_reason_code` is `NARRATIVE`.
        #   @return [String]
        required :reject_reason_additional_information, String

        # @!attribute [rw] reject_reason_code
        #   The reason the transfer was rejected as provided by the recipient bank or the Real-Time Payments network.
        #   @return [Symbol, Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode]
        required :reject_reason_code,
                 enum: -> { Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode }

        # @!attribute [rw] rejected_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was rejected.
        #   @return [Time]
        required :rejected_at, Time

        # The reason the transfer was rejected as provided by the recipient bank or the Real-Time Payments network.
        class RejectReasonCode < Increase::Enum
          # The destination account is closed. Corresponds to the Real-Time Payments reason code `AC04`.
          ACCOUNT_CLOSED = :account_closed

          # The destination account is currently blocked from receiving transactions. Corresponds to the Real-Time Payments reason code `AC06`.
          ACCOUNT_BLOCKED = :account_blocked

          # The destination account is ineligible to receive Real-Time Payments transfers. Corresponds to the Real-Time Payments reason code `AC14`.
          INVALID_CREDITOR_ACCOUNT_TYPE = :invalid_creditor_account_type

          # The destination account does not exist. Corresponds to the Real-Time Payments reason code `AC03`.
          INVALID_CREDITOR_ACCOUNT_NUMBER = :invalid_creditor_account_number

          # The destination routing number is invalid. Corresponds to the Real-Time Payments reason code `RC04`.
          INVALID_CREDITOR_FINANCIAL_INSTITUTION_IDENTIFIER = :invalid_creditor_financial_institution_identifier

          # The destination account holder is deceased. Corresponds to the Real-Time Payments reason code `MD07`.
          END_CUSTOMER_DECEASED = :end_customer_deceased

          # The reason is provided as narrative information in the additional information field.
          NARRATIVE = :narrative

          # Real-Time Payments transfers are not allowed to the destination account. Corresponds to the Real-Time Payments reason code `AG01`.
          TRANSACTION_FORBIDDEN = :transaction_forbidden

          # Real-Time Payments transfers are not enabled for the destination account. Corresponds to the Real-Time Payments reason code `AG03`.
          TRANSACTION_TYPE_NOT_SUPPORTED = :transaction_type_not_supported

          # The amount of the transfer is different than expected by the recipient. Corresponds to the Real-Time Payments reason code `AM09`.
          UNEXPECTED_AMOUNT = :unexpected_amount

          # The amount is higher than the recipient is authorized to send or receive. Corresponds to the Real-Time Payments reason code `AM14`.
          AMOUNT_EXCEEDS_BANK_LIMITS = :amount_exceeds_bank_limits

          # The creditor's address is required, but missing or invalid. Corresponds to the Real-Time Payments reason code `BE04`.
          INVALID_CREDITOR_ADDRESS = :invalid_creditor_address

          # The specified creditor is unknown. Corresponds to the Real-Time Payments reason code `BE06`.
          UNKNOWN_END_CUSTOMER = :unknown_end_customer

          # The debtor's address is required, but missing or invalid. Corresponds to the Real-Time Payments reason code `BE07`.
          INVALID_DEBTOR_ADDRESS = :invalid_debtor_address

          # There was a timeout processing the transfer. Corresponds to the Real-Time Payments reason code `DS24`.
          TIMEOUT = :timeout

          # Real-Time Payments transfers are not enabled for the destination account. Corresponds to the Real-Time Payments reason code `NOAT`.
          UNSUPPORTED_MESSAGE_FOR_RECIPIENT = :unsupported_message_for_recipient

          # The destination financial institution is currently not connected to Real-Time Payments. Corresponds to the Real-Time Payments reason code `9912`.
          RECIPIENT_CONNECTION_NOT_AVAILABLE = :recipient_connection_not_available

          # Real-Time Payments is currently unavailable. Corresponds to the Real-Time Payments reason code `9948`.
          REAL_TIME_PAYMENTS_SUSPENDED = :real_time_payments_suspended

          # The destination financial institution is currently signed off of Real-Time Payments. Corresponds to the Real-Time Payments reason code `9910`.
          INSTRUCTED_AGENT_SIGNED_OFF = :instructed_agent_signed_off

          # The transfer was rejected due to an internal Increase issue. We have been notified.
          PROCESSING_ERROR = :processing_error

          # Some other error or issue has occurred.
          OTHER = :other
        end

        # @!parse
        #   # Create a new instance of Rejection from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :reject_reason_additional_information Additional information about the rejection provided by the recipient bank when
        #   #     the `reject_reason_code` is `NARRATIVE`.
        #   #   @option data [String] :reject_reason_code The reason the transfer was rejected as provided by the recipient bank or the
        #   #     Real-Time Payments network.
        #   #   @option data [String] :rejected_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the transfer was rejected.
        #   def initialize(data = {}) = super
      end

      # The lifecycle status of the transfer.
      class Status < Increase::Enum
        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = :pending_reviewing

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer was rejected by the network or the recipient's bank.
        REJECTED = :rejected

        # The transfer is queued to be submitted to Real-Time Payments.
        PENDING_SUBMISSION = :pending_submission

        # The transfer has been submitted and is pending a response from Real-Time Payments.
        SUBMITTED = :submitted

        # The transfer has been sent successfully and is complete.
        COMPLETE = :complete
      end

      class Submission < Increase::BaseModel
        # @!attribute [rw] submitted_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was submitted to The Clearing House.
        #   @return [Time]
        required :submitted_at, Time

        # @!attribute [rw] transaction_identification
        #   The Real-Time Payments network identification of the transfer.
        #   @return [String]
        required :transaction_identification, String

        # @!parse
        #   # Create a new instance of Submission from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :submitted_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the transfer was submitted to The Clearing House.
        #   #   @option data [String] :transaction_identification The Real-Time Payments network identification of the transfer.
        #   def initialize(data = {}) = super
      end

      # A constant representing the object's type. For this resource it will always be `real_time_payments_transfer`.
      class Type < Increase::Enum
        REAL_TIME_PAYMENTS_TRANSFER = :real_time_payments_transfer
      end

      # @!parse
      #   # Create a new instance of RealTimePaymentsTransfer from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The Real-Time Payments Transfer's identifier.
      #   #   @option data [String] :account_id The Account from which the transfer was sent.
      #   #   @option data [Object] :acknowledgement If the transfer is acknowledged by the recipient bank, this will contain
      #   #     supplemental details.
      #   #   @option data [Integer] :amount The transfer amount in USD cents.
      #   #   @option data [Object] :approval If your account requires approvals for transfers and the transfer was approved,
      #   #     this will contain details of the approval.
      #   #   @option data [Object] :cancellation If your account requires approvals for transfers and the transfer was not
      #   #     approved, this will contain details of the cancellation.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #     the transfer was created.
      #   #   @option data [Object] :created_by What object created the transfer, either via the API or the dashboard.
      #   #   @option data [String] :creditor_name The name of the transfer's recipient. This is set by the sender when creating
      #   #     the transfer.
      #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   #     currency. For real-time payments transfers this is always equal to `USD`.
      #   #   @option data [String] :debtor_name The name of the transfer's sender. If not provided, defaults to the name of the
      #   #     account's entity.
      #   #   @option data [String] :destination_account_number The destination account number.
      #   #   @option data [String] :destination_routing_number The destination American Bankers' Association (ABA) Routing Transit Number
      #   #     (RTN).
      #   #   @option data [String] :external_account_id The identifier of the External Account the transfer was made to, if any.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [String] :pending_transaction_id The ID for the pending transaction representing the transfer. A pending
      #   #     transaction is created when the transfer
      #   #     [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      #   #     by someone else in your organization.
      #   #   @option data [Object] :rejection If the transfer is rejected by Real-Time Payments or the destination financial
      #   #     institution, this will contain supplemental details.
      #   #   @option data [String] :remittance_information Unstructured information that will show on the recipient's bank statement.
      #   #   @option data [String] :source_account_number_id The Account Number the recipient will see as having sent the transfer.
      #   #   @option data [String] :status The lifecycle status of the transfer.
      #   #   @option data [Object] :submission After the transfer is submitted to Real-Time Payments, this will contain
      #   #     supplemental details.
      #   #   @option data [String] :transaction_id The Transaction funding the transfer once it is complete.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `real_time_payments_transfer`.
      #   #   @option data [String] :ultimate_creditor_name The name of the ultimate recipient of the transfer. Set this if the creditor is
      #   #     an intermediary receiving the payment for someone else.
      #   #   @option data [String] :ultimate_debtor_name The name of the ultimate sender of the transfer. Set this if the funds are being
      #   #     sent on behalf of someone who is not the account holder at Increase.
      #   def initialize(data = {}) = super
    end
  end
end
