# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::InboundCheckDeposits#retrieve
    class InboundCheckDeposit < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/inbound_check_deposit/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute accepted_at
      #   #/components/schemas/inbound_check_deposit/properties/accepted_at
      #
      #   @return [Time, nil]
      required :accepted_at, Time, nil?: true

      # @!attribute account_id
      #   #/components/schemas/inbound_check_deposit/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number_id
      #   #/components/schemas/inbound_check_deposit/properties/account_number_id
      #
      #   @return [String, nil]
      required :account_number_id, String, nil?: true

      # @!attribute adjustments
      #   #/components/schemas/inbound_check_deposit/properties/adjustments
      #
      #   @return [Array<Increase::Models::InboundCheckDeposit::Adjustment>]
      required :adjustments,
               -> { Increase::Internal::Type::ArrayOf[Increase::Models::InboundCheckDeposit::Adjustment] }

      # @!attribute amount
      #   #/components/schemas/inbound_check_deposit/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute back_image_file_id
      #   #/components/schemas/inbound_check_deposit/properties/back_image_file_id
      #
      #   @return [String, nil]
      required :back_image_file_id, String, nil?: true

      # @!attribute bank_of_first_deposit_routing_number
      #   #/components/schemas/inbound_check_deposit/properties/bank_of_first_deposit_routing_number
      #
      #   @return [String, nil]
      required :bank_of_first_deposit_routing_number, String, nil?: true

      # @!attribute check_number
      #   #/components/schemas/inbound_check_deposit/properties/check_number
      #
      #   @return [String, nil]
      required :check_number, String, nil?: true

      # @!attribute check_transfer_id
      #   #/components/schemas/inbound_check_deposit/properties/check_transfer_id
      #
      #   @return [String, nil]
      required :check_transfer_id, String, nil?: true

      # @!attribute created_at
      #   #/components/schemas/inbound_check_deposit/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   #/components/schemas/inbound_check_deposit/properties/currency
      #
      #   @return [Symbol, Increase::Models::InboundCheckDeposit::Currency]
      required :currency, enum: -> { Increase::Models::InboundCheckDeposit::Currency }

      # @!attribute declined_at
      #   #/components/schemas/inbound_check_deposit/properties/declined_at
      #
      #   @return [Time, nil]
      required :declined_at, Time, nil?: true

      # @!attribute declined_transaction_id
      #   #/components/schemas/inbound_check_deposit/properties/declined_transaction_id
      #
      #   @return [String, nil]
      required :declined_transaction_id, String, nil?: true

      # @!attribute deposit_return
      #   #/components/schemas/inbound_check_deposit/properties/deposit_return
      #
      #   @return [Increase::Models::InboundCheckDeposit::DepositReturn, nil]
      required :deposit_return, -> { Increase::Models::InboundCheckDeposit::DepositReturn }, nil?: true

      # @!attribute front_image_file_id
      #   #/components/schemas/inbound_check_deposit/properties/front_image_file_id
      #
      #   @return [String, nil]
      required :front_image_file_id, String, nil?: true

      # @!attribute payee_name_analysis
      #   #/components/schemas/inbound_check_deposit/properties/payee_name_analysis
      #
      #   @return [Symbol, Increase::Models::InboundCheckDeposit::PayeeNameAnalysis]
      required :payee_name_analysis, enum: -> { Increase::Models::InboundCheckDeposit::PayeeNameAnalysis }

      # @!attribute status
      #   #/components/schemas/inbound_check_deposit/properties/status
      #
      #   @return [Symbol, Increase::Models::InboundCheckDeposit::Status]
      required :status, enum: -> { Increase::Models::InboundCheckDeposit::Status }

      # @!attribute transaction_id
      #   #/components/schemas/inbound_check_deposit/properties/transaction_id
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute type
      #   #/components/schemas/inbound_check_deposit/properties/type
      #
      #   @return [Symbol, Increase::Models::InboundCheckDeposit::Type]
      required :type, enum: -> { Increase::Models::InboundCheckDeposit::Type }

      # @!parse
      #   # #/components/schemas/inbound_check_deposit
      #   #
      #   # @param id [String]
      #   # @param accepted_at [Time, nil]
      #   # @param account_id [String]
      #   # @param account_number_id [String, nil]
      #   # @param adjustments [Array<Increase::Models::InboundCheckDeposit::Adjustment>]
      #   # @param amount [Integer]
      #   # @param back_image_file_id [String, nil]
      #   # @param bank_of_first_deposit_routing_number [String, nil]
      #   # @param check_number [String, nil]
      #   # @param check_transfer_id [String, nil]
      #   # @param created_at [Time]
      #   # @param currency [Symbol, Increase::Models::InboundCheckDeposit::Currency]
      #   # @param declined_at [Time, nil]
      #   # @param declined_transaction_id [String, nil]
      #   # @param deposit_return [Increase::Models::InboundCheckDeposit::DepositReturn, nil]
      #   # @param front_image_file_id [String, nil]
      #   # @param payee_name_analysis [Symbol, Increase::Models::InboundCheckDeposit::PayeeNameAnalysis]
      #   # @param status [Symbol, Increase::Models::InboundCheckDeposit::Status]
      #   # @param transaction_id [String, nil]
      #   # @param type [Symbol, Increase::Models::InboundCheckDeposit::Type]
      #   #
      #   def initialize(
      #     id:,
      #     accepted_at:,
      #     account_id:,
      #     account_number_id:,
      #     adjustments:,
      #     amount:,
      #     back_image_file_id:,
      #     bank_of_first_deposit_routing_number:,
      #     check_number:,
      #     check_transfer_id:,
      #     created_at:,
      #     currency:,
      #     declined_at:,
      #     declined_transaction_id:,
      #     deposit_return:,
      #     front_image_file_id:,
      #     payee_name_analysis:,
      #     status:,
      #     transaction_id:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Adjustment < Increase::Internal::Type::BaseModel
        # @!attribute adjusted_at
        #   #/components/schemas/inbound_check_deposit/properties/adjustments/items/properties/adjusted_at
        #
        #   @return [Time]
        required :adjusted_at, Time

        # @!attribute amount
        #   #/components/schemas/inbound_check_deposit/properties/adjustments/items/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute reason
        #   #/components/schemas/inbound_check_deposit/properties/adjustments/items/properties/reason
        #
        #   @return [Symbol, Increase::Models::InboundCheckDeposit::Adjustment::Reason]
        required :reason, enum: -> { Increase::Models::InboundCheckDeposit::Adjustment::Reason }

        # @!attribute transaction_id
        #   #/components/schemas/inbound_check_deposit/properties/adjustments/items/properties/transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # #/components/schemas/inbound_check_deposit/properties/adjustments/items
        #   #
        #   # @param adjusted_at [Time]
        #   # @param amount [Integer]
        #   # @param reason [Symbol, Increase::Models::InboundCheckDeposit::Adjustment::Reason]
        #   # @param transaction_id [String]
        #   #
        #   def initialize(adjusted_at:, amount:, reason:, transaction_id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_check_deposit/properties/adjustments/items/properties/reason
        #
        # @see Increase::Models::InboundCheckDeposit::Adjustment#reason
        module Reason
          extend Increase::Internal::Type::Enum

          # The return was initiated too late and the receiving institution has responded with a Late Return Claim.
          LATE_RETURN = :late_return

          # The check was deposited to the wrong payee and the depositing institution has reimbursed the funds with a Wrong Payee Credit.
          WRONG_PAYEE_CREDIT = :wrong_payee_credit

          # The check was deposited with a different amount than what was written on the check.
          ADJUSTED_AMOUNT = :adjusted_amount

          # The recipient was not able to process the check. This usually happens for e.g., low quality images.
          NON_CONFORMING_ITEM = :non_conforming_item

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/inbound_check_deposit/properties/currency
      #
      # @see Increase::Models::InboundCheckDeposit#currency
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

      # @see Increase::Models::InboundCheckDeposit#deposit_return
      class DepositReturn < Increase::Internal::Type::BaseModel
        # @!attribute reason
        #   #/components/schemas/inbound_check_deposit/properties/deposit_return/anyOf/0/properties/reason
        #
        #   @return [Symbol, Increase::Models::InboundCheckDeposit::DepositReturn::Reason]
        required :reason, enum: -> { Increase::Models::InboundCheckDeposit::DepositReturn::Reason }

        # @!attribute returned_at
        #   #/components/schemas/inbound_check_deposit/properties/deposit_return/anyOf/0/properties/returned_at
        #
        #   @return [Time]
        required :returned_at, Time

        # @!attribute transaction_id
        #   #/components/schemas/inbound_check_deposit/properties/deposit_return/anyOf/0/properties/transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # #/components/schemas/inbound_check_deposit/properties/deposit_return
        #   #
        #   # @param reason [Symbol, Increase::Models::InboundCheckDeposit::DepositReturn::Reason]
        #   # @param returned_at [Time]
        #   # @param transaction_id [String]
        #   #
        #   def initialize(reason:, returned_at:, transaction_id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_check_deposit/properties/deposit_return/anyOf/0/properties/reason
        #
        # @see Increase::Models::InboundCheckDeposit::DepositReturn#reason
        module Reason
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/inbound_check_deposit/properties/payee_name_analysis
      #
      # @see Increase::Models::InboundCheckDeposit#payee_name_analysis
      module PayeeNameAnalysis
        extend Increase::Internal::Type::Enum

        # The details on the check match the recipient name of the check transfer.
        NAME_MATCHES = :name_matches

        # The details on the check do not match the recipient name of the check transfer.
        DOES_NOT_MATCH = :does_not_match

        # The payee name analysis was not evaluated.
        NOT_EVALUATED = :not_evaluated

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/inbound_check_deposit/properties/status
      #
      # @see Increase::Models::InboundCheckDeposit#status
      module Status
        extend Increase::Internal::Type::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/inbound_check_deposit/properties/type
      #
      # @see Increase::Models::InboundCheckDeposit#type
      module Type
        extend Increase::Internal::Type::Enum

        INBOUND_CHECK_DEPOSIT = :inbound_check_deposit

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
