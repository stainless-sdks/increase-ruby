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
      #   @return [Time]
      required :accepted_at, Time

      # @!attribute [rw] account_id
      #   The Account the check is being deposited against.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number_id
      #   The Account Number the check is being deposited against.
      #   @return [String]
      required :account_number_id, String

      # @!attribute [rw] adjustments
      #   If the deposit or the return was adjusted by the sending institution, this will contain details of the adjustments.
      #   @return [Array<Increase::Models::InboundCheckDeposit::Adjustment>]
      required :adjustments, Increase::ArrayOf.new(-> { Increase::Models::InboundCheckDeposit::Adjustment })

      # @!attribute [rw] amount
      #   The deposited amount in USD cents.
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
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the deposit.
      #   @return [Symbol, Increase::Models::InboundCheckDeposit::Currency]
      required :currency, enum: -> { Increase::Models::InboundCheckDeposit::Currency }

      # @!attribute [rw] declined_at
      #   If the Inbound Check Deposit was declined, the [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which this took place.
      #   @return [Time]
      required :declined_at, Time

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
      #   @return [Symbol, Increase::Models::InboundCheckDeposit::Status]
      required :status, enum: -> { Increase::Models::InboundCheckDeposit::Status }

      # @!attribute [rw] transaction_id
      #   If the deposit attempt has been accepted, the identifier of the Transaction object created as a result of the successful deposit.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_check_deposit`.
      #   @return [Symbol, Increase::Models::InboundCheckDeposit::Type]
      required :type, enum: -> { Increase::Models::InboundCheckDeposit::Type }

      class Adjustment < BaseModel
        # @!attribute [rw] adjusted_at
        #   The time at which the return adjustment was received.
        #   @return [Time]
        required :adjusted_at, Time

        # @!attribute [rw] amount
        #   The amount of the adjustment.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] reason
        #   The reason for the adjustment.
        #   @return [Symbol, Increase::Models::InboundCheckDeposit::Adjustment::Reason]
        required :reason, enum: -> { Increase::Models::InboundCheckDeposit::Adjustment::Reason }

        # @!attribute [rw] transaction_id
        #   The id of the transaction for the adjustment.
        #   @return [String]
        required :transaction_id, String

        # The reason for the adjustment.
        class Reason < Increase::Enum
          # The return was initiated too late and the receiving institution has responded with a Late Return Claim.
          LATE_RETURN = :late_return

          # The check was deposited to the wrong payee and the depositing institution has reimbursed the funds with a Wrong Payee Credit.
          WRONG_PAYEE_CREDIT = :wrong_payee_credit
        end

        # @!parse
        #   # Create a new instance of Adjustment from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :adjusted_at The time at which the return adjustment was received.
        #   #   @option data [Integer] :amount The amount of the adjustment.
        #   #   @option data [String] :reason The reason for the adjustment.
        #   #   @option data [String] :transaction_id The id of the transaction for the adjustment.
        #   def initialize(data = {}) = super
      end

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
        #   @return [Symbol, Increase::Models::InboundCheckDeposit::DepositReturn::Reason]
        required :reason, enum: -> { Increase::Models::InboundCheckDeposit::DepositReturn::Reason }

        # @!attribute [rw] returned_at
        #   The time at which the deposit was returned.
        #   @return [Time]
        required :returned_at, Time

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

        # @!parse
        #   # Create a new instance of DepositReturn from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :reason The reason the deposit was returned.
        #   #   @option data [String] :returned_at The time at which the deposit was returned.
        #   #   @option data [String] :transaction_id The id of the transaction for the returned deposit.
        #   def initialize(data = {}) = super
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

      # @!parse
      #   # Create a new instance of InboundCheckDeposit from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The deposit's identifier.
      #   #   @option data [String] :accepted_at If the Inbound Check Deposit was accepted, the
      #   #     [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which this
      #   #     took place.
      #   #   @option data [String] :account_id The Account the check is being deposited against.
      #   #   @option data [String] :account_number_id The Account Number the check is being deposited against.
      #   #   @option data [Array<Object>] :adjustments If the deposit or the return was adjusted by the sending institution, this will
      #   #     contain details of the adjustments.
      #   #   @option data [Integer] :amount The deposited amount in USD cents.
      #   #   @option data [String] :back_image_file_id The ID for the File containing the image of the back of the check.
      #   #   @option data [String] :bank_of_first_deposit_routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   #     bank depositing this check. In some rare cases, this is not transmitted via
      #   #     Check21 and the value will be null.
      #   #   @option data [String] :check_number The check number printed on the check being deposited.
      #   #   @option data [String] :check_transfer_id If this deposit is for an existing Check Transfer, the identifier of that Check
      #   #     Transfer.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #     the deposit was attempted.
      #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the deposit.
      #   #   @option data [String] :declined_at If the Inbound Check Deposit was declined, the
      #   #     [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which this
      #   #     took place.
      #   #   @option data [String] :declined_transaction_id If the deposit attempt has been rejected, the identifier of the Declined
      #   #     Transaction object created as a result of the failed deposit.
      #   #   @option data [Object] :deposit_return If you requested a return of this deposit, this will contain details of the
      #   #     return.
      #   #   @option data [String] :front_image_file_id The ID for the File containing the image of the front of the check.
      #   #   @option data [String] :status The status of the Inbound Check Deposit.
      #   #   @option data [String] :transaction_id If the deposit attempt has been accepted, the identifier of the Transaction
      #   #     object created as a result of the successful deposit.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `inbound_check_deposit`.
      #   def initialize(data = {}) = super
    end
  end
end
