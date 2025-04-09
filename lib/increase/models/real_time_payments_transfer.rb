# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::RealTimePaymentsTransfers#create
    class RealTimePaymentsTransfer < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/real_time_payments_transfer/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/real_time_payments_transfer/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute acknowledgement
      #   #/components/schemas/real_time_payments_transfer/properties/acknowledgement
      #
      #   @return [Increase::Models::RealTimePaymentsTransfer::Acknowledgement, nil]
      required :acknowledgement, -> { Increase::Models::RealTimePaymentsTransfer::Acknowledgement }, nil?: true

      # @!attribute amount
      #   #/components/schemas/real_time_payments_transfer/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute approval
      #   #/components/schemas/real_time_payments_transfer/properties/approval
      #
      #   @return [Increase::Models::RealTimePaymentsTransfer::Approval, nil]
      required :approval, -> { Increase::Models::RealTimePaymentsTransfer::Approval }, nil?: true

      # @!attribute cancellation
      #   #/components/schemas/real_time_payments_transfer/properties/cancellation
      #
      #   @return [Increase::Models::RealTimePaymentsTransfer::Cancellation, nil]
      required :cancellation, -> { Increase::Models::RealTimePaymentsTransfer::Cancellation }, nil?: true

      # @!attribute created_at
      #   #/components/schemas/real_time_payments_transfer/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #   #/components/schemas/real_time_payments_transfer/properties/created_by
      #
      #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy, nil]
      required :created_by, -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy }, nil?: true

      # @!attribute creditor_name
      #   #/components/schemas/real_time_payments_transfer/properties/creditor_name
      #
      #   @return [String]
      required :creditor_name, String

      # @!attribute currency
      #   #/components/schemas/real_time_payments_transfer/properties/currency
      #
      #   @return [Symbol, Increase::Models::RealTimePaymentsTransfer::Currency]
      required :currency, enum: -> { Increase::Models::RealTimePaymentsTransfer::Currency }

      # @!attribute debtor_name
      #   #/components/schemas/real_time_payments_transfer/properties/debtor_name
      #
      #   @return [String, nil]
      required :debtor_name, String, nil?: true

      # @!attribute destination_account_number
      #   #/components/schemas/real_time_payments_transfer/properties/destination_account_number
      #
      #   @return [String]
      required :destination_account_number, String

      # @!attribute destination_routing_number
      #   #/components/schemas/real_time_payments_transfer/properties/destination_routing_number
      #
      #   @return [String]
      required :destination_routing_number, String

      # @!attribute external_account_id
      #   #/components/schemas/real_time_payments_transfer/properties/external_account_id
      #
      #   @return [String, nil]
      required :external_account_id, String, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/real_time_payments_transfer/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute pending_transaction_id
      #   #/components/schemas/real_time_payments_transfer/properties/pending_transaction_id
      #
      #   @return [String, nil]
      required :pending_transaction_id, String, nil?: true

      # @!attribute rejection
      #   #/components/schemas/real_time_payments_transfer/properties/rejection
      #
      #   @return [Increase::Models::RealTimePaymentsTransfer::Rejection, nil]
      required :rejection, -> { Increase::Models::RealTimePaymentsTransfer::Rejection }, nil?: true

      # @!attribute remittance_information
      #   #/components/schemas/real_time_payments_transfer/properties/remittance_information
      #
      #   @return [String]
      required :remittance_information, String

      # @!attribute source_account_number_id
      #   #/components/schemas/real_time_payments_transfer/properties/source_account_number_id
      #
      #   @return [String]
      required :source_account_number_id, String

      # @!attribute status
      #   #/components/schemas/real_time_payments_transfer/properties/status
      #
      #   @return [Symbol, Increase::Models::RealTimePaymentsTransfer::Status]
      required :status, enum: -> { Increase::Models::RealTimePaymentsTransfer::Status }

      # @!attribute submission
      #   #/components/schemas/real_time_payments_transfer/properties/submission
      #
      #   @return [Increase::Models::RealTimePaymentsTransfer::Submission, nil]
      required :submission, -> { Increase::Models::RealTimePaymentsTransfer::Submission }, nil?: true

      # @!attribute transaction_id
      #   #/components/schemas/real_time_payments_transfer/properties/transaction_id
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute type
      #   #/components/schemas/real_time_payments_transfer/properties/type
      #
      #   @return [Symbol, Increase::Models::RealTimePaymentsTransfer::Type]
      required :type, enum: -> { Increase::Models::RealTimePaymentsTransfer::Type }

      # @!attribute ultimate_creditor_name
      #   #/components/schemas/real_time_payments_transfer/properties/ultimate_creditor_name
      #
      #   @return [String, nil]
      required :ultimate_creditor_name, String, nil?: true

      # @!attribute ultimate_debtor_name
      #   #/components/schemas/real_time_payments_transfer/properties/ultimate_debtor_name
      #
      #   @return [String, nil]
      required :ultimate_debtor_name, String, nil?: true

      # @!parse
      #   # #/components/schemas/real_time_payments_transfer
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param acknowledgement [Increase::Models::RealTimePaymentsTransfer::Acknowledgement, nil]
      #   # @param amount [Integer]
      #   # @param approval [Increase::Models::RealTimePaymentsTransfer::Approval, nil]
      #   # @param cancellation [Increase::Models::RealTimePaymentsTransfer::Cancellation, nil]
      #   # @param created_at [Time]
      #   # @param created_by [Increase::Models::RealTimePaymentsTransfer::CreatedBy, nil]
      #   # @param creditor_name [String]
      #   # @param currency [Symbol, Increase::Models::RealTimePaymentsTransfer::Currency]
      #   # @param debtor_name [String, nil]
      #   # @param destination_account_number [String]
      #   # @param destination_routing_number [String]
      #   # @param external_account_id [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param pending_transaction_id [String, nil]
      #   # @param rejection [Increase::Models::RealTimePaymentsTransfer::Rejection, nil]
      #   # @param remittance_information [String]
      #   # @param source_account_number_id [String]
      #   # @param status [Symbol, Increase::Models::RealTimePaymentsTransfer::Status]
      #   # @param submission [Increase::Models::RealTimePaymentsTransfer::Submission, nil]
      #   # @param transaction_id [String, nil]
      #   # @param type [Symbol, Increase::Models::RealTimePaymentsTransfer::Type]
      #   # @param ultimate_creditor_name [String, nil]
      #   # @param ultimate_debtor_name [String, nil]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     acknowledgement:,
      #     amount:,
      #     approval:,
      #     cancellation:,
      #     created_at:,
      #     created_by:,
      #     creditor_name:,
      #     currency:,
      #     debtor_name:,
      #     destination_account_number:,
      #     destination_routing_number:,
      #     external_account_id:,
      #     idempotency_key:,
      #     pending_transaction_id:,
      #     rejection:,
      #     remittance_information:,
      #     source_account_number_id:,
      #     status:,
      #     submission:,
      #     transaction_id:,
      #     type:,
      #     ultimate_creditor_name:,
      #     ultimate_debtor_name:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::RealTimePaymentsTransfer#acknowledgement
      class Acknowledgement < Increase::Internal::Type::BaseModel
        # @!attribute acknowledged_at
        #   #/components/schemas/real_time_payments_transfer/properties/acknowledgement/anyOf/0/properties/acknowledged_at
        #
        #   @return [Time]
        required :acknowledged_at, Time

        # @!parse
        #   # #/components/schemas/real_time_payments_transfer/properties/acknowledgement
        #   #
        #   # @param acknowledged_at [Time]
        #   #
        #   def initialize(acknowledged_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::RealTimePaymentsTransfer#approval
      class Approval < Increase::Internal::Type::BaseModel
        # @!attribute approved_at
        #   #/components/schemas/real_time_payments_transfer/properties/approval/anyOf/0/properties/approved_at
        #
        #   @return [Time]
        required :approved_at, Time

        # @!attribute approved_by
        #   #/components/schemas/real_time_payments_transfer/properties/approval/anyOf/0/properties/approved_by
        #
        #   @return [String, nil]
        required :approved_by, String, nil?: true

        # @!parse
        #   # #/components/schemas/real_time_payments_transfer/properties/approval
        #   #
        #   # @param approved_at [Time]
        #   # @param approved_by [String, nil]
        #   #
        #   def initialize(approved_at:, approved_by:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::RealTimePaymentsTransfer#cancellation
      class Cancellation < Increase::Internal::Type::BaseModel
        # @!attribute canceled_at
        #   #/components/schemas/real_time_payments_transfer/properties/cancellation/anyOf/0/properties/canceled_at
        #
        #   @return [Time]
        required :canceled_at, Time

        # @!attribute canceled_by
        #   #/components/schemas/real_time_payments_transfer/properties/cancellation/anyOf/0/properties/canceled_by
        #
        #   @return [String, nil]
        required :canceled_by, String, nil?: true

        # @!parse
        #   # #/components/schemas/real_time_payments_transfer/properties/cancellation
        #   #
        #   # @param canceled_at [Time]
        #   # @param canceled_by [String, nil]
        #   #
        #   def initialize(canceled_at:, canceled_by:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::RealTimePaymentsTransfer#created_by
      class CreatedBy < Increase::Internal::Type::BaseModel
        # @!attribute api_key
        #   #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/api_key
        #
        #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey, nil]
        required :api_key, -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey }, nil?: true

        # @!attribute category
        #   #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/category
        #
        #   @return [Symbol, Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category }

        # @!attribute oauth_application
        #   #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/oauth_application
        #
        #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication, nil]
        required :oauth_application,
                 -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication },
                 nil?: true

        # @!attribute user
        #   #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/user
        #
        #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy::User, nil]
        required :user, -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::User }, nil?: true

        # @!parse
        #   # #/components/schemas/real_time_payments_transfer/properties/created_by
        #   #
        #   # @param api_key [Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey, nil]
        #   # @param category [Symbol, Increase::Models::RealTimePaymentsTransfer::CreatedBy::Category]
        #   # @param oauth_application [Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication, nil]
        #   # @param user [Increase::Models::RealTimePaymentsTransfer::CreatedBy::User, nil]
        #   #
        #   def initialize(api_key:, category:, oauth_application:, user:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::RealTimePaymentsTransfer::CreatedBy#api_key
        class APIKey < Increase::Internal::Type::BaseModel
          # @!attribute description
          #   #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/api_key/anyOf/0/properties/description
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!parse
          #   # #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/api_key
          #   #
          #   # @param description [String, nil]
          #   #
          #   def initialize(description:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/category
        #
        # @see Increase::Models::RealTimePaymentsTransfer::CreatedBy#category
        module Category
          extend Increase::Internal::Type::Enum

          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::RealTimePaymentsTransfer::CreatedBy#oauth_application
        class OAuthApplication < Increase::Internal::Type::BaseModel
          # @!attribute name
          #   #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/oauth_application/anyOf/0/properties/name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/oauth_application
          #   #
          #   # @param name [String]
          #   #
          #   def initialize(name:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::RealTimePaymentsTransfer::CreatedBy#user
        class User < Increase::Internal::Type::BaseModel
          # @!attribute email
          #   #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/user/anyOf/0/properties/email
          #
          #   @return [String]
          required :email, String

          # @!parse
          #   # #/components/schemas/real_time_payments_transfer/properties/created_by/anyOf/0/properties/user
          #   #
          #   # @param email [String]
          #   #
          #   def initialize(email:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      # #/components/schemas/real_time_payments_transfer/properties/currency
      #
      # @see Increase::Models::RealTimePaymentsTransfer#currency
      module Currency
        extend Increase::Internal::Type::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::RealTimePaymentsTransfer#rejection
      class Rejection < Increase::Internal::Type::BaseModel
        # @!attribute reject_reason_additional_information
        #   #/components/schemas/real_time_payments_transfer/properties/rejection/anyOf/0/properties/reject_reason_additional_information
        #
        #   @return [String, nil]
        required :reject_reason_additional_information, String, nil?: true

        # @!attribute reject_reason_code
        #   #/components/schemas/real_time_payments_transfer/properties/rejection/anyOf/0/properties/reject_reason_code
        #
        #   @return [Symbol, Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode]
        required :reject_reason_code,
                 enum: -> { Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode }

        # @!attribute rejected_at
        #   #/components/schemas/real_time_payments_transfer/properties/rejection/anyOf/0/properties/rejected_at
        #
        #   @return [Time, nil]
        required :rejected_at, Time, nil?: true

        # @!parse
        #   # #/components/schemas/real_time_payments_transfer/properties/rejection
        #   #
        #   # @param reject_reason_additional_information [String, nil]
        #   # @param reject_reason_code [Symbol, Increase::Models::RealTimePaymentsTransfer::Rejection::RejectReasonCode]
        #   # @param rejected_at [Time, nil]
        #   #
        #   def initialize(reject_reason_additional_information:, reject_reason_code:, rejected_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/real_time_payments_transfer/properties/rejection/anyOf/0/properties/reject_reason_code
        #
        # @see Increase::Models::RealTimePaymentsTransfer::Rejection#reject_reason_code
        module RejectReasonCode
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/real_time_payments_transfer/properties/status
      #
      # @see Increase::Models::RealTimePaymentsTransfer#status
      module Status
        extend Increase::Internal::Type::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::RealTimePaymentsTransfer#submission
      class Submission < Increase::Internal::Type::BaseModel
        # @!attribute submitted_at
        #   #/components/schemas/real_time_payments_transfer/properties/submission/anyOf/0/properties/submitted_at
        #
        #   @return [Time, nil]
        required :submitted_at, Time, nil?: true

        # @!attribute transaction_identification
        #   #/components/schemas/real_time_payments_transfer/properties/submission/anyOf/0/properties/transaction_identification
        #
        #   @return [String]
        required :transaction_identification, String

        # @!parse
        #   # #/components/schemas/real_time_payments_transfer/properties/submission
        #   #
        #   # @param submitted_at [Time, nil]
        #   # @param transaction_identification [String]
        #   #
        #   def initialize(submitted_at:, transaction_identification:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/real_time_payments_transfer/properties/type
      #
      # @see Increase::Models::RealTimePaymentsTransfer#type
      module Type
        extend Increase::Internal::Type::Enum

        REAL_TIME_PAYMENTS_TRANSFER = :real_time_payments_transfer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
