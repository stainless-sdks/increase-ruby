# frozen_string_literal: true

module Increase
  module Models
    class RealTimePaymentsTransfer < BaseModel
      # @!attribute [rw] id
      #   The Real-Time Payments Transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account from which the transfer was sent.
      #   @return [String]
      required :account_id, String

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
      #   @return [String]
      required :created_at, String

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
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

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
      #   @return [Symbol]
      required :status,
               Increase::Enum.new(
                 :pending_approval,
                 :canceled,
                 :pending_reviewing,
                 :pending_submission,
                 :submitted,
                 :complete,
                 :rejected,
                 :requires_attention
               )

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
      #   @return [Symbol]
      required :type, Increase::Enum.new(:real_time_payments_transfer)

      # @!attribute [rw] ultimate_creditor_name
      #   The name of the ultimate recipient of the transfer. Set this if the creditor is an intermediary receiving the payment for someone else.
      #   @return [String]
      required :ultimate_creditor_name, String

      # @!attribute [rw] ultimate_debtor_name
      #   The name of the ultimate sender of the transfer. Set this if the funds are being sent on behalf of someone who is not the account holder at Increase.
      #   @return [String]
      required :ultimate_debtor_name, String

      class Approval < BaseModel
        # @!attribute [rw] approved_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was approved.
        #   @return [String]
        required :approved_at, String

        # @!attribute [rw] approved_by
        #   If the Transfer was approved by a user in the dashboard, the email address of that user.
        #   @return [String]
        required :approved_by, String
      end

      class Cancellation < BaseModel
        # @!attribute [rw] canceled_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Transfer was canceled.
        #   @return [String]
        required :canceled_at, String

        # @!attribute [rw] canceled_by
        #   If the Transfer was canceled by a user in the dashboard, the email address of that user.
        #   @return [String]
        required :canceled_by, String
      end

      class CreatedBy < BaseModel
        # @!attribute [rw] api_key
        #   If present, details about the API key that created the transfer.
        #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey]
        required :api_key, -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey }

        # @!attribute [rw] category
        #   The type of object that created this transfer.
        #   @return [Symbol]
        required :category, Increase::Enum.new(:api_key, :oauth_application, :user)

        # @!attribute [rw] oauth_application
        #   If present, details about the OAuth Application that created the transfer.
        #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication]
        required :oauth_application,
                 -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication }

        # @!attribute [rw] user
        #   If present, details about the User that created the transfer.
        #   @return [Increase::Models::RealTimePaymentsTransfer::CreatedBy::User]
        required :user, -> { Increase::Models::RealTimePaymentsTransfer::CreatedBy::User }

        class APIKey < BaseModel
          # @!attribute [rw] description
          #   The description set for the API key when it was created.
          #   @return [String]
          required :description, String
        end

        class OAuthApplication < BaseModel
          # @!attribute [rw] name_
          #   The name of the OAuth Application.
          #   @return [String]
          required :name_, String
        end

        class User < BaseModel
          # @!attribute [rw] email
          #   The email address of the User.
          #   @return [String]
          required :email, String
        end
      end

      class Rejection < BaseModel
        # @!attribute [rw] reject_reason_additional_information
        #   Additional information about the rejection provided by the recipient bank when the `reject_reason_code` is `NARRATIVE`.
        #   @return [String]
        required :reject_reason_additional_information, String

        # @!attribute [rw] reject_reason_code
        #   The reason the transfer was rejected as provided by the recipient bank or the Real-Time Payments network.
        #   @return [Symbol]
        required :reject_reason_code,
                 Increase::Enum.new(
                   :account_closed,
                   :account_blocked,
                   :invalid_creditor_account_type,
                   :invalid_creditor_account_number,
                   :invalid_creditor_financial_institution_identifier,
                   :end_customer_deceased,
                   :narrative,
                   :transaction_forbidden,
                   :transaction_type_not_supported,
                   :unexpected_amount,
                   :amount_exceeds_bank_limits,
                   :invalid_creditor_address,
                   :unknown_end_customer,
                   :invalid_debtor_address,
                   :timeout,
                   :unsupported_message_for_recipient,
                   :recipient_connection_not_available,
                   :real_time_payments_suspended,
                   :instructed_agent_signed_off,
                   :processing_error,
                   :other
                 )

        # @!attribute [rw] rejected_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was rejected.
        #   @return [String]
        required :rejected_at, String
      end

      class Submission < BaseModel
        # @!attribute [rw] submitted_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was submitted to The Clearing House.
        #   @return [String]
        required :submitted_at, String

        # @!attribute [rw] transaction_identification
        #   The Real-Time Payments network identification of the transfer.
        #   @return [String]
        required :transaction_identification, String
      end
    end
  end
end
