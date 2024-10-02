# frozen_string_literal: true

module Increase
  module Models
    class InboundCheckDeposit < BaseModel
      # @!attribute [rw] id
      #   The deposit's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] accepted_at
      #   If the Inbound Check Deposit was accepted, the [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which this took place.
      #   @return [DateTime]
      required :accepted_at, DateTime

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
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the deposit.
      #   One of the constants defined in {Increase::Models::InboundCheckDeposit::Currency}
      #   @return [Symbol]
      required :currency, enum: -> { Increase::Models::InboundCheckDeposit::Currency }

      # @!attribute [rw] declined_at
      #   If the Inbound Check Deposit was declined, the [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which this took place.
      #   @return [DateTime]
      required :declined_at, DateTime

      # @!attribute [rw] declined_transaction_id
      #   If the deposit attempt has been rejected, the identifier of the Declined Transaction object created as a result of the failed deposit.
      #   @return [String]
      required :declined_transaction_id, String

      # @!attribute [rw] deposit_return
      #   If you requested a return of this deposit, this will contain details of the return.
      #   @return [Increase::Models::InboundCheckDeposit::DepositReturn]
      required :deposit_return, -> { Increase::Models::InboundCheckDeposit::DepositReturn }

      # @!attribute [rw] front_image_file_id
      #   The ID for the File containing the image of the front of the check.
      #   @return [String]
      required :front_image_file_id, String

      # @!attribute [rw] status
      #   The status of the Inbound Check Deposit.
      #   One of the constants defined in {Increase::Models::InboundCheckDeposit::Status}
      #   @return [Symbol]
      required :status, enum: -> { Increase::Models::InboundCheckDeposit::Status }

      # @!attribute [rw] transaction_id
      #   If the deposit attempt has been accepted, the identifier of the Transaction object created as a result of the successful deposit.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_check_deposit`.
      #   One of the constants defined in {Increase::Models::InboundCheckDeposit::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::InboundCheckDeposit::Type }

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the deposit.
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

      class DepositReturn < BaseModel
        # @!attribute [rw] reason
        #   The reason the deposit was returned.
        #   One of the constants defined in {Increase::Models::InboundCheckDeposit::DepositReturn::Reason}
        #   @return [Symbol]
        required :reason, enum: -> { Increase::Models::InboundCheckDeposit::DepositReturn::Reason }

        # @!attribute [rw] returned_at
        #   The time at which the deposit was returned.
        #   @return [DateTime]
        required :returned_at, DateTime

        # @!attribute [rw] transaction_id
        #   The id of the transaction for the returned deposit.
        #   @return [String]
        required :transaction_id, String

        # The reason the deposit was returned.
        class Reason < Increase::Enum
          # The check was altered or fictitious.
          ALTERED_OR_FICTITIOUS = :altered_or_fictitious

          # The check was not authorized.
          NOT_AUTHORIZED = :not_authorized

          # The check was a duplicate presentment.
          DUPLICATE_PRESENTMENT = :duplicate_presentment

          # The check was not endorsed.
          ENDORSEMENT_MISSING = :endorsement_missing

          # The check was not endorsed by the payee.
          ENDORSEMENT_IRREGULAR = :endorsement_irregular
        end
      end

      # The status of the Inbound Check Deposit.
      class Status < Increase::Enum
        # The Inbound Check Deposit is pending.
        PENDING = :pending

        # The Inbound Check Deposit was accepted.
        ACCEPTED = :accepted

        # The Inbound Check Deposit was rejected.
        DECLINED = :declined

        # The Inbound Check Deposit was returned.
        RETURNED = :returned

        # The Inbound Check Deposit requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention
      end

      # A constant representing the object's type. For this resource it will always be `inbound_check_deposit`.
      class Type < Increase::Enum
        INBOUND_CHECK_DEPOSIT = :inbound_check_deposit
      end
    end
  end
end
