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
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] created_by
      #   What object created the transfer, either via the API or the dashboard.
      #   @return [Increase::Models::WireTransfer::CreatedBy]
      required :created_by, -> { Increase::Models::WireTransfer::CreatedBy }

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For wire transfers this is always equal to `usd`.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

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
      #   @return [Symbol]
      required :network, Increase::Enum.new(:wire)

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
      #   @return [Symbol]
      required :status,
               Increase::Enum.new(
                 :canceled,
                 :requires_attention,
                 :pending_reviewing,
                 :pending_approval,
                 :rejected,
                 :reversed,
                 :complete,
                 :pending_creating
               )

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
      #   @return [Symbol]
      required :type, Increase::Enum.new(:wire_transfer)

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
        #   @return [Increase::Models::WireTransfer::CreatedBy::APIKey]
        required :api_key, -> { Increase::Models::WireTransfer::CreatedBy::APIKey }

        # @!attribute [rw] category
        #   The type of object that created this transfer.
        #   @return [Symbol]
        required :category, Increase::Enum.new(:api_key, :oauth_application, :user)

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

      class Reversal < BaseModel
        # @!attribute [rw] amount
        #   The amount that was reversed in USD cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the reversal was created.
        #   @return [String]
        required :created_at, String

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
        #   @return [String]
        required :input_cycle_date, String

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
        #   @return [String]
        required :previous_message_input_cycle_date, String

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

        # @!attribute [rw] transaction_id
        #   The ID for the Transaction associated with the transfer reversal.
        #   @return [String]
        required :transaction_id, String

        # @!attribute [rw] wire_transfer_id
        #   The ID for the Wire Transfer that is being reversed.
        #   @return [String]
        required :wire_transfer_id, String
      end

      class Submission < BaseModel
        # @!attribute [rw] input_message_accountability_data
        #   The accountability data for the submission.
        #   @return [String]
        required :input_message_accountability_data, String

        # @!attribute [rw] submitted_at
        #   When this wire transfer was submitted to Fedwire.
        #   @return [String]
        required :submitted_at, String
      end
    end
  end
end
