# frozen_string_literal: true

module Increase
  module Models
    class InboundCheckDepositRetrieveResponse < BaseModel
      # @!attribute [rw] id
      #   The deposit's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account the check is being deposited against.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number_id
      #   The Account Number the check is being deposited against.
      #   @return [String]
      required :account_number_id, String

      # @!attribute [rw] amount
      #   The deposited amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] back_image_file_id
      #   The ID for the File containing the image of the back of the check.
      #   @return [String]
      required :back_image_file_id, String

      # @!attribute [rw] bank_of_first_deposit_routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the bank depositing this check. In some rare cases, this is not transmitted via Check21 and the value will be null.
      #   @return [String]
      required :bank_of_first_deposit_routing_number, String

      # @!attribute [rw] check_number
      #   The check number printed on the check being deposited.
      #   @return [String]
      required :check_number, String

      # @!attribute [rw] check_transfer_id
      #   If this deposit is for an existing Check Transfer, the identifier of that Check Transfer.
      #   @return [String]
      required :check_transfer_id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the deposit was attempted.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the deposit.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] declined_transaction_id
      #   If the deposit attempt has been rejected, the identifier of the Declined Transaction object created as a result of the failed deposit.
      #   @return [String]
      required :declined_transaction_id, String

      # @!attribute [rw] front_image_file_id
      #   The ID for the File containing the image of the front of the check.
      #   @return [String]
      required :front_image_file_id, String

      # @!attribute [rw] status
      #   The status of the Inbound Check Deposit.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending, :accepted, :rejected)

      # @!attribute [rw] transaction_id
      #   If the deposit attempt has been accepted, the identifier of the Transaction object created as a result of the successful deposit.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_check_deposit`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_check_deposit)
    end
  end
end
