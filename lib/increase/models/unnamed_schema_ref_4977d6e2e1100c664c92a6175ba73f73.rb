# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73 < BaseModel
      # @!attribute [rw] account_transfer_instruction
      #   An Account Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `account_transfer_instruction`.
      #   @return [Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::AccountTransferInstruction]
      required :account_transfer_instruction,
               -> { Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::AccountTransferInstruction }

      # @!attribute [rw] ach_transfer_instruction
      #   An ACH Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_instruction`.
      #   @return [Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::ACHTransferInstruction]
      required :ach_transfer_instruction,
               -> { Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::ACHTransferInstruction }

      # @!attribute [rw] card_authorization
      #   A Card Authorization object. This field will be present in the JSON response if and only if `category` is equal to `card_authorization`.
      #   @return [Increase::Models::UnnamedSchemaRef8b9d6b6c383dcd8b3ff661d45da975bd]
      required :card_authorization, -> { Increase::Models::UnnamedSchemaRef8b9d6b6c383dcd8b3ff661d45da975bd }

      # @!attribute [rw] category
      #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
      #   @return [Symbol]
      required :category,
               Increase::Enum.new(
                 :account_transfer_instruction,
                 :ach_transfer_instruction,
                 :card_authorization,
                 :check_deposit_instruction,
                 :check_transfer_instruction,
                 :inbound_funds_hold,
                 :real_time_payments_transfer_instruction,
                 :wire_transfer_instruction,
                 :other
               )

      # @!attribute [rw] check_deposit_instruction
      #   A Check Deposit Instruction object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_instruction`.
      #   @return [Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::CheckDepositInstruction]
      required :check_deposit_instruction,
               -> { Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::CheckDepositInstruction }

      # @!attribute [rw] check_transfer_instruction
      #   A Check Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `check_transfer_instruction`.
      #   @return [Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::CheckTransferInstruction]
      required :check_transfer_instruction,
               -> { Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::CheckTransferInstruction }

      # @!attribute [rw] inbound_funds_hold
      #   An Inbound Funds Hold object. This field will be present in the JSON response if and only if `category` is equal to `inbound_funds_hold`.
      #   @return [Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::InboundFundsHold]
      required :inbound_funds_hold,
               -> { Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::InboundFundsHold }

      # @!attribute [rw] real_time_payments_transfer_instruction
      #   A Real-Time Payments Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `real_time_payments_transfer_instruction`.
      #   @return [Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::RealTimePaymentsTransferInstruction]
      required :real_time_payments_transfer_instruction,
               -> { Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::RealTimePaymentsTransferInstruction }

      # @!attribute [rw] wire_transfer_instruction
      #   A Wire Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `wire_transfer_instruction`.
      #   @return [Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::WireTransferInstruction]
      required :wire_transfer_instruction,
               -> { Increase::Models::UnnamedSchemaRef4977d6e2e1100c664c92a6175ba73f73::WireTransferInstruction }

      class AccountTransferInstruction < BaseModel
        # @!attribute [rw] amount
        #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] transfer_id
        #   The identifier of the Account Transfer that led to this Pending Transaction.
        #   @return [String]
        required :transfer_id, String
      end

      class ACHTransferInstruction < BaseModel
        # @!attribute [rw] amount
        #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] transfer_id
        #   The identifier of the ACH Transfer that led to this Pending Transaction.
        #   @return [String]
        required :transfer_id, String
      end

      class CheckDepositInstruction < BaseModel
        # @!attribute [rw] amount
        #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] back_image_file_id
        #   The identifier of the File containing the image of the back of the check that was deposited.
        #   @return [String]
        required :back_image_file_id, String

        # @!attribute [rw] check_deposit_id
        #   The identifier of the Check Deposit.
        #   @return [String]
        required :check_deposit_id, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] front_image_file_id
        #   The identifier of the File containing the image of the front of the check that was deposited.
        #   @return [String]
        required :front_image_file_id, String
      end

      class CheckTransferInstruction < BaseModel
        # @!attribute [rw] amount
        #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] transfer_id
        #   The identifier of the Check Transfer that led to this Pending Transaction.
        #   @return [String]
        required :transfer_id, String
      end

      class InboundFundsHold < BaseModel
        # @!attribute [rw] id
        #   The Inbound Funds Hold identifier.
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   The held amount in the minor unit of the account's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] automatically_releases_at
        #   When the hold will be released automatically. Certain conditions may cause it to be released before this time.
        #   @return [String]
        required :automatically_releases_at, String

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold was created.
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] held_transaction_id
        #   The ID of the Transaction for which funds were held.
        #   @return [String]
        required :held_transaction_id, String

        # @!attribute [rw] pending_transaction_id
        #   The ID of the Pending Transaction representing the held funds.
        #   @return [String]
        required :pending_transaction_id, String

        # @!attribute [rw] released_at
        #   When the hold was released (if it has been released).
        #   @return [String]
        required :released_at, String

        # @!attribute [rw] status
        #   The status of the hold.
        #   @return [Symbol]
        required :status, Increase::Enum.new(:held, :complete)

        # @!attribute [rw] type
        #   A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
        #   @return [Symbol]
        required :type, Increase::Enum.new(:inbound_funds_hold)
      end

      class RealTimePaymentsTransferInstruction < BaseModel
        # @!attribute [rw] amount
        #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] transfer_id
        #   The identifier of the Real-Time Payments Transfer that led to this Pending Transaction.
        #   @return [String]
        required :transfer_id, String
      end

      class WireTransferInstruction < BaseModel
        # @!attribute [rw] account_number
        #   The account number for the destination account.
        #   @return [String]
        required :account_number, String

        # @!attribute [rw] amount
        #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] message_to_recipient
        #   The message that will show on the recipient's bank statement.
        #   @return [String]
        required :message_to_recipient, String

        # @!attribute [rw] routing_number
        #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the destination account.
        #   @return [String]
        required :routing_number, String

        # @!attribute [rw] transfer_id
        #   The identifier of the Wire Transfer that led to this Pending Transaction.
        #   @return [String]
        required :transfer_id, String
      end
    end
  end
end
