# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Transactions#retrieve
    class Transaction < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/transaction/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/transaction/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/transaction/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #   #/components/schemas/transaction/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   #/components/schemas/transaction/properties/currency
      #
      #   @return [Symbol, Increase::Models::Transaction::Currency]
      required :currency, enum: -> { Increase::Models::Transaction::Currency }

      # @!attribute description
      #   #/components/schemas/transaction/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute route_id
      #   #/components/schemas/transaction/properties/route_id
      #
      #   @return [String, nil]
      required :route_id, String, nil?: true

      # @!attribute route_type
      #   #/components/schemas/transaction/properties/route_type
      #
      #   @return [Symbol, Increase::Models::Transaction::RouteType, nil]
      required :route_type, enum: -> { Increase::Models::Transaction::RouteType }, nil?: true

      # @!attribute source
      #   #/components/schemas/transaction/properties/source
      #
      #   @return [Increase::Models::Transaction::Source]
      required :source, -> { Increase::Models::Transaction::Source }

      # @!attribute type
      #   #/components/schemas/transaction/properties/type
      #
      #   @return [Symbol, Increase::Models::Transaction::Type]
      required :type, enum: -> { Increase::Models::Transaction::Type }

      # @!parse
      #   # #/components/schemas/transaction
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param created_at [Time]
      #   # @param currency [Symbol, Increase::Models::Transaction::Currency]
      #   # @param description [String]
      #   # @param route_id [String, nil]
      #   # @param route_type [Symbol, Increase::Models::Transaction::RouteType, nil]
      #   # @param source [Increase::Models::Transaction::Source]
      #   # @param type [Symbol, Increase::Models::Transaction::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     amount:,
      #     created_at:,
      #     currency:,
      #     description:,
      #     route_id:,
      #     route_type:,
      #     source:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/transaction/properties/currency
      #
      # @see Increase::Models::Transaction#currency
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

      # #/components/schemas/transaction/properties/route_type
      #
      # @see Increase::Models::Transaction#route_type
      module RouteType
        extend Increase::Internal::Type::Enum

        # An Account Number.
        ACCOUNT_NUMBER = :account_number

        # A Card.
        CARD = :card

        # A Lockbox.
        LOCKBOX = :lockbox

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::Transaction#source
      class Source < Increase::Internal::Type::BaseModel
        # @!attribute account_transfer_intention
        #   #/components/schemas/transaction/properties/source/properties/account_transfer_intention
        #
        #   @return [Increase::Models::Transaction::Source::AccountTransferIntention, nil]
        required :account_transfer_intention,
                 -> { Increase::Models::Transaction::Source::AccountTransferIntention },
                 nil?: true

        # @!attribute ach_transfer_intention
        #   #/components/schemas/transaction/properties/source/properties/ach_transfer_intention
        #
        #   @return [Increase::Models::Transaction::Source::ACHTransferIntention, nil]
        required :ach_transfer_intention,
                 -> { Increase::Models::Transaction::Source::ACHTransferIntention },
                 nil?: true

        # @!attribute ach_transfer_rejection
        #   #/components/schemas/transaction/properties/source/properties/ach_transfer_rejection
        #
        #   @return [Increase::Models::Transaction::Source::ACHTransferRejection, nil]
        required :ach_transfer_rejection,
                 -> { Increase::Models::Transaction::Source::ACHTransferRejection },
                 nil?: true

        # @!attribute ach_transfer_return
        #   #/components/schemas/transaction/properties/source/properties/ach_transfer_return
        #
        #   @return [Increase::Models::Transaction::Source::ACHTransferReturn, nil]
        required :ach_transfer_return, -> { Increase::Models::Transaction::Source::ACHTransferReturn }, nil?: true

        # @!attribute card_dispute_acceptance
        #   #/components/schemas/transaction/properties/source/properties/card_dispute_acceptance
        #
        #   @return [Increase::Models::Transaction::Source::CardDisputeAcceptance, nil]
        required :card_dispute_acceptance,
                 -> { Increase::Models::Transaction::Source::CardDisputeAcceptance },
                 nil?: true

        # @!attribute card_dispute_loss
        #   #/components/schemas/transaction/properties/source/properties/card_dispute_loss
        #
        #   @return [Increase::Models::Transaction::Source::CardDisputeLoss, nil]
        required :card_dispute_loss, -> { Increase::Models::Transaction::Source::CardDisputeLoss }, nil?: true

        # @!attribute card_refund
        #   #/components/schemas/transaction/properties/source/properties/card_refund
        #
        #   @return [Increase::Models::Transaction::Source::CardRefund, nil]
        required :card_refund, -> { Increase::Models::Transaction::Source::CardRefund }, nil?: true

        # @!attribute card_revenue_payment
        #   #/components/schemas/transaction/properties/source/properties/card_revenue_payment
        #
        #   @return [Increase::Models::Transaction::Source::CardRevenuePayment, nil]
        required :card_revenue_payment,
                 -> { Increase::Models::Transaction::Source::CardRevenuePayment },
                 nil?: true

        # @!attribute card_settlement
        #   #/components/schemas/transaction/properties/source/properties/card_settlement
        #
        #   @return [Increase::Models::Transaction::Source::CardSettlement, nil]
        required :card_settlement, -> { Increase::Models::Transaction::Source::CardSettlement }, nil?: true

        # @!attribute cashback_payment
        #   #/components/schemas/transaction/properties/source/properties/cashback_payment
        #
        #   @return [Increase::Models::Transaction::Source::CashbackPayment, nil]
        required :cashback_payment, -> { Increase::Models::Transaction::Source::CashbackPayment }, nil?: true

        # @!attribute category
        #   #/components/schemas/transaction/properties/source/properties/category
        #
        #   @return [Symbol, Increase::Models::Transaction::Source::Category]
        required :category, enum: -> { Increase::Models::Transaction::Source::Category }

        # @!attribute check_deposit_acceptance
        #   #/components/schemas/transaction/properties/source/properties/check_deposit_acceptance
        #
        #   @return [Increase::Models::Transaction::Source::CheckDepositAcceptance, nil]
        required :check_deposit_acceptance,
                 -> { Increase::Models::Transaction::Source::CheckDepositAcceptance },
                 nil?: true

        # @!attribute check_deposit_return
        #   #/components/schemas/transaction/properties/source/properties/check_deposit_return
        #
        #   @return [Increase::Models::Transaction::Source::CheckDepositReturn, nil]
        required :check_deposit_return,
                 -> { Increase::Models::Transaction::Source::CheckDepositReturn },
                 nil?: true

        # @!attribute check_transfer_deposit
        #   #/components/schemas/transaction/properties/source/properties/check_transfer_deposit
        #
        #   @return [Increase::Models::Transaction::Source::CheckTransferDeposit, nil]
        required :check_transfer_deposit,
                 -> { Increase::Models::Transaction::Source::CheckTransferDeposit },
                 nil?: true

        # @!attribute fee_payment
        #   #/components/schemas/transaction/properties/source/properties/fee_payment
        #
        #   @return [Increase::Models::Transaction::Source::FeePayment, nil]
        required :fee_payment, -> { Increase::Models::Transaction::Source::FeePayment }, nil?: true

        # @!attribute inbound_ach_transfer
        #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer
        #
        #   @return [Increase::Models::Transaction::Source::InboundACHTransfer, nil]
        required :inbound_ach_transfer,
                 -> { Increase::Models::Transaction::Source::InboundACHTransfer },
                 nil?: true

        # @!attribute inbound_ach_transfer_return_intention
        #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer_return_intention
        #
        #   @return [Increase::Models::Transaction::Source::InboundACHTransferReturnIntention, nil]
        required :inbound_ach_transfer_return_intention,
                 -> { Increase::Models::Transaction::Source::InboundACHTransferReturnIntention },
                 nil?: true

        # @!attribute inbound_check_adjustment
        #   #/components/schemas/transaction/properties/source/properties/inbound_check_adjustment
        #
        #   @return [Increase::Models::Transaction::Source::InboundCheckAdjustment, nil]
        required :inbound_check_adjustment,
                 -> { Increase::Models::Transaction::Source::InboundCheckAdjustment },
                 nil?: true

        # @!attribute inbound_check_deposit_return_intention
        #   #/components/schemas/transaction/properties/source/properties/inbound_check_deposit_return_intention
        #
        #   @return [Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention, nil]
        required :inbound_check_deposit_return_intention,
                 -> { Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention },
                 nil?: true

        # @!attribute inbound_real_time_payments_transfer_confirmation
        #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation
        #
        #   @return [Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation, nil]
        required :inbound_real_time_payments_transfer_confirmation,
                 -> { Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation },
                 nil?: true

        # @!attribute inbound_real_time_payments_transfer_decline
        #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline
        #
        #   @return [Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline, nil]
        required :inbound_real_time_payments_transfer_decline,
                 -> { Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline },
                 nil?: true

        # @!attribute inbound_wire_reversal
        #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal
        #
        #   @return [Increase::Models::Transaction::Source::InboundWireReversal, nil]
        required :inbound_wire_reversal,
                 -> { Increase::Models::Transaction::Source::InboundWireReversal },
                 nil?: true

        # @!attribute inbound_wire_transfer
        #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer
        #
        #   @return [Increase::Models::Transaction::Source::InboundWireTransfer, nil]
        required :inbound_wire_transfer,
                 -> { Increase::Models::Transaction::Source::InboundWireTransfer },
                 nil?: true

        # @!attribute inbound_wire_transfer_reversal
        #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer_reversal
        #
        #   @return [Increase::Models::Transaction::Source::InboundWireTransferReversal, nil]
        required :inbound_wire_transfer_reversal,
                 -> { Increase::Models::Transaction::Source::InboundWireTransferReversal },
                 nil?: true

        # @!attribute interest_payment
        #   #/components/schemas/transaction/properties/source/properties/interest_payment
        #
        #   @return [Increase::Models::Transaction::Source::InterestPayment, nil]
        required :interest_payment, -> { Increase::Models::Transaction::Source::InterestPayment }, nil?: true

        # @!attribute internal_source
        #   #/components/schemas/transaction/properties/source/properties/internal_source
        #
        #   @return [Increase::Models::Transaction::Source::InternalSource, nil]
        required :internal_source, -> { Increase::Models::Transaction::Source::InternalSource }, nil?: true

        # @!attribute other
        #   #/components/schemas/transaction/properties/source/properties/other
        #
        #   @return [Object, nil]
        required :other, Increase::Internal::Type::Unknown, nil?: true

        # @!attribute real_time_payments_transfer_acknowledgement
        #   #/components/schemas/transaction/properties/source/properties/real_time_payments_transfer_acknowledgement
        #
        #   @return [Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement, nil]
        required :real_time_payments_transfer_acknowledgement,
                 -> { Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement },
                 nil?: true

        # @!attribute sample_funds
        #   #/components/schemas/transaction/properties/source/properties/sample_funds
        #
        #   @return [Increase::Models::Transaction::Source::SampleFunds, nil]
        required :sample_funds, -> { Increase::Models::Transaction::Source::SampleFunds }, nil?: true

        # @!attribute wire_transfer_intention
        #   #/components/schemas/transaction/properties/source/properties/wire_transfer_intention
        #
        #   @return [Increase::Models::Transaction::Source::WireTransferIntention, nil]
        required :wire_transfer_intention,
                 -> { Increase::Models::Transaction::Source::WireTransferIntention },
                 nil?: true

        # @!parse
        #   # #/components/schemas/transaction/properties/source
        #   #
        #   # @param account_transfer_intention [Increase::Models::Transaction::Source::AccountTransferIntention, nil]
        #   # @param ach_transfer_intention [Increase::Models::Transaction::Source::ACHTransferIntention, nil]
        #   # @param ach_transfer_rejection [Increase::Models::Transaction::Source::ACHTransferRejection, nil]
        #   # @param ach_transfer_return [Increase::Models::Transaction::Source::ACHTransferReturn, nil]
        #   # @param card_dispute_acceptance [Increase::Models::Transaction::Source::CardDisputeAcceptance, nil]
        #   # @param card_dispute_loss [Increase::Models::Transaction::Source::CardDisputeLoss, nil]
        #   # @param card_refund [Increase::Models::Transaction::Source::CardRefund, nil]
        #   # @param card_revenue_payment [Increase::Models::Transaction::Source::CardRevenuePayment, nil]
        #   # @param card_settlement [Increase::Models::Transaction::Source::CardSettlement, nil]
        #   # @param cashback_payment [Increase::Models::Transaction::Source::CashbackPayment, nil]
        #   # @param category [Symbol, Increase::Models::Transaction::Source::Category]
        #   # @param check_deposit_acceptance [Increase::Models::Transaction::Source::CheckDepositAcceptance, nil]
        #   # @param check_deposit_return [Increase::Models::Transaction::Source::CheckDepositReturn, nil]
        #   # @param check_transfer_deposit [Increase::Models::Transaction::Source::CheckTransferDeposit, nil]
        #   # @param fee_payment [Increase::Models::Transaction::Source::FeePayment, nil]
        #   # @param inbound_ach_transfer [Increase::Models::Transaction::Source::InboundACHTransfer, nil]
        #   # @param inbound_ach_transfer_return_intention [Increase::Models::Transaction::Source::InboundACHTransferReturnIntention, nil]
        #   # @param inbound_check_adjustment [Increase::Models::Transaction::Source::InboundCheckAdjustment, nil]
        #   # @param inbound_check_deposit_return_intention [Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention, nil]
        #   # @param inbound_real_time_payments_transfer_confirmation [Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation, nil]
        #   # @param inbound_real_time_payments_transfer_decline [Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline, nil]
        #   # @param inbound_wire_reversal [Increase::Models::Transaction::Source::InboundWireReversal, nil]
        #   # @param inbound_wire_transfer [Increase::Models::Transaction::Source::InboundWireTransfer, nil]
        #   # @param inbound_wire_transfer_reversal [Increase::Models::Transaction::Source::InboundWireTransferReversal, nil]
        #   # @param interest_payment [Increase::Models::Transaction::Source::InterestPayment, nil]
        #   # @param internal_source [Increase::Models::Transaction::Source::InternalSource, nil]
        #   # @param other [Object, nil]
        #   # @param real_time_payments_transfer_acknowledgement [Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement, nil]
        #   # @param sample_funds [Increase::Models::Transaction::Source::SampleFunds, nil]
        #   # @param wire_transfer_intention [Increase::Models::Transaction::Source::WireTransferIntention, nil]
        #   #
        #   def initialize(
        #     account_transfer_intention:,
        #     ach_transfer_intention:,
        #     ach_transfer_rejection:,
        #     ach_transfer_return:,
        #     card_dispute_acceptance:,
        #     card_dispute_loss:,
        #     card_refund:,
        #     card_revenue_payment:,
        #     card_settlement:,
        #     cashback_payment:,
        #     category:,
        #     check_deposit_acceptance:,
        #     check_deposit_return:,
        #     check_transfer_deposit:,
        #     fee_payment:,
        #     inbound_ach_transfer:,
        #     inbound_ach_transfer_return_intention:,
        #     inbound_check_adjustment:,
        #     inbound_check_deposit_return_intention:,
        #     inbound_real_time_payments_transfer_confirmation:,
        #     inbound_real_time_payments_transfer_decline:,
        #     inbound_wire_reversal:,
        #     inbound_wire_transfer:,
        #     inbound_wire_transfer_reversal:,
        #     interest_payment:,
        #     internal_source:,
        #     other:,
        #     real_time_payments_transfer_acknowledgement:,
        #     sample_funds:,
        #     wire_transfer_intention:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::Transaction::Source#account_transfer_intention
        class AccountTransferIntention < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/account_transfer_intention/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   #/components/schemas/transaction/properties/source/properties/account_transfer_intention/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::AccountTransferIntention::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::AccountTransferIntention::Currency }

          # @!attribute description
          #   #/components/schemas/transaction/properties/source/properties/account_transfer_intention/anyOf/0/properties/description
          #
          #   @return [String]
          required :description, String

          # @!attribute destination_account_id
          #   #/components/schemas/transaction/properties/source/properties/account_transfer_intention/anyOf/0/properties/destination_account_id
          #
          #   @return [String]
          required :destination_account_id, String

          # @!attribute source_account_id
          #   #/components/schemas/transaction/properties/source/properties/account_transfer_intention/anyOf/0/properties/source_account_id
          #
          #   @return [String]
          required :source_account_id, String

          # @!attribute transfer_id
          #   #/components/schemas/transaction/properties/source/properties/account_transfer_intention/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/account_transfer_intention
          #   #
          #   # @param amount [Integer]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::AccountTransferIntention::Currency]
          #   # @param description [String]
          #   # @param destination_account_id [String]
          #   # @param source_account_id [String]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(amount:, currency:, description:, destination_account_id:, source_account_id:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/account_transfer_intention/anyOf/0/properties/currency
          #
          # @see Increase::Models::Transaction::Source::AccountTransferIntention#currency
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
        end

        # @see Increase::Models::Transaction::Source#ach_transfer_intention
        class ACHTransferIntention < Increase::Internal::Type::BaseModel
          # @!attribute account_number
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_intention/anyOf/0/properties/account_number
          #
          #   @return [String]
          required :account_number, String

          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_intention/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute routing_number
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_intention/anyOf/0/properties/routing_number
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute statement_descriptor
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_intention/anyOf/0/properties/statement_descriptor
          #
          #   @return [String]
          required :statement_descriptor, String

          # @!attribute transfer_id
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_intention/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/ach_transfer_intention
          #   #
          #   # @param account_number [String]
          #   # @param amount [Integer]
          #   # @param routing_number [String]
          #   # @param statement_descriptor [String]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(account_number:, amount:, routing_number:, statement_descriptor:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#ach_transfer_rejection
        class ACHTransferRejection < Increase::Internal::Type::BaseModel
          # @!attribute transfer_id
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_rejection/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/ach_transfer_rejection
          #   #
          #   # @param transfer_id [String]
          #   #
          #   def initialize(transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#ach_transfer_return
        class ACHTransferReturn < Increase::Internal::Type::BaseModel
          # @!attribute created_at
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_return/anyOf/0/properties/created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute raw_return_reason_code
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_return/anyOf/0/properties/raw_return_reason_code
          #
          #   @return [String]
          required :raw_return_reason_code, String

          # @!attribute return_reason_code
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_return/anyOf/0/properties/return_reason_code
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode]
          required :return_reason_code,
                   enum: -> { Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode }

          # @!attribute trace_number
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_return/anyOf/0/properties/trace_number
          #
          #   @return [String]
          required :trace_number, String

          # @!attribute transaction_id
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_return/anyOf/0/properties/transaction_id
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute transfer_id
          #   #/components/schemas/transaction/properties/source/properties/ach_transfer_return/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/ach_transfer_return
          #   #
          #   # @param created_at [Time]
          #   # @param raw_return_reason_code [String]
          #   # @param return_reason_code [Symbol, Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode]
          #   # @param trace_number [String]
          #   # @param transaction_id [String]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(
          #     created_at:,
          #     raw_return_reason_code:,
          #     return_reason_code:,
          #     trace_number:,
          #     transaction_id:,
          #     transfer_id:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/ach_transfer_return/anyOf/0/properties/return_reason_code
          #
          # @see Increase::Models::Transaction::Source::ACHTransferReturn#return_reason_code
          module ReturnReasonCode
            extend Increase::Internal::Type::Enum

            # Code R01. Insufficient funds in the receiving account. Sometimes abbreviated to NSF.
            INSUFFICIENT_FUND = :insufficient_fund

            # Code R03. The account does not exist or the receiving bank was unable to locate it.
            NO_ACCOUNT = :no_account

            # Code R02. The account is closed at the receiving bank.
            ACCOUNT_CLOSED = :account_closed

            # Code R04. The account number is invalid at the receiving bank.
            INVALID_ACCOUNT_NUMBER_STRUCTURE = :invalid_account_number_structure

            # Code R16. The account at the receiving bank was frozen per the Office of Foreign Assets Control.
            ACCOUNT_FROZEN_ENTRY_RETURNED_PER_OFAC_INSTRUCTION = :account_frozen_entry_returned_per_ofac_instruction

            # Code R23. The receiving bank account refused a credit transfer.
            CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

            # Code R05. The receiving bank rejected because of an incorrect Standard Entry Class code.
            UNAUTHORIZED_DEBIT_TO_CONSUMER_ACCOUNT_USING_CORPORATE_SEC_CODE =
              :unauthorized_debit_to_consumer_account_using_corporate_sec_code

            # Code R29. The corporate customer at the receiving bank reversed the transfer.
            CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized

            # Code R08. The receiving bank stopped payment on this transfer.
            PAYMENT_STOPPED = :payment_stopped

            # Code R20. The receiving bank account does not perform transfers.
            NON_TRANSACTION_ACCOUNT = :non_transaction_account

            # Code R09. The receiving bank account does not have enough available balance for the transfer.
            UNCOLLECTED_FUNDS = :uncollected_funds

            # Code R28. The routing number is incorrect.
            ROUTING_NUMBER_CHECK_DIGIT_ERROR = :routing_number_check_digit_error

            # Code R10. The customer at the receiving bank reversed the transfer.
            CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
              :customer_advised_unauthorized_improper_ineligible_or_incomplete

            # Code R19. The amount field is incorrect or too large.
            AMOUNT_FIELD_ERROR = :amount_field_error

            # Code R07. The customer at the receiving institution informed their bank that they have revoked authorization for a previously authorized transfer.
            AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

            # Code R13. The routing number is invalid.
            INVALID_ACH_ROUTING_NUMBER = :invalid_ach_routing_number

            # Code R17. The receiving bank is unable to process a field in the transfer.
            FILE_RECORD_EDIT_CRITERIA = :file_record_edit_criteria

            # Code R45. The individual name field was invalid.
            ENR_INVALID_INDIVIDUAL_NAME = :enr_invalid_individual_name

            # Code R06. The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
            RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

            # Code R34. The receiving bank's regulatory supervisor has limited their participation in the ACH network.
            LIMITED_PARTICIPATION_DFI = :limited_participation_dfi

            # Code R85. The outbound international ACH transfer was incorrect.
            INCORRECTLY_CODED_OUTBOUND_INTERNATIONAL_PAYMENT = :incorrectly_coded_outbound_international_payment

            # Code R12. A rare return reason. The account was sold to another bank.
            ACCOUNT_SOLD_TO_ANOTHER_DFI = :account_sold_to_another_dfi

            # Code R25. The addenda record is incorrect or missing.
            ADDENDA_ERROR = :addenda_error

            # Code R15. A rare return reason. The account holder is deceased.
            BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

            # Code R11. A rare return reason. The customer authorized some payment to the sender, but this payment was not in error.
            CUSTOMER_ADVISED_NOT_WITHIN_AUTHORIZATION_TERMS = :customer_advised_not_within_authorization_terms

            # Code R74. A rare return reason. Sent in response to a return that was returned with code `field_error`. The latest return should include the corrected field(s).
            CORRECTED_RETURN = :corrected_return

            # Code R24. A rare return reason. The receiving bank received an exact duplicate entry with the same trace number and amount.
            DUPLICATE_ENTRY = :duplicate_entry

            # Code R67. A rare return reason. The return this message refers to was a duplicate.
            DUPLICATE_RETURN = :duplicate_return

            # Code R47. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_DUPLICATE_ENROLLMENT = :enr_duplicate_enrollment

            # Code R43. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_INVALID_DFI_ACCOUNT_NUMBER = :enr_invalid_dfi_account_number

            # Code R44. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_INVALID_INDIVIDUAL_ID_NUMBER = :enr_invalid_individual_id_number

            # Code R46. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_INVALID_REPRESENTATIVE_PAYEE_INDICATOR = :enr_invalid_representative_payee_indicator

            # Code R41. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_INVALID_TRANSACTION_CODE = :enr_invalid_transaction_code

            # Code R40. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_RETURN_OF_ENR_ENTRY = :enr_return_of_enr_entry

            # Code R42. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_ROUTING_NUMBER_CHECK_DIGIT_ERROR = :enr_routing_number_check_digit_error

            # Code R84. A rare return reason. The International ACH Transfer cannot be processed by the gateway.
            ENTRY_NOT_PROCESSED_BY_GATEWAY = :entry_not_processed_by_gateway

            # Code R69. A rare return reason. One or more of the fields in the ACH were malformed.
            FIELD_ERROR = :field_error

            # Code R83. A rare return reason. The Foreign receiving bank was unable to settle this ACH transfer.
            FOREIGN_RECEIVING_DFI_UNABLE_TO_SETTLE = :foreign_receiving_dfi_unable_to_settle

            # Code R80. A rare return reason. The International ACH Transfer is malformed.
            IAT_ENTRY_CODING_ERROR = :iat_entry_coding_error

            # Code R18. A rare return reason. The ACH has an improper effective entry date field.
            IMPROPER_EFFECTIVE_ENTRY_DATE = :improper_effective_entry_date

            # Code R39. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
            IMPROPER_SOURCE_DOCUMENT_SOURCE_DOCUMENT_PRESENTED = :improper_source_document_source_document_presented

            # Code R21. A rare return reason. The Company ID field of the ACH was invalid.
            INVALID_COMPANY_ID = :invalid_company_id

            # Code R82. A rare return reason. The foreign receiving bank identifier for an International ACH Transfer was invalid.
            INVALID_FOREIGN_RECEIVING_DFI_IDENTIFICATION = :invalid_foreign_receiving_dfi_identification

            # Code R22. A rare return reason. The Individual ID number field of the ACH was invalid.
            INVALID_INDIVIDUAL_ID_NUMBER = :invalid_individual_id_number

            # Code R53. A rare return reason. Both the Represented Check ("RCK") entry and the original check were presented to the bank.
            ITEM_AND_RCK_ENTRY_PRESENTED_FOR_PAYMENT = :item_and_rck_entry_presented_for_payment

            # Code R51. A rare return reason. The Represented Check ("RCK") entry is ineligible.
            ITEM_RELATED_TO_RCK_ENTRY_IS_INELIGIBLE = :item_related_to_rck_entry_is_ineligible

            # Code R26. A rare return reason. The ACH is missing a required field.
            MANDATORY_FIELD_ERROR = :mandatory_field_error

            # Code R71. A rare return reason. The receiving bank does not recognize the routing number in a dishonored return entry.
            MISROUTED_DISHONORED_RETURN = :misrouted_dishonored_return

            # Code R61. A rare return reason. The receiving bank does not recognize the routing number in a return entry.
            MISROUTED_RETURN = :misrouted_return

            # Code R76. A rare return reason. Sent in response to a return, the bank does not find the errors alleged by the returning bank.
            NO_ERRORS_FOUND = :no_errors_found

            # Code R77. A rare return reason. The receiving bank does not accept the return of the erroneous debit. The funds are not available at the receiving bank.
            NON_ACCEPTANCE_OF_R62_DISHONORED_RETURN = :non_acceptance_of_r62_dishonored_return

            # Code R81. A rare return reason. The receiving bank does not accept International ACH Transfers.
            NON_PARTICIPANT_IN_IAT_PROGRAM = :non_participant_in_iat_program

            # Code R31. A rare return reason. A return that has been agreed to be accepted by the receiving bank, despite falling outside of the usual return timeframe.
            PERMISSIBLE_RETURN_ENTRY = :permissible_return_entry

            # Code R70. A rare return reason. The receiving bank had not approved this return.
            PERMISSIBLE_RETURN_ENTRY_NOT_ACCEPTED = :permissible_return_entry_not_accepted

            # Code R32. A rare return reason. The receiving bank could not settle this transaction.
            RDFI_NON_SETTLEMENT = :rdfi_non_settlement

            # Code R30. A rare return reason. The receiving bank does not accept Check Truncation ACH transfers.
            RDFI_PARTICIPANT_IN_CHECK_TRUNCATION_PROGRAM = :rdfi_participant_in_check_truncation_program

            # Code R14. A rare return reason. The payee is deceased.
            REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
              :representative_payee_deceased_or_unable_to_continue_in_that_capacity

            # Code R75. A rare return reason. The originating bank disputes that an earlier `duplicate_entry` return was actually a duplicate.
            RETURN_NOT_A_DUPLICATE = :return_not_a_duplicate

            # Code R62. A rare return reason. The originating financial institution made a mistake and this return corrects it.
            RETURN_OF_ERRONEOUS_OR_REVERSING_DEBIT = :return_of_erroneous_or_reversing_debit

            # Code R36. A rare return reason. Return of a malformed credit entry.
            RETURN_OF_IMPROPER_CREDIT_ENTRY = :return_of_improper_credit_entry

            # Code R35. A rare return reason. Return of a malformed debit entry.
            RETURN_OF_IMPROPER_DEBIT_ENTRY = :return_of_improper_debit_entry

            # Code R33. A rare return reason. Return of a Destroyed Check ("XKC") entry.
            RETURN_OF_XCK_ENTRY = :return_of_xck_entry

            # Code R37. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
            SOURCE_DOCUMENT_PRESENTED_FOR_PAYMENT = :source_document_presented_for_payment

            # Code R50. A rare return reason. State law prevents the bank from accepting the Represented Check ("RCK") entry.
            STATE_LAW_AFFECTING_RCK_ACCEPTANCE = :state_law_affecting_rck_acceptance

            # Code R52. A rare return reason. A stop payment was issued on a Represented Check ("RCK") entry.
            STOP_PAYMENT_ON_ITEM_RELATED_TO_RCK_ENTRY = :stop_payment_on_item_related_to_rck_entry

            # Code R38. A rare return reason. The source attached to the ACH, usually an ACH check conversion, includes a stop payment.
            STOP_PAYMENT_ON_SOURCE_DOCUMENT = :stop_payment_on_source_document

            # Code R73. A rare return reason. The bank receiving an `untimely_return` believes it was on time.
            TIMELY_ORIGINAL_RETURN = :timely_original_return

            # Code R27. A rare return reason. An ACH return's trace number does not match an originated ACH.
            TRACE_NUMBER_ERROR = :trace_number_error

            # Code R72. A rare return reason. The dishonored return was sent too late.
            UNTIMELY_DISHONORED_RETURN = :untimely_dishonored_return

            # Code R68. A rare return reason. The return was sent too late.
            UNTIMELY_RETURN = :untimely_return

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::Transaction::Source#card_dispute_acceptance
        class CardDisputeAcceptance < Increase::Internal::Type::BaseModel
          # @!attribute accepted_at
          #   #/components/schemas/transaction/properties/source/properties/card_dispute_acceptance/anyOf/0/properties/accepted_at
          #
          #   @return [Time]
          required :accepted_at, Time

          # @!attribute card_dispute_id
          #   #/components/schemas/transaction/properties/source/properties/card_dispute_acceptance/anyOf/0/properties/card_dispute_id
          #
          #   @return [String]
          required :card_dispute_id, String

          # @!attribute transaction_id
          #   #/components/schemas/transaction/properties/source/properties/card_dispute_acceptance/anyOf/0/properties/transaction_id
          #
          #   @return [String]
          required :transaction_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/card_dispute_acceptance
          #   #
          #   # @param accepted_at [Time]
          #   # @param card_dispute_id [String]
          #   # @param transaction_id [String]
          #   #
          #   def initialize(accepted_at:, card_dispute_id:, transaction_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#card_dispute_loss
        class CardDisputeLoss < Increase::Internal::Type::BaseModel
          # @!attribute card_dispute_id
          #   #/components/schemas/transaction/properties/source/properties/card_dispute_loss/anyOf/0/properties/card_dispute_id
          #
          #   @return [String]
          required :card_dispute_id, String

          # @!attribute explanation
          #   #/components/schemas/transaction/properties/source/properties/card_dispute_loss/anyOf/0/properties/explanation
          #
          #   @return [String]
          required :explanation, String

          # @!attribute lost_at
          #   #/components/schemas/transaction/properties/source/properties/card_dispute_loss/anyOf/0/properties/lost_at
          #
          #   @return [Time]
          required :lost_at, Time

          # @!attribute transaction_id
          #   #/components/schemas/transaction/properties/source/properties/card_dispute_loss/anyOf/0/properties/transaction_id
          #
          #   @return [String]
          required :transaction_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/card_dispute_loss
          #   #
          #   # @param card_dispute_id [String]
          #   # @param explanation [String]
          #   # @param lost_at [Time]
          #   # @param transaction_id [String]
          #   #
          #   def initialize(card_dispute_id:, explanation:, lost_at:, transaction_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#card_refund
        class CardRefund < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_refund/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   #/components/schemas/card_refund/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_payment_id
          #   #/components/schemas/card_refund/properties/card_payment_id
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute cashback
          #   #/components/schemas/card_refund/properties/cashback
          #
          #   @return [Increase::Models::Transaction::Source::CardRefund::Cashback, nil]
          required :cashback, -> { Increase::Models::Transaction::Source::CardRefund::Cashback }, nil?: true

          # @!attribute currency
          #   #/components/schemas/card_refund/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CardRefund::Currency }

          # @!attribute interchange
          #   #/components/schemas/card_refund/properties/interchange
          #
          #   @return [Increase::Models::Transaction::Source::CardRefund::Interchange, nil]
          required :interchange, -> { Increase::Models::Transaction::Source::CardRefund::Interchange }, nil?: true

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/card_refund/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/card_refund/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   #/components/schemas/card_refund/properties/merchant_city
          #
          #   @return [String]
          required :merchant_city, String

          # @!attribute merchant_country
          #   #/components/schemas/card_refund/properties/merchant_country
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_name
          #   #/components/schemas/card_refund/properties/merchant_name
          #
          #   @return [String]
          required :merchant_name, String

          # @!attribute merchant_postal_code
          #   #/components/schemas/card_refund/properties/merchant_postal_code
          #
          #   @return [String, nil]
          required :merchant_postal_code, String, nil?: true

          # @!attribute merchant_state
          #   #/components/schemas/card_refund/properties/merchant_state
          #
          #   @return [String, nil]
          required :merchant_state, String, nil?: true

          # @!attribute network_identifiers
          #   #/components/schemas/card_refund/properties/network_identifiers
          #
          #   @return [Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers }

          # @!attribute presentment_amount
          #   #/components/schemas/card_refund/properties/presentment_amount
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   #/components/schemas/card_refund/properties/presentment_currency
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute purchase_details
          #   #/components/schemas/card_refund/properties/purchase_details
          #
          #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails, nil]
          required :purchase_details,
                   -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails },
                   nil?: true

          # @!attribute transaction_id
          #   #/components/schemas/card_refund/properties/transaction_id
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute type
          #   #/components/schemas/card_refund/properties/type
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Type]
          required :type, enum: -> { Increase::Models::Transaction::Source::CardRefund::Type }

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/card_refund
          #   #
          #   # @param id [String]
          #   # @param amount [Integer]
          #   # @param card_payment_id [String]
          #   # @param cashback [Increase::Models::Transaction::Source::CardRefund::Cashback, nil]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::CardRefund::Currency]
          #   # @param interchange [Increase::Models::Transaction::Source::CardRefund::Interchange, nil]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_city [String]
          #   # @param merchant_country [String]
          #   # @param merchant_name [String]
          #   # @param merchant_postal_code [String, nil]
          #   # @param merchant_state [String, nil]
          #   # @param network_identifiers [Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers]
          #   # @param presentment_amount [Integer]
          #   # @param presentment_currency [String]
          #   # @param purchase_details [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails, nil]
          #   # @param transaction_id [String]
          #   # @param type [Symbol, Increase::Models::Transaction::Source::CardRefund::Type]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     card_payment_id:,
          #     cashback:,
          #     currency:,
          #     interchange:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_city:,
          #     merchant_country:,
          #     merchant_name:,
          #     merchant_postal_code:,
          #     merchant_state:,
          #     network_identifiers:,
          #     presentment_amount:,
          #     presentment_currency:,
          #     purchase_details:,
          #     transaction_id:,
          #     type:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::Transaction::Source::CardRefund#cashback
          class Cashback < Increase::Internal::Type::BaseModel
            # @!attribute amount
            #   #/components/schemas/card_refund/properties/cashback/anyOf/0/properties/amount
            #
            #   @return [String]
            required :amount, String

            # @!attribute currency
            #   #/components/schemas/card_refund/properties/cashback/anyOf/0/properties/currency
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency]
            required :currency, enum: -> { Increase::Models::Transaction::Source::CardRefund::Cashback::Currency }

            # @!parse
            #   # #/components/schemas/card_refund/properties/cashback
            #   #
            #   # @param amount [String]
            #   # @param currency [Symbol, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency]
            #   #
            #   def initialize(amount:, currency:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_refund/properties/cashback/anyOf/0/properties/currency
            #
            # @see Increase::Models::Transaction::Source::CardRefund::Cashback#currency
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
          end

          # #/components/schemas/card_refund/properties/currency
          #
          # @see Increase::Models::Transaction::Source::CardRefund#currency
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

          # @see Increase::Models::Transaction::Source::CardRefund#interchange
          class Interchange < Increase::Internal::Type::BaseModel
            # @!attribute amount
            #   #/components/schemas/card_refund/properties/interchange/anyOf/0/properties/amount
            #
            #   @return [String]
            required :amount, String

            # @!attribute code
            #   #/components/schemas/card_refund/properties/interchange/anyOf/0/properties/code
            #
            #   @return [String, nil]
            required :code, String, nil?: true

            # @!attribute currency
            #   #/components/schemas/card_refund/properties/interchange/anyOf/0/properties/currency
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency]
            required :currency, enum: -> { Increase::Models::Transaction::Source::CardRefund::Interchange::Currency }

            # @!parse
            #   # #/components/schemas/card_refund/properties/interchange
            #   #
            #   # @param amount [String]
            #   # @param code [String, nil]
            #   # @param currency [Symbol, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency]
            #   #
            #   def initialize(amount:, code:, currency:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_refund/properties/interchange/anyOf/0/properties/currency
            #
            # @see Increase::Models::Transaction::Source::CardRefund::Interchange#currency
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
          end

          # @see Increase::Models::Transaction::Source::CardRefund#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute acquirer_business_id
            #   #/components/schemas/card_refund/properties/network_identifiers/properties/acquirer_business_id
            #
            #   @return [String]
            required :acquirer_business_id, String

            # @!attribute acquirer_reference_number
            #   #/components/schemas/card_refund/properties/network_identifiers/properties/acquirer_reference_number
            #
            #   @return [String]
            required :acquirer_reference_number, String

            # @!attribute transaction_id
            #   #/components/schemas/card_refund/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_refund/properties/network_identifiers
            #   #
            #   # @param acquirer_business_id [String]
            #   # @param acquirer_reference_number [String]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(acquirer_business_id:, acquirer_reference_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # @see Increase::Models::Transaction::Source::CardRefund#purchase_details
          class PurchaseDetails < Increase::Internal::Type::BaseModel
            # @!attribute car_rental
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental
            #
            #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental, nil]
            required :car_rental,
                     -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental },
                     nil?: true

            # @!attribute customer_reference_identifier
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/customer_reference_identifier
            #
            #   @return [String, nil]
            required :customer_reference_identifier, String, nil?: true

            # @!attribute local_tax_amount
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/local_tax_amount
            #
            #   @return [Integer, nil]
            required :local_tax_amount, Integer, nil?: true

            # @!attribute local_tax_currency
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/local_tax_currency
            #
            #   @return [String, nil]
            required :local_tax_currency, String, nil?: true

            # @!attribute lodging
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging
            #
            #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging, nil]
            required :lodging,
                     -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging },
                     nil?: true

            # @!attribute national_tax_amount
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/national_tax_amount
            #
            #   @return [Integer, nil]
            required :national_tax_amount, Integer, nil?: true

            # @!attribute national_tax_currency
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/national_tax_currency
            #
            #   @return [String, nil]
            required :national_tax_currency, String, nil?: true

            # @!attribute purchase_identifier
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/purchase_identifier
            #
            #   @return [String, nil]
            required :purchase_identifier, String, nil?: true

            # @!attribute purchase_identifier_format
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/purchase_identifier_format
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat, nil]
            required :purchase_identifier_format,
                     enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat },
                     nil?: true

            # @!attribute travel
            #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel
            #
            #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel, nil]
            required :travel,
                     -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel },
                     nil?: true

            # @!parse
            #   # #/components/schemas/card_refund/properties/purchase_details
            #   #
            #   # @param car_rental [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental, nil]
            #   # @param customer_reference_identifier [String, nil]
            #   # @param local_tax_amount [Integer, nil]
            #   # @param local_tax_currency [String, nil]
            #   # @param lodging [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging, nil]
            #   # @param national_tax_amount [Integer, nil]
            #   # @param national_tax_currency [String, nil]
            #   # @param purchase_identifier [String, nil]
            #   # @param purchase_identifier_format [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat, nil]
            #   # @param travel [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel, nil]
            #   #
            #   def initialize(
            #     car_rental:,
            #     customer_reference_identifier:,
            #     local_tax_amount:,
            #     local_tax_currency:,
            #     lodging:,
            #     national_tax_amount:,
            #     national_tax_currency:,
            #     purchase_identifier:,
            #     purchase_identifier_format:,
            #     travel:,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails#car_rental
            class CarRental < Increase::Internal::Type::BaseModel
              # @!attribute car_class_code
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/car_class_code
              #
              #   @return [String, nil]
              required :car_class_code, String, nil?: true

              # @!attribute checkout_date
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/checkout_date
              #
              #   @return [Date, nil]
              required :checkout_date, Date, nil?: true

              # @!attribute daily_rental_rate_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/daily_rental_rate_amount
              #
              #   @return [Integer, nil]
              required :daily_rental_rate_amount, Integer, nil?: true

              # @!attribute daily_rental_rate_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/daily_rental_rate_currency
              #
              #   @return [String, nil]
              required :daily_rental_rate_currency, String, nil?: true

              # @!attribute days_rented
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/days_rented
              #
              #   @return [Integer, nil]
              required :days_rented, Integer, nil?: true

              # @!attribute extra_charges
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/extra_charges
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges },
                       nil?: true

              # @!attribute fuel_charges_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/fuel_charges_amount
              #
              #   @return [Integer, nil]
              required :fuel_charges_amount, Integer, nil?: true

              # @!attribute fuel_charges_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/fuel_charges_currency
              #
              #   @return [String, nil]
              required :fuel_charges_currency, String, nil?: true

              # @!attribute insurance_charges_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/insurance_charges_amount
              #
              #   @return [Integer, nil]
              required :insurance_charges_amount, Integer, nil?: true

              # @!attribute insurance_charges_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/insurance_charges_currency
              #
              #   @return [String, nil]
              required :insurance_charges_currency, String, nil?: true

              # @!attribute no_show_indicator
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/no_show_indicator
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator },
                       nil?: true

              # @!attribute one_way_drop_off_charges_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/one_way_drop_off_charges_amount
              #
              #   @return [Integer, nil]
              required :one_way_drop_off_charges_amount, Integer, nil?: true

              # @!attribute one_way_drop_off_charges_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/one_way_drop_off_charges_currency
              #
              #   @return [String, nil]
              required :one_way_drop_off_charges_currency, String, nil?: true

              # @!attribute renter_name
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/renter_name
              #
              #   @return [String, nil]
              required :renter_name, String, nil?: true

              # @!attribute weekly_rental_rate_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/weekly_rental_rate_amount
              #
              #   @return [Integer, nil]
              required :weekly_rental_rate_amount, Integer, nil?: true

              # @!attribute weekly_rental_rate_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/weekly_rental_rate_currency
              #
              #   @return [String, nil]
              required :weekly_rental_rate_currency, String, nil?: true

              # @!parse
              #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental
              #   #
              #   # @param car_class_code [String, nil]
              #   # @param checkout_date [Date, nil]
              #   # @param daily_rental_rate_amount [Integer, nil]
              #   # @param daily_rental_rate_currency [String, nil]
              #   # @param days_rented [Integer, nil]
              #   # @param extra_charges [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges, nil]
              #   # @param fuel_charges_amount [Integer, nil]
              #   # @param fuel_charges_currency [String, nil]
              #   # @param insurance_charges_amount [Integer, nil]
              #   # @param insurance_charges_currency [String, nil]
              #   # @param no_show_indicator [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator, nil]
              #   # @param one_way_drop_off_charges_amount [Integer, nil]
              #   # @param one_way_drop_off_charges_currency [String, nil]
              #   # @param renter_name [String, nil]
              #   # @param weekly_rental_rate_amount [Integer, nil]
              #   # @param weekly_rental_rate_currency [String, nil]
              #   #
              #   def initialize(
              #     car_class_code:,
              #     checkout_date:,
              #     daily_rental_rate_amount:,
              #     daily_rental_rate_currency:,
              #     days_rented:,
              #     extra_charges:,
              #     fuel_charges_amount:,
              #     fuel_charges_currency:,
              #     insurance_charges_amount:,
              #     insurance_charges_currency:,
              #     no_show_indicator:,
              #     one_way_drop_off_charges_amount:,
              #     one_way_drop_off_charges_currency:,
              #     renter_name:,
              #     weekly_rental_rate_amount:,
              #     weekly_rental_rate_currency:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/extra_charges
              #
              # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental#extra_charges
              module ExtraCharges
                extend Increase::Internal::Type::Enum

                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Gas
                GAS = :gas

                # Extra mileage
                EXTRA_MILEAGE = :extra_mileage

                # Late return
                LATE_RETURN = :late_return

                # One way service fee
                ONE_WAY_SERVICE_FEE = :one_way_service_fee

                # Parking violation
                PARKING_VIOLATION = :parking_violation

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/no_show_indicator
              #
              # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental#no_show_indicator
              module NoShowIndicator
                extend Increase::Internal::Type::Enum

                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = :no_show_for_specialized_vehicle

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails#lodging
            class Lodging < Increase::Internal::Type::BaseModel
              # @!attribute check_in_date
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/check_in_date
              #
              #   @return [Date, nil]
              required :check_in_date, Date, nil?: true

              # @!attribute daily_room_rate_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/daily_room_rate_amount
              #
              #   @return [Integer, nil]
              required :daily_room_rate_amount, Integer, nil?: true

              # @!attribute daily_room_rate_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/daily_room_rate_currency
              #
              #   @return [String, nil]
              required :daily_room_rate_currency, String, nil?: true

              # @!attribute extra_charges
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/extra_charges
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges },
                       nil?: true

              # @!attribute folio_cash_advances_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/folio_cash_advances_amount
              #
              #   @return [Integer, nil]
              required :folio_cash_advances_amount, Integer, nil?: true

              # @!attribute folio_cash_advances_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/folio_cash_advances_currency
              #
              #   @return [String, nil]
              required :folio_cash_advances_currency, String, nil?: true

              # @!attribute food_beverage_charges_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/food_beverage_charges_amount
              #
              #   @return [Integer, nil]
              required :food_beverage_charges_amount, Integer, nil?: true

              # @!attribute food_beverage_charges_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/food_beverage_charges_currency
              #
              #   @return [String, nil]
              required :food_beverage_charges_currency, String, nil?: true

              # @!attribute no_show_indicator
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/no_show_indicator
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator },
                       nil?: true

              # @!attribute prepaid_expenses_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/prepaid_expenses_amount
              #
              #   @return [Integer, nil]
              required :prepaid_expenses_amount, Integer, nil?: true

              # @!attribute prepaid_expenses_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/prepaid_expenses_currency
              #
              #   @return [String, nil]
              required :prepaid_expenses_currency, String, nil?: true

              # @!attribute room_nights
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/room_nights
              #
              #   @return [Integer, nil]
              required :room_nights, Integer, nil?: true

              # @!attribute total_room_tax_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_room_tax_amount
              #
              #   @return [Integer, nil]
              required :total_room_tax_amount, Integer, nil?: true

              # @!attribute total_room_tax_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_room_tax_currency
              #
              #   @return [String, nil]
              required :total_room_tax_currency, String, nil?: true

              # @!attribute total_tax_amount
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_tax_amount
              #
              #   @return [Integer, nil]
              required :total_tax_amount, Integer, nil?: true

              # @!attribute total_tax_currency
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_tax_currency
              #
              #   @return [String, nil]
              required :total_tax_currency, String, nil?: true

              # @!parse
              #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging
              #   #
              #   # @param check_in_date [Date, nil]
              #   # @param daily_room_rate_amount [Integer, nil]
              #   # @param daily_room_rate_currency [String, nil]
              #   # @param extra_charges [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges, nil]
              #   # @param folio_cash_advances_amount [Integer, nil]
              #   # @param folio_cash_advances_currency [String, nil]
              #   # @param food_beverage_charges_amount [Integer, nil]
              #   # @param food_beverage_charges_currency [String, nil]
              #   # @param no_show_indicator [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator, nil]
              #   # @param prepaid_expenses_amount [Integer, nil]
              #   # @param prepaid_expenses_currency [String, nil]
              #   # @param room_nights [Integer, nil]
              #   # @param total_room_tax_amount [Integer, nil]
              #   # @param total_room_tax_currency [String, nil]
              #   # @param total_tax_amount [Integer, nil]
              #   # @param total_tax_currency [String, nil]
              #   #
              #   def initialize(
              #     check_in_date:,
              #     daily_room_rate_amount:,
              #     daily_room_rate_currency:,
              #     extra_charges:,
              #     folio_cash_advances_amount:,
              #     folio_cash_advances_currency:,
              #     food_beverage_charges_amount:,
              #     food_beverage_charges_currency:,
              #     no_show_indicator:,
              #     prepaid_expenses_amount:,
              #     prepaid_expenses_currency:,
              #     room_nights:,
              #     total_room_tax_amount:,
              #     total_room_tax_currency:,
              #     total_tax_amount:,
              #     total_tax_currency:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/extra_charges
              #
              # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging#extra_charges
              module ExtraCharges
                extend Increase::Internal::Type::Enum

                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Restaurant
                RESTAURANT = :restaurant

                # Gift shop
                GIFT_SHOP = :gift_shop

                # Mini bar
                MINI_BAR = :mini_bar

                # Telephone
                TELEPHONE = :telephone

                # Other
                OTHER = :other

                # Laundry
                LAUNDRY = :laundry

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/no_show_indicator
              #
              # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging#no_show_indicator
              module NoShowIndicator
                extend Increase::Internal::Type::Enum

                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show
                NO_SHOW = :no_show

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/purchase_identifier_format
            #
            # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails#purchase_identifier_format
            module PurchaseIdentifierFormat
              extend Increase::Internal::Type::Enum

              # Free text
              FREE_TEXT = :free_text

              # Order number
              ORDER_NUMBER = :order_number

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = :rental_agreement_number

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = :hotel_folio_number

              # Invoice number
              INVOICE_NUMBER = :invoice_number

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails#travel
            class Travel < Increase::Internal::Type::BaseModel
              # @!attribute ancillary
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary
              #
              #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary, nil]
              required :ancillary,
                       -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary },
                       nil?: true

              # @!attribute computerized_reservation_system
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/computerized_reservation_system
              #
              #   @return [String, nil]
              required :computerized_reservation_system, String, nil?: true

              # @!attribute credit_reason_indicator
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/credit_reason_indicator
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator, nil]
              required :credit_reason_indicator,
                       enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator },
                       nil?: true

              # @!attribute departure_date
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/departure_date
              #
              #   @return [Date, nil]
              required :departure_date, Date, nil?: true

              # @!attribute origination_city_airport_code
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/origination_city_airport_code
              #
              #   @return [String, nil]
              required :origination_city_airport_code, String, nil?: true

              # @!attribute passenger_name
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/passenger_name
              #
              #   @return [String, nil]
              required :passenger_name, String, nil?: true

              # @!attribute restricted_ticket_indicator
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/restricted_ticket_indicator
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator, nil]
              required :restricted_ticket_indicator,
                       enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator },
                       nil?: true

              # @!attribute ticket_change_indicator
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_change_indicator
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator, nil]
              required :ticket_change_indicator,
                       enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator },
                       nil?: true

              # @!attribute ticket_number
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_number
              #
              #   @return [String, nil]
              required :ticket_number, String, nil?: true

              # @!attribute travel_agency_code
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/travel_agency_code
              #
              #   @return [String, nil]
              required :travel_agency_code, String, nil?: true

              # @!attribute travel_agency_name
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/travel_agency_name
              #
              #   @return [String, nil]
              required :travel_agency_name, String, nil?: true

              # @!attribute trip_legs
              #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs
              #
              #   @return [Array<Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg>, nil]
              required :trip_legs,
                       -> { Increase::Internal::Type::ArrayOf[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg] },
                       nil?: true

              # @!parse
              #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel
              #   #
              #   # @param ancillary [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary, nil]
              #   # @param computerized_reservation_system [String, nil]
              #   # @param credit_reason_indicator [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator, nil]
              #   # @param departure_date [Date, nil]
              #   # @param origination_city_airport_code [String, nil]
              #   # @param passenger_name [String, nil]
              #   # @param restricted_ticket_indicator [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator, nil]
              #   # @param ticket_change_indicator [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator, nil]
              #   # @param ticket_number [String, nil]
              #   # @param travel_agency_code [String, nil]
              #   # @param travel_agency_name [String, nil]
              #   # @param trip_legs [Array<Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg>, nil]
              #   #
              #   def initialize(
              #     ancillary:,
              #     computerized_reservation_system:,
              #     credit_reason_indicator:,
              #     departure_date:,
              #     origination_city_airport_code:,
              #     passenger_name:,
              #     restricted_ticket_indicator:,
              #     ticket_change_indicator:,
              #     ticket_number:,
              #     travel_agency_code:,
              #     travel_agency_name:,
              #     trip_legs:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel#ancillary
              class Ancillary < Increase::Internal::Type::BaseModel
                # @!attribute connected_ticket_document_number
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/connected_ticket_document_number
                #
                #   @return [String, nil]
                required :connected_ticket_document_number, String, nil?: true

                # @!attribute credit_reason_indicator
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/credit_reason_indicator
                #
                #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator, nil]
                required :credit_reason_indicator,
                         enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator },
                         nil?: true

                # @!attribute passenger_name_or_description
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/passenger_name_or_description
                #
                #   @return [String, nil]
                required :passenger_name_or_description, String, nil?: true

                # @!attribute services
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services
                #
                #   @return [Array<Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         -> { Increase::Internal::Type::ArrayOf[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service] }

                # @!attribute ticket_document_number
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/ticket_document_number
                #
                #   @return [String, nil]
                required :ticket_document_number, String, nil?: true

                # @!parse
                #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary
                #   #
                #   # @param connected_ticket_document_number [String, nil]
                #   # @param credit_reason_indicator [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator, nil]
                #   # @param passenger_name_or_description [String, nil]
                #   # @param services [Array<Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service>]
                #   # @param ticket_document_number [String, nil]
                #   #
                #   def initialize(
                #     connected_ticket_document_number:,
                #     credit_reason_indicator:,
                #     passenger_name_or_description:,
                #     services:,
                #     ticket_document_number:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/credit_reason_indicator
                #
                # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary#credit_reason_indicator
                module CreditReasonIndicator
                  extend Increase::Internal::Type::Enum

                  # No credit
                  NO_CREDIT = :no_credit

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    :passenger_transport_ancillary_purchase_cancellation

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                  # Other
                  OTHER = :other

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end

                class Service < Increase::Internal::Type::BaseModel
                  # @!attribute category
                  #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/category
                  #
                  #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category, nil]
                  required :category,
                           enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category },
                           nil?: true

                  # @!attribute sub_category
                  #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/sub_category
                  #
                  #   @return [String, nil]
                  required :sub_category, String, nil?: true

                  # @!parse
                  #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items
                  #   #
                  #   # @param category [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category, nil]
                  #   # @param sub_category [String, nil]
                  #   #
                  #   def initialize(category:, sub_category:, **) = super

                  # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                  # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/category
                  #
                  # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service#category
                  module Category
                    extend Increase::Internal::Type::Enum

                    # None
                    NONE = :none

                    # Bundled service
                    BUNDLED_SERVICE = :bundled_service

                    # Baggage fee
                    BAGGAGE_FEE = :baggage_fee

                    # Change fee
                    CHANGE_FEE = :change_fee

                    # Cargo
                    CARGO = :cargo

                    # Carbon offset
                    CARBON_OFFSET = :carbon_offset

                    # Frequent flyer
                    FREQUENT_FLYER = :frequent_flyer

                    # Gift card
                    GIFT_CARD = :gift_card

                    # Ground transport
                    GROUND_TRANSPORT = :ground_transport

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = :in_flight_entertainment

                    # Lounge
                    LOUNGE = :lounge

                    # Medical
                    MEDICAL = :medical

                    # Meal beverage
                    MEAL_BEVERAGE = :meal_beverage

                    # Other
                    OTHER = :other

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = :passenger_assist_fee

                    # Pets
                    PETS = :pets

                    # Seat fees
                    SEAT_FEES = :seat_fees

                    # Standby
                    STANDBY = :standby

                    # Service fee
                    SERVICE_FEE = :service_fee

                    # Store
                    STORE = :store

                    # Travel service
                    TRAVEL_SERVICE = :travel_service

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = :unaccompanied_travel

                    # Upgrades
                    UPGRADES = :upgrades

                    # Wi-fi
                    WIFI = :wifi

                    finalize!

                    # @!parse
                    #   # @return [Array<Symbol>]
                    #   def self.values; end
                  end
                end
              end

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/credit_reason_indicator
              #
              # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel#credit_reason_indicator
              module CreditReasonIndicator
                extend Increase::Internal::Type::Enum

                # No credit
                NO_CREDIT = :no_credit

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  :passenger_transport_ancillary_purchase_cancellation

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = :airline_ticket_cancellation

                # Other
                OTHER = :other

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = :partial_refund_of_airline_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/restricted_ticket_indicator
              #
              # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel#restricted_ticket_indicator
              module RestrictedTicketIndicator
                extend Increase::Internal::Type::Enum

                # No restrictions
                NO_RESTRICTIONS = :no_restrictions

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = :restricted_non_refundable_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_change_indicator
              #
              # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel#ticket_change_indicator
              module TicketChangeIndicator
                extend Increase::Internal::Type::Enum

                # None
                NONE = :none

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = :change_to_existing_ticket

                # New ticket
                NEW_TICKET = :new_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              class TripLeg < Increase::Internal::Type::BaseModel
                # @!attribute carrier_code
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/carrier_code
                #
                #   @return [String, nil]
                required :carrier_code, String, nil?: true

                # @!attribute destination_city_airport_code
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/destination_city_airport_code
                #
                #   @return [String, nil]
                required :destination_city_airport_code, String, nil?: true

                # @!attribute fare_basis_code
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/fare_basis_code
                #
                #   @return [String, nil]
                required :fare_basis_code, String, nil?: true

                # @!attribute flight_number
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/flight_number
                #
                #   @return [String, nil]
                required :flight_number, String, nil?: true

                # @!attribute service_class
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/service_class
                #
                #   @return [String, nil]
                required :service_class, String, nil?: true

                # @!attribute stop_over_code
                #   #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/stop_over_code
                #
                #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode, nil]
                required :stop_over_code,
                         enum: -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode },
                         nil?: true

                # @!parse
                #   # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items
                #   #
                #   # @param carrier_code [String, nil]
                #   # @param destination_city_airport_code [String, nil]
                #   # @param fare_basis_code [String, nil]
                #   # @param flight_number [String, nil]
                #   # @param service_class [String, nil]
                #   # @param stop_over_code [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode, nil]
                #   #
                #   def initialize(
                #     carrier_code:,
                #     destination_city_airport_code:,
                #     fare_basis_code:,
                #     flight_number:,
                #     service_class:,
                #     stop_over_code:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                # #/components/schemas/card_refund/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/stop_over_code
                #
                # @see Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg#stop_over_code
                module StopOverCode
                  extend Increase::Internal::Type::Enum

                  # None
                  NONE = :none

                  # Stop over allowed
                  STOP_OVER_ALLOWED = :stop_over_allowed

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = :stop_over_not_allowed

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end
              end
            end
          end

          # #/components/schemas/card_refund/properties/type
          #
          # @see Increase::Models::Transaction::Source::CardRefund#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_REFUND = :card_refund

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::Transaction::Source#card_revenue_payment
        class CardRevenuePayment < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/card_revenue_payment/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   #/components/schemas/transaction/properties/source/properties/card_revenue_payment/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CardRevenuePayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CardRevenuePayment::Currency }

          # @!attribute period_end
          #   #/components/schemas/transaction/properties/source/properties/card_revenue_payment/anyOf/0/properties/period_end
          #
          #   @return [Time]
          required :period_end, Time

          # @!attribute period_start
          #   #/components/schemas/transaction/properties/source/properties/card_revenue_payment/anyOf/0/properties/period_start
          #
          #   @return [Time]
          required :period_start, Time

          # @!attribute transacted_on_account_id
          #   #/components/schemas/transaction/properties/source/properties/card_revenue_payment/anyOf/0/properties/transacted_on_account_id
          #
          #   @return [String, nil]
          required :transacted_on_account_id, String, nil?: true

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/card_revenue_payment
          #   #
          #   # @param amount [Integer]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::CardRevenuePayment::Currency]
          #   # @param period_end [Time]
          #   # @param period_start [Time]
          #   # @param transacted_on_account_id [String, nil]
          #   #
          #   def initialize(amount:, currency:, period_end:, period_start:, transacted_on_account_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/card_revenue_payment/anyOf/0/properties/currency
          #
          # @see Increase::Models::Transaction::Source::CardRevenuePayment#currency
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
        end

        # @see Increase::Models::Transaction::Source#card_settlement
        class CardSettlement < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/card_settlement/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   #/components/schemas/card_settlement/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_authorization
          #   #/components/schemas/card_settlement/properties/card_authorization
          #
          #   @return [String, nil]
          required :card_authorization, String, nil?: true

          # @!attribute card_payment_id
          #   #/components/schemas/card_settlement/properties/card_payment_id
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute cashback
          #   #/components/schemas/card_settlement/properties/cashback
          #
          #   @return [Increase::Models::Transaction::Source::CardSettlement::Cashback, nil]
          required :cashback, -> { Increase::Models::Transaction::Source::CardSettlement::Cashback }, nil?: true

          # @!attribute currency
          #   #/components/schemas/card_settlement/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CardSettlement::Currency }

          # @!attribute interchange
          #   #/components/schemas/card_settlement/properties/interchange
          #
          #   @return [Increase::Models::Transaction::Source::CardSettlement::Interchange, nil]
          required :interchange,
                   -> { Increase::Models::Transaction::Source::CardSettlement::Interchange },
                   nil?: true

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/card_settlement/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/card_settlement/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   #/components/schemas/card_settlement/properties/merchant_city
          #
          #   @return [String]
          required :merchant_city, String

          # @!attribute merchant_country
          #   #/components/schemas/card_settlement/properties/merchant_country
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_name
          #   #/components/schemas/card_settlement/properties/merchant_name
          #
          #   @return [String]
          required :merchant_name, String

          # @!attribute merchant_postal_code
          #   #/components/schemas/card_settlement/properties/merchant_postal_code
          #
          #   @return [String, nil]
          required :merchant_postal_code, String, nil?: true

          # @!attribute merchant_state
          #   #/components/schemas/card_settlement/properties/merchant_state
          #
          #   @return [String, nil]
          required :merchant_state, String, nil?: true

          # @!attribute network_identifiers
          #   #/components/schemas/card_settlement/properties/network_identifiers
          #
          #   @return [Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers }

          # @!attribute pending_transaction_id
          #   #/components/schemas/card_settlement/properties/pending_transaction_id
          #
          #   @return [String, nil]
          required :pending_transaction_id, String, nil?: true

          # @!attribute presentment_amount
          #   #/components/schemas/card_settlement/properties/presentment_amount
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   #/components/schemas/card_settlement/properties/presentment_currency
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute purchase_details
          #   #/components/schemas/card_settlement/properties/purchase_details
          #
          #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails, nil]
          required :purchase_details,
                   -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails },
                   nil?: true

          # @!attribute transaction_id
          #   #/components/schemas/card_settlement/properties/transaction_id
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute type
          #   #/components/schemas/card_settlement/properties/type
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Type]
          required :type, enum: -> { Increase::Models::Transaction::Source::CardSettlement::Type }

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/card_settlement
          #   #
          #   # @param id [String]
          #   # @param amount [Integer]
          #   # @param card_authorization [String, nil]
          #   # @param card_payment_id [String]
          #   # @param cashback [Increase::Models::Transaction::Source::CardSettlement::Cashback, nil]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::CardSettlement::Currency]
          #   # @param interchange [Increase::Models::Transaction::Source::CardSettlement::Interchange, nil]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_city [String]
          #   # @param merchant_country [String]
          #   # @param merchant_name [String]
          #   # @param merchant_postal_code [String, nil]
          #   # @param merchant_state [String, nil]
          #   # @param network_identifiers [Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers]
          #   # @param pending_transaction_id [String, nil]
          #   # @param presentment_amount [Integer]
          #   # @param presentment_currency [String]
          #   # @param purchase_details [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails, nil]
          #   # @param transaction_id [String]
          #   # @param type [Symbol, Increase::Models::Transaction::Source::CardSettlement::Type]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     card_authorization:,
          #     card_payment_id:,
          #     cashback:,
          #     currency:,
          #     interchange:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_city:,
          #     merchant_country:,
          #     merchant_name:,
          #     merchant_postal_code:,
          #     merchant_state:,
          #     network_identifiers:,
          #     pending_transaction_id:,
          #     presentment_amount:,
          #     presentment_currency:,
          #     purchase_details:,
          #     transaction_id:,
          #     type:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::Transaction::Source::CardSettlement#cashback
          class Cashback < Increase::Internal::Type::BaseModel
            # @!attribute amount
            #   #/components/schemas/card_settlement/properties/cashback/anyOf/0/properties/amount
            #
            #   @return [String]
            required :amount, String

            # @!attribute currency
            #   #/components/schemas/card_settlement/properties/cashback/anyOf/0/properties/currency
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency]
            required :currency, enum: -> { Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency }

            # @!parse
            #   # #/components/schemas/card_settlement/properties/cashback
            #   #
            #   # @param amount [String]
            #   # @param currency [Symbol, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency]
            #   #
            #   def initialize(amount:, currency:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_settlement/properties/cashback/anyOf/0/properties/currency
            #
            # @see Increase::Models::Transaction::Source::CardSettlement::Cashback#currency
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
          end

          # #/components/schemas/card_settlement/properties/currency
          #
          # @see Increase::Models::Transaction::Source::CardSettlement#currency
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

          # @see Increase::Models::Transaction::Source::CardSettlement#interchange
          class Interchange < Increase::Internal::Type::BaseModel
            # @!attribute amount
            #   #/components/schemas/card_settlement/properties/interchange/anyOf/0/properties/amount
            #
            #   @return [String]
            required :amount, String

            # @!attribute code
            #   #/components/schemas/card_settlement/properties/interchange/anyOf/0/properties/code
            #
            #   @return [String, nil]
            required :code, String, nil?: true

            # @!attribute currency
            #   #/components/schemas/card_settlement/properties/interchange/anyOf/0/properties/currency
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency]
            required :currency,
                     enum: -> { Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency }

            # @!parse
            #   # #/components/schemas/card_settlement/properties/interchange
            #   #
            #   # @param amount [String]
            #   # @param code [String, nil]
            #   # @param currency [Symbol, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency]
            #   #
            #   def initialize(amount:, code:, currency:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/card_settlement/properties/interchange/anyOf/0/properties/currency
            #
            # @see Increase::Models::Transaction::Source::CardSettlement::Interchange#currency
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
          end

          # @see Increase::Models::Transaction::Source::CardSettlement#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute acquirer_business_id
            #   #/components/schemas/card_settlement/properties/network_identifiers/properties/acquirer_business_id
            #
            #   @return [String]
            required :acquirer_business_id, String

            # @!attribute acquirer_reference_number
            #   #/components/schemas/card_settlement/properties/network_identifiers/properties/acquirer_reference_number
            #
            #   @return [String]
            required :acquirer_reference_number, String

            # @!attribute transaction_id
            #   #/components/schemas/card_settlement/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/card_settlement/properties/network_identifiers
            #   #
            #   # @param acquirer_business_id [String]
            #   # @param acquirer_reference_number [String]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(acquirer_business_id:, acquirer_reference_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # @see Increase::Models::Transaction::Source::CardSettlement#purchase_details
          class PurchaseDetails < Increase::Internal::Type::BaseModel
            # @!attribute car_rental
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental
            #
            #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental, nil]
            required :car_rental,
                     -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental },
                     nil?: true

            # @!attribute customer_reference_identifier
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/customer_reference_identifier
            #
            #   @return [String, nil]
            required :customer_reference_identifier, String, nil?: true

            # @!attribute local_tax_amount
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/local_tax_amount
            #
            #   @return [Integer, nil]
            required :local_tax_amount, Integer, nil?: true

            # @!attribute local_tax_currency
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/local_tax_currency
            #
            #   @return [String, nil]
            required :local_tax_currency, String, nil?: true

            # @!attribute lodging
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging
            #
            #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging, nil]
            required :lodging,
                     -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging },
                     nil?: true

            # @!attribute national_tax_amount
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/national_tax_amount
            #
            #   @return [Integer, nil]
            required :national_tax_amount, Integer, nil?: true

            # @!attribute national_tax_currency
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/national_tax_currency
            #
            #   @return [String, nil]
            required :national_tax_currency, String, nil?: true

            # @!attribute purchase_identifier
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/purchase_identifier
            #
            #   @return [String, nil]
            required :purchase_identifier, String, nil?: true

            # @!attribute purchase_identifier_format
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/purchase_identifier_format
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat, nil]
            required :purchase_identifier_format,
                     enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat },
                     nil?: true

            # @!attribute travel
            #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel
            #
            #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel, nil]
            required :travel,
                     -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel },
                     nil?: true

            # @!parse
            #   # #/components/schemas/card_settlement/properties/purchase_details
            #   #
            #   # @param car_rental [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental, nil]
            #   # @param customer_reference_identifier [String, nil]
            #   # @param local_tax_amount [Integer, nil]
            #   # @param local_tax_currency [String, nil]
            #   # @param lodging [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging, nil]
            #   # @param national_tax_amount [Integer, nil]
            #   # @param national_tax_currency [String, nil]
            #   # @param purchase_identifier [String, nil]
            #   # @param purchase_identifier_format [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat, nil]
            #   # @param travel [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel, nil]
            #   #
            #   def initialize(
            #     car_rental:,
            #     customer_reference_identifier:,
            #     local_tax_amount:,
            #     local_tax_currency:,
            #     lodging:,
            #     national_tax_amount:,
            #     national_tax_currency:,
            #     purchase_identifier:,
            #     purchase_identifier_format:,
            #     travel:,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails#car_rental
            class CarRental < Increase::Internal::Type::BaseModel
              # @!attribute car_class_code
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/car_class_code
              #
              #   @return [String, nil]
              required :car_class_code, String, nil?: true

              # @!attribute checkout_date
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/checkout_date
              #
              #   @return [Date, nil]
              required :checkout_date, Date, nil?: true

              # @!attribute daily_rental_rate_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/daily_rental_rate_amount
              #
              #   @return [Integer, nil]
              required :daily_rental_rate_amount, Integer, nil?: true

              # @!attribute daily_rental_rate_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/daily_rental_rate_currency
              #
              #   @return [String, nil]
              required :daily_rental_rate_currency, String, nil?: true

              # @!attribute days_rented
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/days_rented
              #
              #   @return [Integer, nil]
              required :days_rented, Integer, nil?: true

              # @!attribute extra_charges
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/extra_charges
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges },
                       nil?: true

              # @!attribute fuel_charges_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/fuel_charges_amount
              #
              #   @return [Integer, nil]
              required :fuel_charges_amount, Integer, nil?: true

              # @!attribute fuel_charges_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/fuel_charges_currency
              #
              #   @return [String, nil]
              required :fuel_charges_currency, String, nil?: true

              # @!attribute insurance_charges_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/insurance_charges_amount
              #
              #   @return [Integer, nil]
              required :insurance_charges_amount, Integer, nil?: true

              # @!attribute insurance_charges_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/insurance_charges_currency
              #
              #   @return [String, nil]
              required :insurance_charges_currency, String, nil?: true

              # @!attribute no_show_indicator
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/no_show_indicator
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator },
                       nil?: true

              # @!attribute one_way_drop_off_charges_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/one_way_drop_off_charges_amount
              #
              #   @return [Integer, nil]
              required :one_way_drop_off_charges_amount, Integer, nil?: true

              # @!attribute one_way_drop_off_charges_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/one_way_drop_off_charges_currency
              #
              #   @return [String, nil]
              required :one_way_drop_off_charges_currency, String, nil?: true

              # @!attribute renter_name
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/renter_name
              #
              #   @return [String, nil]
              required :renter_name, String, nil?: true

              # @!attribute weekly_rental_rate_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/weekly_rental_rate_amount
              #
              #   @return [Integer, nil]
              required :weekly_rental_rate_amount, Integer, nil?: true

              # @!attribute weekly_rental_rate_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/weekly_rental_rate_currency
              #
              #   @return [String, nil]
              required :weekly_rental_rate_currency, String, nil?: true

              # @!parse
              #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental
              #   #
              #   # @param car_class_code [String, nil]
              #   # @param checkout_date [Date, nil]
              #   # @param daily_rental_rate_amount [Integer, nil]
              #   # @param daily_rental_rate_currency [String, nil]
              #   # @param days_rented [Integer, nil]
              #   # @param extra_charges [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges, nil]
              #   # @param fuel_charges_amount [Integer, nil]
              #   # @param fuel_charges_currency [String, nil]
              #   # @param insurance_charges_amount [Integer, nil]
              #   # @param insurance_charges_currency [String, nil]
              #   # @param no_show_indicator [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator, nil]
              #   # @param one_way_drop_off_charges_amount [Integer, nil]
              #   # @param one_way_drop_off_charges_currency [String, nil]
              #   # @param renter_name [String, nil]
              #   # @param weekly_rental_rate_amount [Integer, nil]
              #   # @param weekly_rental_rate_currency [String, nil]
              #   #
              #   def initialize(
              #     car_class_code:,
              #     checkout_date:,
              #     daily_rental_rate_amount:,
              #     daily_rental_rate_currency:,
              #     days_rented:,
              #     extra_charges:,
              #     fuel_charges_amount:,
              #     fuel_charges_currency:,
              #     insurance_charges_amount:,
              #     insurance_charges_currency:,
              #     no_show_indicator:,
              #     one_way_drop_off_charges_amount:,
              #     one_way_drop_off_charges_currency:,
              #     renter_name:,
              #     weekly_rental_rate_amount:,
              #     weekly_rental_rate_currency:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/extra_charges
              #
              # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental#extra_charges
              module ExtraCharges
                extend Increase::Internal::Type::Enum

                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Gas
                GAS = :gas

                # Extra mileage
                EXTRA_MILEAGE = :extra_mileage

                # Late return
                LATE_RETURN = :late_return

                # One way service fee
                ONE_WAY_SERVICE_FEE = :one_way_service_fee

                # Parking violation
                PARKING_VIOLATION = :parking_violation

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/car_rental/anyOf/0/properties/no_show_indicator
              #
              # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental#no_show_indicator
              module NoShowIndicator
                extend Increase::Internal::Type::Enum

                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = :no_show_for_specialized_vehicle

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails#lodging
            class Lodging < Increase::Internal::Type::BaseModel
              # @!attribute check_in_date
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/check_in_date
              #
              #   @return [Date, nil]
              required :check_in_date, Date, nil?: true

              # @!attribute daily_room_rate_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/daily_room_rate_amount
              #
              #   @return [Integer, nil]
              required :daily_room_rate_amount, Integer, nil?: true

              # @!attribute daily_room_rate_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/daily_room_rate_currency
              #
              #   @return [String, nil]
              required :daily_room_rate_currency, String, nil?: true

              # @!attribute extra_charges
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/extra_charges
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges },
                       nil?: true

              # @!attribute folio_cash_advances_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/folio_cash_advances_amount
              #
              #   @return [Integer, nil]
              required :folio_cash_advances_amount, Integer, nil?: true

              # @!attribute folio_cash_advances_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/folio_cash_advances_currency
              #
              #   @return [String, nil]
              required :folio_cash_advances_currency, String, nil?: true

              # @!attribute food_beverage_charges_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/food_beverage_charges_amount
              #
              #   @return [Integer, nil]
              required :food_beverage_charges_amount, Integer, nil?: true

              # @!attribute food_beverage_charges_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/food_beverage_charges_currency
              #
              #   @return [String, nil]
              required :food_beverage_charges_currency, String, nil?: true

              # @!attribute no_show_indicator
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/no_show_indicator
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator },
                       nil?: true

              # @!attribute prepaid_expenses_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/prepaid_expenses_amount
              #
              #   @return [Integer, nil]
              required :prepaid_expenses_amount, Integer, nil?: true

              # @!attribute prepaid_expenses_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/prepaid_expenses_currency
              #
              #   @return [String, nil]
              required :prepaid_expenses_currency, String, nil?: true

              # @!attribute room_nights
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/room_nights
              #
              #   @return [Integer, nil]
              required :room_nights, Integer, nil?: true

              # @!attribute total_room_tax_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_room_tax_amount
              #
              #   @return [Integer, nil]
              required :total_room_tax_amount, Integer, nil?: true

              # @!attribute total_room_tax_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_room_tax_currency
              #
              #   @return [String, nil]
              required :total_room_tax_currency, String, nil?: true

              # @!attribute total_tax_amount
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_tax_amount
              #
              #   @return [Integer, nil]
              required :total_tax_amount, Integer, nil?: true

              # @!attribute total_tax_currency
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/total_tax_currency
              #
              #   @return [String, nil]
              required :total_tax_currency, String, nil?: true

              # @!parse
              #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging
              #   #
              #   # @param check_in_date [Date, nil]
              #   # @param daily_room_rate_amount [Integer, nil]
              #   # @param daily_room_rate_currency [String, nil]
              #   # @param extra_charges [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges, nil]
              #   # @param folio_cash_advances_amount [Integer, nil]
              #   # @param folio_cash_advances_currency [String, nil]
              #   # @param food_beverage_charges_amount [Integer, nil]
              #   # @param food_beverage_charges_currency [String, nil]
              #   # @param no_show_indicator [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator, nil]
              #   # @param prepaid_expenses_amount [Integer, nil]
              #   # @param prepaid_expenses_currency [String, nil]
              #   # @param room_nights [Integer, nil]
              #   # @param total_room_tax_amount [Integer, nil]
              #   # @param total_room_tax_currency [String, nil]
              #   # @param total_tax_amount [Integer, nil]
              #   # @param total_tax_currency [String, nil]
              #   #
              #   def initialize(
              #     check_in_date:,
              #     daily_room_rate_amount:,
              #     daily_room_rate_currency:,
              #     extra_charges:,
              #     folio_cash_advances_amount:,
              #     folio_cash_advances_currency:,
              #     food_beverage_charges_amount:,
              #     food_beverage_charges_currency:,
              #     no_show_indicator:,
              #     prepaid_expenses_amount:,
              #     prepaid_expenses_currency:,
              #     room_nights:,
              #     total_room_tax_amount:,
              #     total_room_tax_currency:,
              #     total_tax_amount:,
              #     total_tax_currency:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/extra_charges
              #
              # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging#extra_charges
              module ExtraCharges
                extend Increase::Internal::Type::Enum

                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Restaurant
                RESTAURANT = :restaurant

                # Gift shop
                GIFT_SHOP = :gift_shop

                # Mini bar
                MINI_BAR = :mini_bar

                # Telephone
                TELEPHONE = :telephone

                # Other
                OTHER = :other

                # Laundry
                LAUNDRY = :laundry

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/lodging/anyOf/0/properties/no_show_indicator
              #
              # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging#no_show_indicator
              module NoShowIndicator
                extend Increase::Internal::Type::Enum

                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show
                NO_SHOW = :no_show

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/purchase_identifier_format
            #
            # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails#purchase_identifier_format
            module PurchaseIdentifierFormat
              extend Increase::Internal::Type::Enum

              # Free text
              FREE_TEXT = :free_text

              # Order number
              ORDER_NUMBER = :order_number

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = :rental_agreement_number

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = :hotel_folio_number

              # Invoice number
              INVOICE_NUMBER = :invoice_number

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails#travel
            class Travel < Increase::Internal::Type::BaseModel
              # @!attribute ancillary
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary
              #
              #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary, nil]
              required :ancillary,
                       -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary },
                       nil?: true

              # @!attribute computerized_reservation_system
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/computerized_reservation_system
              #
              #   @return [String, nil]
              required :computerized_reservation_system, String, nil?: true

              # @!attribute credit_reason_indicator
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/credit_reason_indicator
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator, nil]
              required :credit_reason_indicator,
                       enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator },
                       nil?: true

              # @!attribute departure_date
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/departure_date
              #
              #   @return [Date, nil]
              required :departure_date, Date, nil?: true

              # @!attribute origination_city_airport_code
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/origination_city_airport_code
              #
              #   @return [String, nil]
              required :origination_city_airport_code, String, nil?: true

              # @!attribute passenger_name
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/passenger_name
              #
              #   @return [String, nil]
              required :passenger_name, String, nil?: true

              # @!attribute restricted_ticket_indicator
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/restricted_ticket_indicator
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator, nil]
              required :restricted_ticket_indicator,
                       enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator },
                       nil?: true

              # @!attribute ticket_change_indicator
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_change_indicator
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator, nil]
              required :ticket_change_indicator,
                       enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator },
                       nil?: true

              # @!attribute ticket_number
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_number
              #
              #   @return [String, nil]
              required :ticket_number, String, nil?: true

              # @!attribute travel_agency_code
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/travel_agency_code
              #
              #   @return [String, nil]
              required :travel_agency_code, String, nil?: true

              # @!attribute travel_agency_name
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/travel_agency_name
              #
              #   @return [String, nil]
              required :travel_agency_name, String, nil?: true

              # @!attribute trip_legs
              #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs
              #
              #   @return [Array<Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg>, nil]
              required :trip_legs,
                       -> { Increase::Internal::Type::ArrayOf[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg] },
                       nil?: true

              # @!parse
              #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel
              #   #
              #   # @param ancillary [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary, nil]
              #   # @param computerized_reservation_system [String, nil]
              #   # @param credit_reason_indicator [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator, nil]
              #   # @param departure_date [Date, nil]
              #   # @param origination_city_airport_code [String, nil]
              #   # @param passenger_name [String, nil]
              #   # @param restricted_ticket_indicator [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator, nil]
              #   # @param ticket_change_indicator [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator, nil]
              #   # @param ticket_number [String, nil]
              #   # @param travel_agency_code [String, nil]
              #   # @param travel_agency_name [String, nil]
              #   # @param trip_legs [Array<Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg>, nil]
              #   #
              #   def initialize(
              #     ancillary:,
              #     computerized_reservation_system:,
              #     credit_reason_indicator:,
              #     departure_date:,
              #     origination_city_airport_code:,
              #     passenger_name:,
              #     restricted_ticket_indicator:,
              #     ticket_change_indicator:,
              #     ticket_number:,
              #     travel_agency_code:,
              #     travel_agency_name:,
              #     trip_legs:,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel#ancillary
              class Ancillary < Increase::Internal::Type::BaseModel
                # @!attribute connected_ticket_document_number
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/connected_ticket_document_number
                #
                #   @return [String, nil]
                required :connected_ticket_document_number, String, nil?: true

                # @!attribute credit_reason_indicator
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/credit_reason_indicator
                #
                #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator, nil]
                required :credit_reason_indicator,
                         enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator },
                         nil?: true

                # @!attribute passenger_name_or_description
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/passenger_name_or_description
                #
                #   @return [String, nil]
                required :passenger_name_or_description, String, nil?: true

                # @!attribute services
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services
                #
                #   @return [Array<Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         -> { Increase::Internal::Type::ArrayOf[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service] }

                # @!attribute ticket_document_number
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/ticket_document_number
                #
                #   @return [String, nil]
                required :ticket_document_number, String, nil?: true

                # @!parse
                #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary
                #   #
                #   # @param connected_ticket_document_number [String, nil]
                #   # @param credit_reason_indicator [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator, nil]
                #   # @param passenger_name_or_description [String, nil]
                #   # @param services [Array<Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service>]
                #   # @param ticket_document_number [String, nil]
                #   #
                #   def initialize(
                #     connected_ticket_document_number:,
                #     credit_reason_indicator:,
                #     passenger_name_or_description:,
                #     services:,
                #     ticket_document_number:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/credit_reason_indicator
                #
                # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary#credit_reason_indicator
                module CreditReasonIndicator
                  extend Increase::Internal::Type::Enum

                  # No credit
                  NO_CREDIT = :no_credit

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    :passenger_transport_ancillary_purchase_cancellation

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                  # Other
                  OTHER = :other

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end

                class Service < Increase::Internal::Type::BaseModel
                  # @!attribute category
                  #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/category
                  #
                  #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category, nil]
                  required :category,
                           enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category },
                           nil?: true

                  # @!attribute sub_category
                  #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/sub_category
                  #
                  #   @return [String, nil]
                  required :sub_category, String, nil?: true

                  # @!parse
                  #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items
                  #   #
                  #   # @param category [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category, nil]
                  #   # @param sub_category [String, nil]
                  #   #
                  #   def initialize(category:, sub_category:, **) = super

                  # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                  # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ancillary/anyOf/0/properties/services/items/properties/category
                  #
                  # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service#category
                  module Category
                    extend Increase::Internal::Type::Enum

                    # None
                    NONE = :none

                    # Bundled service
                    BUNDLED_SERVICE = :bundled_service

                    # Baggage fee
                    BAGGAGE_FEE = :baggage_fee

                    # Change fee
                    CHANGE_FEE = :change_fee

                    # Cargo
                    CARGO = :cargo

                    # Carbon offset
                    CARBON_OFFSET = :carbon_offset

                    # Frequent flyer
                    FREQUENT_FLYER = :frequent_flyer

                    # Gift card
                    GIFT_CARD = :gift_card

                    # Ground transport
                    GROUND_TRANSPORT = :ground_transport

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = :in_flight_entertainment

                    # Lounge
                    LOUNGE = :lounge

                    # Medical
                    MEDICAL = :medical

                    # Meal beverage
                    MEAL_BEVERAGE = :meal_beverage

                    # Other
                    OTHER = :other

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = :passenger_assist_fee

                    # Pets
                    PETS = :pets

                    # Seat fees
                    SEAT_FEES = :seat_fees

                    # Standby
                    STANDBY = :standby

                    # Service fee
                    SERVICE_FEE = :service_fee

                    # Store
                    STORE = :store

                    # Travel service
                    TRAVEL_SERVICE = :travel_service

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = :unaccompanied_travel

                    # Upgrades
                    UPGRADES = :upgrades

                    # Wi-fi
                    WIFI = :wifi

                    finalize!

                    # @!parse
                    #   # @return [Array<Symbol>]
                    #   def self.values; end
                  end
                end
              end

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/credit_reason_indicator
              #
              # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel#credit_reason_indicator
              module CreditReasonIndicator
                extend Increase::Internal::Type::Enum

                # No credit
                NO_CREDIT = :no_credit

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  :passenger_transport_ancillary_purchase_cancellation

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = :airline_ticket_cancellation

                # Other
                OTHER = :other

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = :partial_refund_of_airline_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/restricted_ticket_indicator
              #
              # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel#restricted_ticket_indicator
              module RestrictedTicketIndicator
                extend Increase::Internal::Type::Enum

                # No restrictions
                NO_RESTRICTIONS = :no_restrictions

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = :restricted_non_refundable_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/ticket_change_indicator
              #
              # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel#ticket_change_indicator
              module TicketChangeIndicator
                extend Increase::Internal::Type::Enum

                # None
                NONE = :none

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = :change_to_existing_ticket

                # New ticket
                NEW_TICKET = :new_ticket

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              class TripLeg < Increase::Internal::Type::BaseModel
                # @!attribute carrier_code
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/carrier_code
                #
                #   @return [String, nil]
                required :carrier_code, String, nil?: true

                # @!attribute destination_city_airport_code
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/destination_city_airport_code
                #
                #   @return [String, nil]
                required :destination_city_airport_code, String, nil?: true

                # @!attribute fare_basis_code
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/fare_basis_code
                #
                #   @return [String, nil]
                required :fare_basis_code, String, nil?: true

                # @!attribute flight_number
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/flight_number
                #
                #   @return [String, nil]
                required :flight_number, String, nil?: true

                # @!attribute service_class
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/service_class
                #
                #   @return [String, nil]
                required :service_class, String, nil?: true

                # @!attribute stop_over_code
                #   #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/stop_over_code
                #
                #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode, nil]
                required :stop_over_code,
                         enum: -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode },
                         nil?: true

                # @!parse
                #   # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items
                #   #
                #   # @param carrier_code [String, nil]
                #   # @param destination_city_airport_code [String, nil]
                #   # @param fare_basis_code [String, nil]
                #   # @param flight_number [String, nil]
                #   # @param service_class [String, nil]
                #   # @param stop_over_code [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode, nil]
                #   #
                #   def initialize(
                #     carrier_code:,
                #     destination_city_airport_code:,
                #     fare_basis_code:,
                #     flight_number:,
                #     service_class:,
                #     stop_over_code:,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

                # #/components/schemas/card_settlement/properties/purchase_details/anyOf/0/properties/travel/anyOf/0/properties/trip_legs/anyOf/0/items/properties/stop_over_code
                #
                # @see Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg#stop_over_code
                module StopOverCode
                  extend Increase::Internal::Type::Enum

                  # None
                  NONE = :none

                  # Stop over allowed
                  STOP_OVER_ALLOWED = :stop_over_allowed

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = :stop_over_not_allowed

                  finalize!

                  # @!parse
                  #   # @return [Array<Symbol>]
                  #   def self.values; end
                end
              end
            end
          end

          # #/components/schemas/card_settlement/properties/type
          #
          # @see Increase::Models::Transaction::Source::CardSettlement#type
          module Type
            extend Increase::Internal::Type::Enum

            CARD_SETTLEMENT = :card_settlement

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::Transaction::Source#cashback_payment
        class CashbackPayment < Increase::Internal::Type::BaseModel
          # @!attribute accrued_on_card_id
          #   #/components/schemas/transaction/properties/source/properties/cashback_payment/anyOf/0/properties/accrued_on_card_id
          #
          #   @return [String, nil]
          required :accrued_on_card_id, String, nil?: true

          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/cashback_payment/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   #/components/schemas/transaction/properties/source/properties/cashback_payment/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CashbackPayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CashbackPayment::Currency }

          # @!attribute period_end
          #   #/components/schemas/transaction/properties/source/properties/cashback_payment/anyOf/0/properties/period_end
          #
          #   @return [Time]
          required :period_end, Time

          # @!attribute period_start
          #   #/components/schemas/transaction/properties/source/properties/cashback_payment/anyOf/0/properties/period_start
          #
          #   @return [Time]
          required :period_start, Time

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/cashback_payment
          #   #
          #   # @param accrued_on_card_id [String, nil]
          #   # @param amount [Integer]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::CashbackPayment::Currency]
          #   # @param period_end [Time]
          #   # @param period_start [Time]
          #   #
          #   def initialize(accrued_on_card_id:, amount:, currency:, period_end:, period_start:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/cashback_payment/anyOf/0/properties/currency
          #
          # @see Increase::Models::Transaction::Source::CashbackPayment#currency
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
        end

        # #/components/schemas/transaction/properties/source/properties/category
        #
        # @see Increase::Models::Transaction::Source#category
        module Category
          extend Increase::Internal::Type::Enum

          # Account Transfer Intention: details will be under the `account_transfer_intention` object.
          ACCOUNT_TRANSFER_INTENTION = :account_transfer_intention

          # ACH Transfer Intention: details will be under the `ach_transfer_intention` object.
          ACH_TRANSFER_INTENTION = :ach_transfer_intention

          # ACH Transfer Rejection: details will be under the `ach_transfer_rejection` object.
          ACH_TRANSFER_REJECTION = :ach_transfer_rejection

          # ACH Transfer Return: details will be under the `ach_transfer_return` object.
          ACH_TRANSFER_RETURN = :ach_transfer_return

          # Cashback Payment: details will be under the `cashback_payment` object.
          CASHBACK_PAYMENT = :cashback_payment

          # Card Dispute Acceptance: details will be under the `card_dispute_acceptance` object.
          CARD_DISPUTE_ACCEPTANCE = :card_dispute_acceptance

          # Card Dispute Loss: details will be under the `card_dispute_loss` object.
          CARD_DISPUTE_LOSS = :card_dispute_loss

          # Card Refund: details will be under the `card_refund` object.
          CARD_REFUND = :card_refund

          # Card Settlement: details will be under the `card_settlement` object.
          CARD_SETTLEMENT = :card_settlement

          # Card Revenue Payment: details will be under the `card_revenue_payment` object.
          CARD_REVENUE_PAYMENT = :card_revenue_payment

          # Check Deposit Acceptance: details will be under the `check_deposit_acceptance` object.
          CHECK_DEPOSIT_ACCEPTANCE = :check_deposit_acceptance

          # Check Deposit Return: details will be under the `check_deposit_return` object.
          CHECK_DEPOSIT_RETURN = :check_deposit_return

          # Check Transfer Deposit: details will be under the `check_transfer_deposit` object.
          CHECK_TRANSFER_DEPOSIT = :check_transfer_deposit

          # Fee Payment: details will be under the `fee_payment` object.
          FEE_PAYMENT = :fee_payment

          # Inbound ACH Transfer Intention: details will be under the `inbound_ach_transfer` object.
          INBOUND_ACH_TRANSFER = :inbound_ach_transfer

          # Inbound ACH Transfer Return Intention: details will be under the `inbound_ach_transfer_return_intention` object.
          INBOUND_ACH_TRANSFER_RETURN_INTENTION = :inbound_ach_transfer_return_intention

          # Inbound Check Deposit Return Intention: details will be under the `inbound_check_deposit_return_intention` object.
          INBOUND_CHECK_DEPOSIT_RETURN_INTENTION = :inbound_check_deposit_return_intention

          # Inbound Check Adjustment: details will be under the `inbound_check_adjustment` object.
          INBOUND_CHECK_ADJUSTMENT = :inbound_check_adjustment

          # Inbound Real-Time Payments Transfer Confirmation: details will be under the `inbound_real_time_payments_transfer_confirmation` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_CONFIRMATION = :inbound_real_time_payments_transfer_confirmation

          # Inbound Real-Time Payments Transfer Decline: details will be under the `inbound_real_time_payments_transfer_decline` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_DECLINE = :inbound_real_time_payments_transfer_decline

          # Inbound Wire Reversal: details will be under the `inbound_wire_reversal` object.
          INBOUND_WIRE_REVERSAL = :inbound_wire_reversal

          # Inbound Wire Transfer Intention: details will be under the `inbound_wire_transfer` object.
          INBOUND_WIRE_TRANSFER = :inbound_wire_transfer

          # Inbound Wire Transfer Reversal Intention: details will be under the `inbound_wire_transfer_reversal` object.
          INBOUND_WIRE_TRANSFER_REVERSAL = :inbound_wire_transfer_reversal

          # Interest Payment: details will be under the `interest_payment` object.
          INTEREST_PAYMENT = :interest_payment

          # Internal Source: details will be under the `internal_source` object.
          INTERNAL_SOURCE = :internal_source

          # Real-Time Payments Transfer Acknowledgement: details will be under the `real_time_payments_transfer_acknowledgement` object.
          REAL_TIME_PAYMENTS_TRANSFER_ACKNOWLEDGEMENT = :real_time_payments_transfer_acknowledgement

          # Sample Funds: details will be under the `sample_funds` object.
          SAMPLE_FUNDS = :sample_funds

          # Wire Transfer Intention: details will be under the `wire_transfer_intention` object.
          WIRE_TRANSFER_INTENTION = :wire_transfer_intention

          # The Transaction was made for an undocumented or deprecated reason.
          OTHER = :other

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::Transaction::Source#check_deposit_acceptance
        class CheckDepositAcceptance < Increase::Internal::Type::BaseModel
          # @!attribute account_number
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_acceptance/anyOf/0/properties/account_number
          #
          #   @return [String]
          required :account_number, String

          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_acceptance/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute auxiliary_on_us
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_acceptance/anyOf/0/properties/auxiliary_on_us
          #
          #   @return [String, nil]
          required :auxiliary_on_us, String, nil?: true

          # @!attribute check_deposit_id
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_acceptance/anyOf/0/properties/check_deposit_id
          #
          #   @return [String]
          required :check_deposit_id, String

          # @!attribute currency
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_acceptance/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency }

          # @!attribute routing_number
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_acceptance/anyOf/0/properties/routing_number
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute serial_number
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_acceptance/anyOf/0/properties/serial_number
          #
          #   @return [String, nil]
          required :serial_number, String, nil?: true

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/check_deposit_acceptance
          #   #
          #   # @param account_number [String]
          #   # @param amount [Integer]
          #   # @param auxiliary_on_us [String, nil]
          #   # @param check_deposit_id [String]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency]
          #   # @param routing_number [String]
          #   # @param serial_number [String, nil]
          #   #
          #   def initialize(
          #     account_number:,
          #     amount:,
          #     auxiliary_on_us:,
          #     check_deposit_id:,
          #     currency:,
          #     routing_number:,
          #     serial_number:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/check_deposit_acceptance/anyOf/0/properties/currency
          #
          # @see Increase::Models::Transaction::Source::CheckDepositAcceptance#currency
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
        end

        # @see Increase::Models::Transaction::Source#check_deposit_return
        class CheckDepositReturn < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_return/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute check_deposit_id
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_return/anyOf/0/properties/check_deposit_id
          #
          #   @return [String]
          required :check_deposit_id, String

          # @!attribute currency
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_return/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CheckDepositReturn::Currency }

          # @!attribute return_reason
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_return/anyOf/0/properties/return_reason
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason]
          required :return_reason,
                   enum: -> { Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason }

          # @!attribute returned_at
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_return/anyOf/0/properties/returned_at
          #
          #   @return [Time]
          required :returned_at, Time

          # @!attribute transaction_id
          #   #/components/schemas/transaction/properties/source/properties/check_deposit_return/anyOf/0/properties/transaction_id
          #
          #   @return [String]
          required :transaction_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/check_deposit_return
          #   #
          #   # @param amount [Integer]
          #   # @param check_deposit_id [String]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::Currency]
          #   # @param return_reason [Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason]
          #   # @param returned_at [Time]
          #   # @param transaction_id [String]
          #   #
          #   def initialize(amount:, check_deposit_id:, currency:, return_reason:, returned_at:, transaction_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/check_deposit_return/anyOf/0/properties/currency
          #
          # @see Increase::Models::Transaction::Source::CheckDepositReturn#currency
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

          # #/components/schemas/transaction/properties/source/properties/check_deposit_return/anyOf/0/properties/return_reason
          #
          # @see Increase::Models::Transaction::Source::CheckDepositReturn#return_reason
          module ReturnReason
            extend Increase::Internal::Type::Enum

            # The check doesn't allow ACH conversion.
            ACH_CONVERSION_NOT_SUPPORTED = :ach_conversion_not_supported

            # The account is closed.
            CLOSED_ACCOUNT = :closed_account

            # The check has already been deposited.
            DUPLICATE_SUBMISSION = :duplicate_submission

            # Insufficient funds
            INSUFFICIENT_FUNDS = :insufficient_funds

            # No account was found matching the check details.
            NO_ACCOUNT = :no_account

            # The check was not authorized.
            NOT_AUTHORIZED = :not_authorized

            # The check is too old.
            STALE_DATED = :stale_dated

            # The payment has been stopped by the account holder.
            STOP_PAYMENT = :stop_payment

            # The reason for the return is unknown.
            UNKNOWN_REASON = :unknown_reason

            # The image doesn't match the details submitted.
            UNMATCHED_DETAILS = :unmatched_details

            # The image could not be read.
            UNREADABLE_IMAGE = :unreadable_image

            # The check endorsement was irregular.
            ENDORSEMENT_IRREGULAR = :endorsement_irregular

            # The check present was either altered or fake.
            ALTERED_OR_FICTITIOUS_ITEM = :altered_or_fictitious_item

            # The account this check is drawn on is frozen.
            FROZEN_OR_BLOCKED_ACCOUNT = :frozen_or_blocked_account

            # The check is post dated.
            POST_DATED = :post_dated

            # The endorsement was missing.
            ENDORSEMENT_MISSING = :endorsement_missing

            # The check signature was missing.
            SIGNATURE_MISSING = :signature_missing

            # The bank suspects a stop payment will be placed.
            STOP_PAYMENT_SUSPECT = :stop_payment_suspect

            # The bank cannot read the image.
            UNUSABLE_IMAGE = :unusable_image

            # The check image fails the bank's security check.
            IMAGE_FAILS_SECURITY_CHECK = :image_fails_security_check

            # The bank cannot determine the amount.
            CANNOT_DETERMINE_AMOUNT = :cannot_determine_amount

            # The signature is inconsistent with prior signatures.
            SIGNATURE_IRREGULAR = :signature_irregular

            # The check is a non-cash item and cannot be drawn against the account.
            NON_CASH_ITEM = :non_cash_item

            # The bank is unable to process this check.
            UNABLE_TO_PROCESS = :unable_to_process

            # The check exceeds the bank or customer's limit.
            ITEM_EXCEEDS_DOLLAR_LIMIT = :item_exceeds_dollar_limit

            # The bank sold this account and no longer services this customer.
            BRANCH_OR_ACCOUNT_SOLD = :branch_or_account_sold

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::Transaction::Source#check_transfer_deposit
        class CheckTransferDeposit < Increase::Internal::Type::BaseModel
          # @!attribute back_image_file_id
          #   #/components/schemas/check_transfer_deposit/properties/back_image_file_id
          #
          #   @return [String, nil]
          required :back_image_file_id, String, nil?: true

          # @!attribute bank_of_first_deposit_routing_number
          #   #/components/schemas/check_transfer_deposit/properties/bank_of_first_deposit_routing_number
          #
          #   @return [String, nil]
          required :bank_of_first_deposit_routing_number, String, nil?: true

          # @!attribute deposited_at
          #   #/components/schemas/check_transfer_deposit/properties/deposited_at
          #
          #   @return [Time]
          required :deposited_at, Time

          # @!attribute front_image_file_id
          #   #/components/schemas/check_transfer_deposit/properties/front_image_file_id
          #
          #   @return [String, nil]
          required :front_image_file_id, String, nil?: true

          # @!attribute inbound_check_deposit_id
          #   #/components/schemas/check_transfer_deposit/properties/inbound_check_deposit_id
          #
          #   @return [String, nil]
          required :inbound_check_deposit_id, String, nil?: true

          # @!attribute transaction_id
          #   #/components/schemas/check_transfer_deposit/properties/transaction_id
          #
          #   @return [String, nil]
          required :transaction_id, String, nil?: true

          # @!attribute transfer_id
          #   #/components/schemas/check_transfer_deposit/properties/transfer_id
          #
          #   @return [String, nil]
          required :transfer_id, String, nil?: true

          # @!attribute type
          #   #/components/schemas/check_transfer_deposit/properties/type
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckTransferDeposit::Type]
          required :type, enum: -> { Increase::Models::Transaction::Source::CheckTransferDeposit::Type }

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/check_transfer_deposit
          #   #
          #   # @param back_image_file_id [String, nil]
          #   # @param bank_of_first_deposit_routing_number [String, nil]
          #   # @param deposited_at [Time]
          #   # @param front_image_file_id [String, nil]
          #   # @param inbound_check_deposit_id [String, nil]
          #   # @param transaction_id [String, nil]
          #   # @param transfer_id [String, nil]
          #   # @param type [Symbol, Increase::Models::Transaction::Source::CheckTransferDeposit::Type]
          #   #
          #   def initialize(
          #     back_image_file_id:,
          #     bank_of_first_deposit_routing_number:,
          #     deposited_at:,
          #     front_image_file_id:,
          #     inbound_check_deposit_id:,
          #     transaction_id:,
          #     transfer_id:,
          #     type:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/check_transfer_deposit/properties/type
          #
          # @see Increase::Models::Transaction::Source::CheckTransferDeposit#type
          module Type
            extend Increase::Internal::Type::Enum

            CHECK_TRANSFER_DEPOSIT = :check_transfer_deposit

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::Transaction::Source#fee_payment
        class FeePayment < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/fee_payment/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   #/components/schemas/transaction/properties/source/properties/fee_payment/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::FeePayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::FeePayment::Currency }

          # @!attribute fee_period_start
          #   #/components/schemas/transaction/properties/source/properties/fee_payment/anyOf/0/properties/fee_period_start
          #
          #   @return [Date]
          required :fee_period_start, Date

          # @!attribute program_id
          #   #/components/schemas/transaction/properties/source/properties/fee_payment/anyOf/0/properties/program_id
          #
          #   @return [String, nil]
          required :program_id, String, nil?: true

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/fee_payment
          #   #
          #   # @param amount [Integer]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::FeePayment::Currency]
          #   # @param fee_period_start [Date]
          #   # @param program_id [String, nil]
          #   #
          #   def initialize(amount:, currency:, fee_period_start:, program_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/fee_payment/anyOf/0/properties/currency
          #
          # @see Increase::Models::Transaction::Source::FeePayment#currency
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
        end

        # @see Increase::Models::Transaction::Source#inbound_ach_transfer
        class InboundACHTransfer < Increase::Internal::Type::BaseModel
          # @!attribute addenda
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/addenda
          #
          #   @return [Increase::Models::Transaction::Source::InboundACHTransfer::Addenda, nil]
          required :addenda, -> { Increase::Models::Transaction::Source::InboundACHTransfer::Addenda }, nil?: true

          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute originator_company_descriptive_date
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/originator_company_descriptive_date
          #
          #   @return [String, nil]
          required :originator_company_descriptive_date, String, nil?: true

          # @!attribute originator_company_discretionary_data
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/originator_company_discretionary_data
          #
          #   @return [String, nil]
          required :originator_company_discretionary_data, String, nil?: true

          # @!attribute originator_company_entry_description
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/originator_company_entry_description
          #
          #   @return [String]
          required :originator_company_entry_description, String

          # @!attribute originator_company_id
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/originator_company_id
          #
          #   @return [String]
          required :originator_company_id, String

          # @!attribute originator_company_name
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/originator_company_name
          #
          #   @return [String]
          required :originator_company_name, String

          # @!attribute receiver_id_number
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/receiver_id_number
          #
          #   @return [String, nil]
          required :receiver_id_number, String, nil?: true

          # @!attribute receiver_name
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/receiver_name
          #
          #   @return [String, nil]
          required :receiver_name, String, nil?: true

          # @!attribute trace_number
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/trace_number
          #
          #   @return [String]
          required :trace_number, String

          # @!attribute transfer_id
          #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer
          #   #
          #   # @param addenda [Increase::Models::Transaction::Source::InboundACHTransfer::Addenda, nil]
          #   # @param amount [Integer]
          #   # @param originator_company_descriptive_date [String, nil]
          #   # @param originator_company_discretionary_data [String, nil]
          #   # @param originator_company_entry_description [String]
          #   # @param originator_company_id [String]
          #   # @param originator_company_name [String]
          #   # @param receiver_id_number [String, nil]
          #   # @param receiver_name [String, nil]
          #   # @param trace_number [String]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(
          #     addenda:,
          #     amount:,
          #     originator_company_descriptive_date:,
          #     originator_company_discretionary_data:,
          #     originator_company_entry_description:,
          #     originator_company_id:,
          #     originator_company_name:,
          #     receiver_id_number:,
          #     receiver_name:,
          #     trace_number:,
          #     transfer_id:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # @see Increase::Models::Transaction::Source::InboundACHTransfer#addenda
          class Addenda < Increase::Internal::Type::BaseModel
            # @!attribute category
            #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/addenda/anyOf/0/properties/category
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category]
            required :category,
                     enum: -> { Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category }

            # @!attribute freeform
            #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/addenda/anyOf/0/properties/freeform
            #
            #   @return [Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform, nil]
            required :freeform,
                     -> { Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform },
                     nil?: true

            # @!parse
            #   # #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/addenda
            #   #
            #   # @param category [Symbol, Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category]
            #   # @param freeform [Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform, nil]
            #   #
            #   def initialize(category:, freeform:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/addenda/anyOf/0/properties/category
            #
            # @see Increase::Models::Transaction::Source::InboundACHTransfer::Addenda#category
            module Category
              extend Increase::Internal::Type::Enum

              # Unstructured addendum.
              FREEFORM = :freeform

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::Transaction::Source::InboundACHTransfer::Addenda#freeform
            class Freeform < Increase::Internal::Type::BaseModel
              # @!attribute entries
              #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries
              #
              #   @return [Array<Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry>]
              required :entries,
                       -> { Increase::Internal::Type::ArrayOf[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry] }

              # @!parse
              #   # #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/addenda/anyOf/0/properties/freeform
              #   #
              #   # @param entries [Array<Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry>]
              #   #
              #   def initialize(entries:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              class Entry < Increase::Internal::Type::BaseModel
                # @!attribute payment_related_information
                #   #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries/items/properties/payment_related_information
                #
                #   @return [String]
                required :payment_related_information, String

                # @!parse
                #   # #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer/anyOf/0/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries/items
                #   #
                #   # @param payment_related_information [String]
                #   #
                #   def initialize(payment_related_information:, **) = super

                # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
              end
            end
          end
        end

        # @see Increase::Models::Transaction::Source#inbound_ach_transfer_return_intention
        class InboundACHTransferReturnIntention < Increase::Internal::Type::BaseModel
          # @!attribute inbound_ach_transfer_id
          #   #/components/schemas/inbound_ach_transfer_return_intention/properties/inbound_ach_transfer_id
          #
          #   @return [String]
          required :inbound_ach_transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/inbound_ach_transfer_return_intention
          #   #
          #   # @param inbound_ach_transfer_id [String]
          #   #
          #   def initialize(inbound_ach_transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#inbound_check_adjustment
        class InboundCheckAdjustment < Increase::Internal::Type::BaseModel
          # @!attribute adjusted_transaction_id
          #   #/components/schemas/inbound_check_adjustment/properties/adjusted_transaction_id
          #
          #   @return [String]
          required :adjusted_transaction_id, String

          # @!attribute amount
          #   #/components/schemas/inbound_check_adjustment/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute reason
          #   #/components/schemas/inbound_check_adjustment/properties/reason
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason]
          required :reason, enum: -> { Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason }

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/inbound_check_adjustment
          #   #
          #   # @param adjusted_transaction_id [String]
          #   # @param amount [Integer]
          #   # @param reason [Symbol, Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason]
          #   #
          #   def initialize(adjusted_transaction_id:, amount:, reason:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/inbound_check_adjustment/properties/reason
          #
          # @see Increase::Models::Transaction::Source::InboundCheckAdjustment#reason
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

        # @see Increase::Models::Transaction::Source#inbound_check_deposit_return_intention
        class InboundCheckDepositReturnIntention < Increase::Internal::Type::BaseModel
          # @!attribute inbound_check_deposit_id
          #   #/components/schemas/inbound_check_deposit_return_intention/properties/inbound_check_deposit_id
          #
          #   @return [String]
          required :inbound_check_deposit_id, String

          # @!attribute transfer_id
          #   #/components/schemas/inbound_check_deposit_return_intention/properties/transfer_id
          #
          #   @return [String, nil]
          required :transfer_id, String, nil?: true

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/inbound_check_deposit_return_intention
          #   #
          #   # @param inbound_check_deposit_id [String]
          #   # @param transfer_id [String, nil]
          #   #
          #   def initialize(inbound_check_deposit_id:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#inbound_real_time_payments_transfer_confirmation
        class InboundRealTimePaymentsTransferConfirmation < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute creditor_name
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation/anyOf/0/properties/creditor_name
          #
          #   @return [String]
          required :creditor_name, String

          # @!attribute currency
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency]
          required :currency,
                   enum: -> { Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency }

          # @!attribute debtor_account_number
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation/anyOf/0/properties/debtor_account_number
          #
          #   @return [String]
          required :debtor_account_number, String

          # @!attribute debtor_name
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation/anyOf/0/properties/debtor_name
          #
          #   @return [String]
          required :debtor_name, String

          # @!attribute debtor_routing_number
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation/anyOf/0/properties/debtor_routing_number
          #
          #   @return [String]
          required :debtor_routing_number, String

          # @!attribute remittance_information
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation/anyOf/0/properties/remittance_information
          #
          #   @return [String, nil]
          required :remittance_information, String, nil?: true

          # @!attribute transaction_identification
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation/anyOf/0/properties/transaction_identification
          #
          #   @return [String]
          required :transaction_identification, String

          # @!attribute transfer_id
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation
          #   #
          #   # @param amount [Integer]
          #   # @param creditor_name [String]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency]
          #   # @param debtor_account_number [String]
          #   # @param debtor_name [String]
          #   # @param debtor_routing_number [String]
          #   # @param remittance_information [String, nil]
          #   # @param transaction_identification [String]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(
          #     amount:,
          #     creditor_name:,
          #     currency:,
          #     debtor_account_number:,
          #     debtor_name:,
          #     debtor_routing_number:,
          #     remittance_information:,
          #     transaction_identification:,
          #     transfer_id:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_confirmation/anyOf/0/properties/currency
          #
          # @see Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation#currency
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
        end

        # @see Increase::Models::Transaction::Source#inbound_real_time_payments_transfer_decline
        class InboundRealTimePaymentsTransferDecline < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute creditor_name
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/creditor_name
          #
          #   @return [String]
          required :creditor_name, String

          # @!attribute currency
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency]
          required :currency,
                   enum: -> { Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency }

          # @!attribute debtor_account_number
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/debtor_account_number
          #
          #   @return [String]
          required :debtor_account_number, String

          # @!attribute debtor_name
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/debtor_name
          #
          #   @return [String]
          required :debtor_name, String

          # @!attribute debtor_routing_number
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/debtor_routing_number
          #
          #   @return [String]
          required :debtor_routing_number, String

          # @!attribute reason
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/reason
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason]
          required :reason,
                   enum: -> { Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason }

          # @!attribute remittance_information
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/remittance_information
          #
          #   @return [String, nil]
          required :remittance_information, String, nil?: true

          # @!attribute transaction_identification
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/transaction_identification
          #
          #   @return [String]
          required :transaction_identification, String

          # @!attribute transfer_id
          #   #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline
          #   #
          #   # @param amount [Integer]
          #   # @param creditor_name [String]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency]
          #   # @param debtor_account_number [String]
          #   # @param debtor_name [String]
          #   # @param debtor_routing_number [String]
          #   # @param reason [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason]
          #   # @param remittance_information [String, nil]
          #   # @param transaction_identification [String]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(
          #     amount:,
          #     creditor_name:,
          #     currency:,
          #     debtor_account_number:,
          #     debtor_name:,
          #     debtor_routing_number:,
          #     reason:,
          #     remittance_information:,
          #     transaction_identification:,
          #     transfer_id:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/currency
          #
          # @see Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline#currency
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

          # #/components/schemas/transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/reason
          #
          # @see Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline#reason
          module Reason
            extend Increase::Internal::Type::Enum

            # The account number is canceled.
            ACCOUNT_NUMBER_CANCELED = :account_number_canceled

            # The account number is disabled.
            ACCOUNT_NUMBER_DISABLED = :account_number_disabled

            # Your account is restricted.
            ACCOUNT_RESTRICTED = :account_restricted

            # Your account is inactive.
            GROUP_LOCKED = :group_locked

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # Your account is not enabled to receive Real-Time Payments transfers.
            REAL_TIME_PAYMENTS_NOT_ENABLED = :real_time_payments_not_enabled

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::Transaction::Source#inbound_wire_reversal
        class InboundWireReversal < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute created_at
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute description
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/description
          #
          #   @return [String]
          required :description, String

          # @!attribute financial_institution_to_financial_institution_information
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/financial_institution_to_financial_institution_information
          #
          #   @return [String, nil]
          required :financial_institution_to_financial_institution_information, String, nil?: true

          # @!attribute input_cycle_date
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/input_cycle_date
          #
          #   @return [Date]
          required :input_cycle_date, Date

          # @!attribute input_message_accountability_data
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/input_message_accountability_data
          #
          #   @return [String]
          required :input_message_accountability_data, String

          # @!attribute input_sequence_number
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/input_sequence_number
          #
          #   @return [String]
          required :input_sequence_number, String

          # @!attribute input_source
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/input_source
          #
          #   @return [String]
          required :input_source, String

          # @!attribute originator_routing_number
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/originator_routing_number
          #
          #   @return [String, nil]
          required :originator_routing_number, String, nil?: true

          # @!attribute previous_message_input_cycle_date
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/previous_message_input_cycle_date
          #
          #   @return [Date]
          required :previous_message_input_cycle_date, Date

          # @!attribute previous_message_input_message_accountability_data
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/previous_message_input_message_accountability_data
          #
          #   @return [String]
          required :previous_message_input_message_accountability_data, String

          # @!attribute previous_message_input_sequence_number
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/previous_message_input_sequence_number
          #
          #   @return [String]
          required :previous_message_input_sequence_number, String

          # @!attribute previous_message_input_source
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/previous_message_input_source
          #
          #   @return [String]
          required :previous_message_input_source, String

          # @!attribute receiver_financial_institution_information
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/receiver_financial_institution_information
          #
          #   @return [String, nil]
          required :receiver_financial_institution_information, String, nil?: true

          # @!attribute sender_reference
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/sender_reference
          #
          #   @return [String, nil]
          required :sender_reference, String, nil?: true

          # @!attribute transaction_id
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/transaction_id
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute wire_transfer_id
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal/anyOf/0/properties/wire_transfer_id
          #
          #   @return [String]
          required :wire_transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/inbound_wire_reversal
          #   #
          #   # @param amount [Integer]
          #   # @param created_at [Time]
          #   # @param description [String]
          #   # @param financial_institution_to_financial_institution_information [String, nil]
          #   # @param input_cycle_date [Date]
          #   # @param input_message_accountability_data [String]
          #   # @param input_sequence_number [String]
          #   # @param input_source [String]
          #   # @param originator_routing_number [String, nil]
          #   # @param previous_message_input_cycle_date [Date]
          #   # @param previous_message_input_message_accountability_data [String]
          #   # @param previous_message_input_sequence_number [String]
          #   # @param previous_message_input_source [String]
          #   # @param receiver_financial_institution_information [String, nil]
          #   # @param sender_reference [String, nil]
          #   # @param transaction_id [String]
          #   # @param wire_transfer_id [String]
          #   #
          #   def initialize(
          #     amount:,
          #     created_at:,
          #     description:,
          #     financial_institution_to_financial_institution_information:,
          #     input_cycle_date:,
          #     input_message_accountability_data:,
          #     input_sequence_number:,
          #     input_source:,
          #     originator_routing_number:,
          #     previous_message_input_cycle_date:,
          #     previous_message_input_message_accountability_data:,
          #     previous_message_input_sequence_number:,
          #     previous_message_input_source:,
          #     receiver_financial_institution_information:,
          #     sender_reference:,
          #     transaction_id:,
          #     wire_transfer_id:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#inbound_wire_transfer
        class InboundWireTransfer < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute beneficiary_address_line1
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/beneficiary_address_line1
          #
          #   @return [String, nil]
          required :beneficiary_address_line1, String, nil?: true

          # @!attribute beneficiary_address_line2
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/beneficiary_address_line2
          #
          #   @return [String, nil]
          required :beneficiary_address_line2, String, nil?: true

          # @!attribute beneficiary_address_line3
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/beneficiary_address_line3
          #
          #   @return [String, nil]
          required :beneficiary_address_line3, String, nil?: true

          # @!attribute beneficiary_name
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/beneficiary_name
          #
          #   @return [String, nil]
          required :beneficiary_name, String, nil?: true

          # @!attribute beneficiary_reference
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/beneficiary_reference
          #
          #   @return [String, nil]
          required :beneficiary_reference, String, nil?: true

          # @!attribute description
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/description
          #
          #   @return [String]
          required :description, String

          # @!attribute input_message_accountability_data
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/input_message_accountability_data
          #
          #   @return [String, nil]
          required :input_message_accountability_data, String, nil?: true

          # @!attribute originator_address_line1
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/originator_address_line1
          #
          #   @return [String, nil]
          required :originator_address_line1, String, nil?: true

          # @!attribute originator_address_line2
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/originator_address_line2
          #
          #   @return [String, nil]
          required :originator_address_line2, String, nil?: true

          # @!attribute originator_address_line3
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/originator_address_line3
          #
          #   @return [String, nil]
          required :originator_address_line3, String, nil?: true

          # @!attribute originator_name
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/originator_name
          #
          #   @return [String, nil]
          required :originator_name, String, nil?: true

          # @!attribute originator_routing_number
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/originator_routing_number
          #
          #   @return [String, nil]
          required :originator_routing_number, String, nil?: true

          # @!attribute originator_to_beneficiary_information
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/originator_to_beneficiary_information
          #
          #   @return [String, nil]
          required :originator_to_beneficiary_information, String, nil?: true

          # @!attribute originator_to_beneficiary_information_line1
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/originator_to_beneficiary_information_line1
          #
          #   @return [String, nil]
          required :originator_to_beneficiary_information_line1, String, nil?: true

          # @!attribute originator_to_beneficiary_information_line2
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/originator_to_beneficiary_information_line2
          #
          #   @return [String, nil]
          required :originator_to_beneficiary_information_line2, String, nil?: true

          # @!attribute originator_to_beneficiary_information_line3
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/originator_to_beneficiary_information_line3
          #
          #   @return [String, nil]
          required :originator_to_beneficiary_information_line3, String, nil?: true

          # @!attribute originator_to_beneficiary_information_line4
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/originator_to_beneficiary_information_line4
          #
          #   @return [String, nil]
          required :originator_to_beneficiary_information_line4, String, nil?: true

          # @!attribute transfer_id
          #   #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer
          #   #
          #   # @param amount [Integer]
          #   # @param beneficiary_address_line1 [String, nil]
          #   # @param beneficiary_address_line2 [String, nil]
          #   # @param beneficiary_address_line3 [String, nil]
          #   # @param beneficiary_name [String, nil]
          #   # @param beneficiary_reference [String, nil]
          #   # @param description [String]
          #   # @param input_message_accountability_data [String, nil]
          #   # @param originator_address_line1 [String, nil]
          #   # @param originator_address_line2 [String, nil]
          #   # @param originator_address_line3 [String, nil]
          #   # @param originator_name [String, nil]
          #   # @param originator_routing_number [String, nil]
          #   # @param originator_to_beneficiary_information [String, nil]
          #   # @param originator_to_beneficiary_information_line1 [String, nil]
          #   # @param originator_to_beneficiary_information_line2 [String, nil]
          #   # @param originator_to_beneficiary_information_line3 [String, nil]
          #   # @param originator_to_beneficiary_information_line4 [String, nil]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(
          #     amount:,
          #     beneficiary_address_line1:,
          #     beneficiary_address_line2:,
          #     beneficiary_address_line3:,
          #     beneficiary_name:,
          #     beneficiary_reference:,
          #     description:,
          #     input_message_accountability_data:,
          #     originator_address_line1:,
          #     originator_address_line2:,
          #     originator_address_line3:,
          #     originator_name:,
          #     originator_routing_number:,
          #     originator_to_beneficiary_information:,
          #     originator_to_beneficiary_information_line1:,
          #     originator_to_beneficiary_information_line2:,
          #     originator_to_beneficiary_information_line3:,
          #     originator_to_beneficiary_information_line4:,
          #     transfer_id:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#inbound_wire_transfer_reversal
        class InboundWireTransferReversal < Increase::Internal::Type::BaseModel
          # @!attribute inbound_wire_transfer_id
          #   #/components/schemas/inbound_wire_transfer_reversal/properties/inbound_wire_transfer_id
          #
          #   @return [String]
          required :inbound_wire_transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/inbound_wire_transfer_reversal
          #   #
          #   # @param inbound_wire_transfer_id [String]
          #   #
          #   def initialize(inbound_wire_transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#interest_payment
        class InterestPayment < Increase::Internal::Type::BaseModel
          # @!attribute accrued_on_account_id
          #   #/components/schemas/transaction/properties/source/properties/interest_payment/anyOf/0/properties/accrued_on_account_id
          #
          #   @return [String]
          required :accrued_on_account_id, String

          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/interest_payment/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   #/components/schemas/transaction/properties/source/properties/interest_payment/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InterestPayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::InterestPayment::Currency }

          # @!attribute period_end
          #   #/components/schemas/transaction/properties/source/properties/interest_payment/anyOf/0/properties/period_end
          #
          #   @return [Time]
          required :period_end, Time

          # @!attribute period_start
          #   #/components/schemas/transaction/properties/source/properties/interest_payment/anyOf/0/properties/period_start
          #
          #   @return [Time]
          required :period_start, Time

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/interest_payment
          #   #
          #   # @param accrued_on_account_id [String]
          #   # @param amount [Integer]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::InterestPayment::Currency]
          #   # @param period_end [Time]
          #   # @param period_start [Time]
          #   #
          #   def initialize(accrued_on_account_id:, amount:, currency:, period_end:, period_start:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/interest_payment/anyOf/0/properties/currency
          #
          # @see Increase::Models::Transaction::Source::InterestPayment#currency
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
        end

        # @see Increase::Models::Transaction::Source#internal_source
        class InternalSource < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/internal_source/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   #/components/schemas/transaction/properties/source/properties/internal_source/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InternalSource::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::InternalSource::Currency }

          # @!attribute reason
          #   #/components/schemas/transaction/properties/source/properties/internal_source/anyOf/0/properties/reason
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InternalSource::Reason]
          required :reason, enum: -> { Increase::Models::Transaction::Source::InternalSource::Reason }

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/internal_source
          #   #
          #   # @param amount [Integer]
          #   # @param currency [Symbol, Increase::Models::Transaction::Source::InternalSource::Currency]
          #   # @param reason [Symbol, Increase::Models::Transaction::Source::InternalSource::Reason]
          #   #
          #   def initialize(amount:, currency:, reason:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/transaction/properties/source/properties/internal_source/anyOf/0/properties/currency
          #
          # @see Increase::Models::Transaction::Source::InternalSource#currency
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

          # #/components/schemas/transaction/properties/source/properties/internal_source/anyOf/0/properties/reason
          #
          # @see Increase::Models::Transaction::Source::InternalSource#reason
          module Reason
            extend Increase::Internal::Type::Enum

            # Account closure
            ACCOUNT_CLOSURE = :account_closure

            # Bank-drawn check
            BANK_DRAWN_CHECK = :bank_drawn_check

            # Bank-drawn check credit
            BANK_DRAWN_CHECK_CREDIT = :bank_drawn_check_credit

            # Bank migration
            BANK_MIGRATION = :bank_migration

            # Check adjustment
            CHECK_ADJUSTMENT = :check_adjustment

            # Collection payment
            COLLECTION_PAYMENT = :collection_payment

            # Collection receivable
            COLLECTION_RECEIVABLE = :collection_receivable

            # Empyreal adjustment
            EMPYREAL_ADJUSTMENT = :empyreal_adjustment

            # Error
            ERROR = :error

            # Error correction
            ERROR_CORRECTION = :error_correction

            # Fees
            FEES = :fees

            # Interest
            INTEREST = :interest

            # Negative balance forgiveness
            NEGATIVE_BALANCE_FORGIVENESS = :negative_balance_forgiveness

            # Sample funds
            SAMPLE_FUNDS = :sample_funds

            # Sample funds return
            SAMPLE_FUNDS_RETURN = :sample_funds_return

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::Transaction::Source#real_time_payments_transfer_acknowledgement
        class RealTimePaymentsTransferAcknowledgement < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/real_time_payments_transfer_acknowledgement/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute destination_account_number
          #   #/components/schemas/transaction/properties/source/properties/real_time_payments_transfer_acknowledgement/anyOf/0/properties/destination_account_number
          #
          #   @return [String]
          required :destination_account_number, String

          # @!attribute destination_routing_number
          #   #/components/schemas/transaction/properties/source/properties/real_time_payments_transfer_acknowledgement/anyOf/0/properties/destination_routing_number
          #
          #   @return [String]
          required :destination_routing_number, String

          # @!attribute remittance_information
          #   #/components/schemas/transaction/properties/source/properties/real_time_payments_transfer_acknowledgement/anyOf/0/properties/remittance_information
          #
          #   @return [String]
          required :remittance_information, String

          # @!attribute transfer_id
          #   #/components/schemas/transaction/properties/source/properties/real_time_payments_transfer_acknowledgement/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/real_time_payments_transfer_acknowledgement
          #   #
          #   # @param amount [Integer]
          #   # @param destination_account_number [String]
          #   # @param destination_routing_number [String]
          #   # @param remittance_information [String]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(
          #     amount:,
          #     destination_account_number:,
          #     destination_routing_number:,
          #     remittance_information:,
          #     transfer_id:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#sample_funds
        class SampleFunds < Increase::Internal::Type::BaseModel
          # @!attribute originator
          #   #/components/schemas/transaction/properties/source/properties/sample_funds/anyOf/0/properties/originator
          #
          #   @return [String]
          required :originator, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/sample_funds
          #   #
          #   # @param originator [String]
          #   #
          #   def initialize(originator:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::Transaction::Source#wire_transfer_intention
        class WireTransferIntention < Increase::Internal::Type::BaseModel
          # @!attribute account_number
          #   #/components/schemas/transaction/properties/source/properties/wire_transfer_intention/anyOf/0/properties/account_number
          #
          #   @return [String]
          required :account_number, String

          # @!attribute amount
          #   #/components/schemas/transaction/properties/source/properties/wire_transfer_intention/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute message_to_recipient
          #   #/components/schemas/transaction/properties/source/properties/wire_transfer_intention/anyOf/0/properties/message_to_recipient
          #
          #   @return [String]
          required :message_to_recipient, String

          # @!attribute routing_number
          #   #/components/schemas/transaction/properties/source/properties/wire_transfer_intention/anyOf/0/properties/routing_number
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute transfer_id
          #   #/components/schemas/transaction/properties/source/properties/wire_transfer_intention/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/transaction/properties/source/properties/wire_transfer_intention
          #   #
          #   # @param account_number [String]
          #   # @param amount [Integer]
          #   # @param message_to_recipient [String]
          #   # @param routing_number [String]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(account_number:, amount:, message_to_recipient:, routing_number:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      # #/components/schemas/transaction/properties/type
      #
      # @see Increase::Models::Transaction#type
      module Type
        extend Increase::Internal::Type::Enum

        TRANSACTION = :transaction

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
