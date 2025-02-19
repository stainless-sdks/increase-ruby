# typed: strong

module Increase
  module Models
    class Transaction < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def route_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def route_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def route_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def route_type=(_)
      end

      sig { returns(Increase::Models::Transaction::Source) }
      def source
      end

      sig { params(_: Increase::Models::Transaction::Source).returns(Increase::Models::Transaction::Source) }
      def source=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          created_at: Time,
          currency: Symbol,
          description: String,
          route_id: T.nilable(String),
          route_type: T.nilable(Symbol),
          source: Increase::Models::Transaction::Source,
          type: Symbol
        ).void
      end
      def initialize(
        id:,
        account_id:,
        amount:,
        created_at:,
        currency:,
        description:,
        route_id:,
        route_type:,
        source:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            amount: Integer,
            created_at: Time,
            currency: Symbol,
            description: String,
            route_id: T.nilable(String),
            route_type: T.nilable(Symbol),
            source: Increase::Models::Transaction::Source,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Currency < Increase::Enum
        abstract!

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class RouteType < Increase::Enum
        abstract!

        # An Account Number.
        ACCOUNT_NUMBER = T.let(:account_number, T.nilable(Symbol))

        # A Card.
        CARD = T.let(:card, T.nilable(Symbol))

        # A Lockbox.
        LOCKBOX = T.let(:lockbox, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Source < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::Transaction::Source::AccountTransferIntention)) }
        def account_transfer_intention
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::AccountTransferIntention)).returns(T.nilable(Increase::Models::Transaction::Source::AccountTransferIntention))
        end
        def account_transfer_intention=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferIntention)) }
        def ach_transfer_intention
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::ACHTransferIntention)).returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferIntention))
        end
        def ach_transfer_intention=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferRejection)) }
        def ach_transfer_rejection
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::ACHTransferRejection)).returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferRejection))
        end
        def ach_transfer_rejection=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferReturn)) }
        def ach_transfer_return
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::ACHTransferReturn)).returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferReturn))
        end
        def ach_transfer_return=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::CardDisputeAcceptance)) }
        def card_dispute_acceptance
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CardDisputeAcceptance)).returns(T.nilable(Increase::Models::Transaction::Source::CardDisputeAcceptance))
        end
        def card_dispute_acceptance=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::CardDisputeLoss)) }
        def card_dispute_loss
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CardDisputeLoss)).returns(T.nilable(Increase::Models::Transaction::Source::CardDisputeLoss))
        end
        def card_dispute_loss=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund)) }
        def card_refund
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund)).returns(T.nilable(Increase::Models::Transaction::Source::CardRefund))
        end
        def card_refund=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRevenuePayment)) }
        def card_revenue_payment
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CardRevenuePayment)).returns(T.nilable(Increase::Models::Transaction::Source::CardRevenuePayment))
        end
        def card_revenue_payment=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement)) }
        def card_settlement
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement)).returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement))
        end
        def card_settlement=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::CashbackPayment)) }
        def cashback_payment
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CashbackPayment)).returns(T.nilable(Increase::Models::Transaction::Source::CashbackPayment))
        end
        def cashback_payment=(_)
        end

        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::CheckDepositAcceptance)) }
        def check_deposit_acceptance
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CheckDepositAcceptance)).returns(T.nilable(Increase::Models::Transaction::Source::CheckDepositAcceptance))
        end
        def check_deposit_acceptance=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::CheckDepositReturn)) }
        def check_deposit_return
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CheckDepositReturn)).returns(T.nilable(Increase::Models::Transaction::Source::CheckDepositReturn))
        end
        def check_deposit_return=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::CheckTransferDeposit)) }
        def check_transfer_deposit
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CheckTransferDeposit)).returns(T.nilable(Increase::Models::Transaction::Source::CheckTransferDeposit))
        end
        def check_transfer_deposit=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::FeePayment)) }
        def fee_payment
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::FeePayment)).returns(T.nilable(Increase::Models::Transaction::Source::FeePayment))
        end
        def fee_payment=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer)) }
        def inbound_ach_transfer
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer)).returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer))
        end
        def inbound_ach_transfer=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransferReturnIntention)) }
        def inbound_ach_transfer_return_intention
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundACHTransferReturnIntention)).returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransferReturnIntention))
        end
        def inbound_ach_transfer_return_intention=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundCheckAdjustment)) }
        def inbound_check_adjustment
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundCheckAdjustment)).returns(T.nilable(Increase::Models::Transaction::Source::InboundCheckAdjustment))
        end
        def inbound_check_adjustment=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention)) }
        def inbound_check_deposit_return_intention
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention)).returns(T.nilable(Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention))
        end
        def inbound_check_deposit_return_intention=(_)
        end

        sig do
          returns(T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation))
        end
        def inbound_real_time_payments_transfer_confirmation
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation)).returns(T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation))
        end
        def inbound_real_time_payments_transfer_confirmation=(_)
        end

        sig do
          returns(T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline))
        end
        def inbound_real_time_payments_transfer_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline)).returns(T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline))
        end
        def inbound_real_time_payments_transfer_decline=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundWireReversal)) }
        def inbound_wire_reversal
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundWireReversal)).returns(T.nilable(Increase::Models::Transaction::Source::InboundWireReversal))
        end
        def inbound_wire_reversal=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundWireTransfer)) }
        def inbound_wire_transfer
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundWireTransfer)).returns(T.nilable(Increase::Models::Transaction::Source::InboundWireTransfer))
        end
        def inbound_wire_transfer=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundWireTransferReversal)) }
        def inbound_wire_transfer_reversal
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundWireTransferReversal)).returns(T.nilable(Increase::Models::Transaction::Source::InboundWireTransferReversal))
        end
        def inbound_wire_transfer_reversal=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::InterestPayment)) }
        def interest_payment
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InterestPayment)).returns(T.nilable(Increase::Models::Transaction::Source::InterestPayment))
        end
        def interest_payment=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::InternalSource)) }
        def internal_source
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InternalSource)).returns(T.nilable(Increase::Models::Transaction::Source::InternalSource))
        end
        def internal_source=(_)
        end

        sig { returns(T.nilable(T.anything)) }
        def other
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def other=(_)
        end

        sig do
          returns(T.nilable(Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement))
        end
        def real_time_payments_transfer_acknowledgement
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement)).returns(T.nilable(Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement))
        end
        def real_time_payments_transfer_acknowledgement=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::SampleFunds)) }
        def sample_funds
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::SampleFunds)).returns(T.nilable(Increase::Models::Transaction::Source::SampleFunds))
        end
        def sample_funds=(_)
        end

        sig { returns(T.nilable(Increase::Models::Transaction::Source::WireTransferIntention)) }
        def wire_transfer_intention
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::WireTransferIntention)).returns(T.nilable(Increase::Models::Transaction::Source::WireTransferIntention))
        end
        def wire_transfer_intention=(_)
        end

        sig do
          params(
            account_transfer_intention: T.nilable(Increase::Models::Transaction::Source::AccountTransferIntention),
            ach_transfer_intention: T.nilable(Increase::Models::Transaction::Source::ACHTransferIntention),
            ach_transfer_rejection: T.nilable(Increase::Models::Transaction::Source::ACHTransferRejection),
            ach_transfer_return: T.nilable(Increase::Models::Transaction::Source::ACHTransferReturn),
            card_dispute_acceptance: T.nilable(Increase::Models::Transaction::Source::CardDisputeAcceptance),
            card_dispute_loss: T.nilable(Increase::Models::Transaction::Source::CardDisputeLoss),
            card_refund: T.nilable(Increase::Models::Transaction::Source::CardRefund),
            card_revenue_payment: T.nilable(Increase::Models::Transaction::Source::CardRevenuePayment),
            card_settlement: T.nilable(Increase::Models::Transaction::Source::CardSettlement),
            cashback_payment: T.nilable(Increase::Models::Transaction::Source::CashbackPayment),
            category: Symbol,
            check_deposit_acceptance: T.nilable(Increase::Models::Transaction::Source::CheckDepositAcceptance),
            check_deposit_return: T.nilable(Increase::Models::Transaction::Source::CheckDepositReturn),
            check_transfer_deposit: T.nilable(Increase::Models::Transaction::Source::CheckTransferDeposit),
            fee_payment: T.nilable(Increase::Models::Transaction::Source::FeePayment),
            inbound_ach_transfer: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer),
            inbound_ach_transfer_return_intention: T.nilable(Increase::Models::Transaction::Source::InboundACHTransferReturnIntention),
            inbound_check_adjustment: T.nilable(Increase::Models::Transaction::Source::InboundCheckAdjustment),
            inbound_check_deposit_return_intention: T.nilable(Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention),
            inbound_real_time_payments_transfer_confirmation: T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation),
            inbound_real_time_payments_transfer_decline: T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline),
            inbound_wire_reversal: T.nilable(Increase::Models::Transaction::Source::InboundWireReversal),
            inbound_wire_transfer: T.nilable(Increase::Models::Transaction::Source::InboundWireTransfer),
            inbound_wire_transfer_reversal: T.nilable(Increase::Models::Transaction::Source::InboundWireTransferReversal),
            interest_payment: T.nilable(Increase::Models::Transaction::Source::InterestPayment),
            internal_source: T.nilable(Increase::Models::Transaction::Source::InternalSource),
            other: T.nilable(T.anything),
            real_time_payments_transfer_acknowledgement: T.nilable(Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement),
            sample_funds: T.nilable(Increase::Models::Transaction::Source::SampleFunds),
            wire_transfer_intention: T.nilable(Increase::Models::Transaction::Source::WireTransferIntention)
          ).void
        end
        def initialize(
          account_transfer_intention:,
          ach_transfer_intention:,
          ach_transfer_rejection:,
          ach_transfer_return:,
          card_dispute_acceptance:,
          card_dispute_loss:,
          card_refund:,
          card_revenue_payment:,
          card_settlement:,
          cashback_payment:,
          category:,
          check_deposit_acceptance:,
          check_deposit_return:,
          check_transfer_deposit:,
          fee_payment:,
          inbound_ach_transfer:,
          inbound_ach_transfer_return_intention:,
          inbound_check_adjustment:,
          inbound_check_deposit_return_intention:,
          inbound_real_time_payments_transfer_confirmation:,
          inbound_real_time_payments_transfer_decline:,
          inbound_wire_reversal:,
          inbound_wire_transfer:,
          inbound_wire_transfer_reversal:,
          interest_payment:,
          internal_source:,
          other:,
          real_time_payments_transfer_acknowledgement:,
          sample_funds:,
          wire_transfer_intention:
        )
        end

        sig do
          override.returns(
            {
              account_transfer_intention: T.nilable(Increase::Models::Transaction::Source::AccountTransferIntention), ach_transfer_intention: T.nilable(Increase::Models::Transaction::Source::ACHTransferIntention), ach_transfer_rejection: T.nilable(Increase::Models::Transaction::Source::ACHTransferRejection), ach_transfer_return: T.nilable(Increase::Models::Transaction::Source::ACHTransferReturn), card_dispute_acceptance: T.nilable(Increase::Models::Transaction::Source::CardDisputeAcceptance), card_dispute_loss: T.nilable(Increase::Models::Transaction::Source::CardDisputeLoss), card_refund: T.nilable(Increase::Models::Transaction::Source::CardRefund), card_revenue_payment: T.nilable(Increase::Models::Transaction::Source::CardRevenuePayment), card_settlement: T.nilable(Increase::Models::Transaction::Source::CardSettlement), cashback_payment: T.nilable(Increase::Models::Transaction::Source::CashbackPayment), category: Symbol, check_deposit_acceptance: T.nilable(Increase::Models::Transaction::Source::CheckDepositAcceptance), check_deposit_return: T.nilable(Increase::Models::Transaction::Source::CheckDepositReturn), check_transfer_deposit: T.nilable(Increase::Models::Transaction::Source::CheckTransferDeposit), fee_payment: T.nilable(Increase::Models::Transaction::Source::FeePayment), inbound_ach_transfer: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer), inbound_ach_transfer_return_intention: T.nilable(Increase::Models::Transaction::Source::InboundACHTransferReturnIntention), inbound_check_adjustment: T.nilable(Increase::Models::Transaction::Source::InboundCheckAdjustment), inbound_check_deposit_return_intention: T.nilable(Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention), inbound_real_time_payments_transfer_confirmation: T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation), inbound_real_time_payments_transfer_decline: T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline), inbound_wire_reversal: T.nilable(Increase::Models::Transaction::Source::InboundWireReversal), inbound_wire_transfer: T.nilable(Increase::Models::Transaction::Source::InboundWireTransfer), inbound_wire_transfer_reversal: T.nilable(Increase::Models::Transaction::Source::InboundWireTransferReversal), interest_payment: T.nilable(Increase::Models::Transaction::Source::InterestPayment), internal_source: T.nilable(Increase::Models::Transaction::Source::InternalSource), other: T.nilable(T.anything), real_time_payments_transfer_acknowledgement: T.nilable(Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement), sample_funds: T.nilable(Increase::Models::Transaction::Source::SampleFunds), wire_transfer_intention: T.nilable(Increase::Models::Transaction::Source::WireTransferIntention)
            }
          )
        end
        def to_hash
        end

        class AccountTransferIntention < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(String) }
          def destination_account_id
          end

          sig { params(_: String).returns(String) }
          def destination_account_id=(_)
          end

          sig { returns(String) }
          def source_account_id
          end

          sig { params(_: String).returns(String) }
          def source_account_id=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
              amount: Integer,
              currency: Symbol,
              description: String,
              destination_account_id: String,
              source_account_id: String,
              transfer_id: String
            ).void
          end
          def initialize(
            amount:,
            currency:,
            description:,
            destination_account_id:,
            source_account_id:,
            transfer_id:
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                currency: Symbol,
                description: String,
                destination_account_id: String,
                source_account_id: String,
                transfer_id: String
              }
            )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class ACHTransferIntention < Increase::BaseModel
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          sig { returns(String) }
          def statement_descriptor
          end

          sig { params(_: String).returns(String) }
          def statement_descriptor=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
              account_number: String,
              amount: Integer,
              routing_number: String,
              statement_descriptor: String,
              transfer_id: String
            ).void
          end
          def initialize(account_number:, amount:, routing_number:, statement_descriptor:, transfer_id:)
          end

          sig do
            override.returns(
              {
                account_number: String,
                amount: Integer,
                routing_number: String,
                statement_descriptor: String,
                transfer_id: String
              }
            )
          end
          def to_hash
          end
        end

        class ACHTransferRejection < Increase::BaseModel
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig { params(transfer_id: String).void }
          def initialize(transfer_id:)
          end

          sig { override.returns({transfer_id: String}) }
          def to_hash
          end
        end

        class ACHTransferReturn < Increase::BaseModel
          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(String) }
          def raw_return_reason_code
          end

          sig { params(_: String).returns(String) }
          def raw_return_reason_code=(_)
          end

          sig { returns(Symbol) }
          def return_reason_code
          end

          sig { params(_: Symbol).returns(Symbol) }
          def return_reason_code=(_)
          end

          sig { returns(String) }
          def trace_number
          end

          sig { params(_: String).returns(String) }
          def trace_number=(_)
          end

          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
              created_at: Time,
              raw_return_reason_code: String,
              return_reason_code: Symbol,
              trace_number: String,
              transaction_id: String,
              transfer_id: String
            ).void
          end
          def initialize(
            created_at:,
            raw_return_reason_code:,
            return_reason_code:,
            trace_number:,
            transaction_id:,
            transfer_id:
          )
          end

          sig do
            override.returns(
              {
                created_at: Time,
                raw_return_reason_code: String,
                return_reason_code: Symbol,
                trace_number: String,
                transaction_id: String,
                transfer_id: String
              }
            )
          end
          def to_hash
          end

          class ReturnReasonCode < Increase::Enum
            abstract!

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
            UNAUTHORIZED_DEBIT_TO_CONSUMER_ACCOUNT_USING_CORPORATE_SEC_CODE = :unauthorized_debit_to_consumer_account_using_corporate_sec_code

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
            CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE = :customer_advised_unauthorized_improper_ineligible_or_incomplete

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
            REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY = :representative_payee_deceased_or_unable_to_continue_in_that_capacity

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CardDisputeAcceptance < Increase::BaseModel
          sig { returns(Time) }
          def accepted_at
          end

          sig { params(_: Time).returns(Time) }
          def accepted_at=(_)
          end

          sig { returns(String) }
          def card_dispute_id
          end

          sig { params(_: String).returns(String) }
          def card_dispute_id=(_)
          end

          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          sig { params(accepted_at: Time, card_dispute_id: String, transaction_id: String).void }
          def initialize(accepted_at:, card_dispute_id:, transaction_id:)
          end

          sig { override.returns({accepted_at: Time, card_dispute_id: String, transaction_id: String}) }
          def to_hash
          end
        end

        class CardDisputeLoss < Increase::BaseModel
          sig { returns(String) }
          def card_dispute_id
          end

          sig { params(_: String).returns(String) }
          def card_dispute_id=(_)
          end

          sig { returns(String) }
          def explanation
          end

          sig { params(_: String).returns(String) }
          def explanation=(_)
          end

          sig { returns(Time) }
          def lost_at
          end

          sig { params(_: Time).returns(Time) }
          def lost_at=(_)
          end

          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          sig do
            params(card_dispute_id: String, explanation: String, lost_at: Time, transaction_id: String).void
          end
          def initialize(card_dispute_id:, explanation:, lost_at:, transaction_id:)
          end

          sig do
            override.returns(
              {
                card_dispute_id: String,
                explanation: String,
                lost_at: Time,
                transaction_id: String
              }
            )
          end
          def to_hash
          end
        end

        class CardRefund < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::Cashback)) }
          def cashback
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::Cashback)).returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::Cashback))
          end
          def cashback=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::Interchange)) }
          def interchange
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::Interchange)).returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::Interchange))
          end
          def interchange=(_)
          end

          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          sig { returns(String) }
          def merchant_city
          end

          sig { params(_: String).returns(String) }
          def merchant_city=(_)
          end

          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          sig { returns(String) }
          def merchant_name
          end

          sig { params(_: String).returns(String) }
          def merchant_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          sig { returns(Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers).returns(Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(Integer) }
          def presentment_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def presentment_amount=(_)
          end

          sig { returns(String) }
          def presentment_currency
          end

          sig { params(_: String).returns(String) }
          def presentment_currency=(_)
          end

          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails)) }
          def purchase_details
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails)).returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails))
          end
          def purchase_details=(_)
          end

          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              id: String,
              amount: Integer,
              card_payment_id: String,
              cashback: T.nilable(Increase::Models::Transaction::Source::CardRefund::Cashback),
              currency: Symbol,
              interchange: T.nilable(Increase::Models::Transaction::Source::CardRefund::Interchange),
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: String,
              merchant_country: String,
              merchant_name: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_identifiers: Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers,
              presentment_amount: Integer,
              presentment_currency: String,
              purchase_details: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails),
              transaction_id: String,
              type: Symbol
            ).void
          end
          def initialize(
            id:,
            amount:,
            card_payment_id:,
            cashback:,
            currency:,
            interchange:,
            merchant_acceptor_id:,
            merchant_category_code:,
            merchant_city:,
            merchant_country:,
            merchant_name:,
            merchant_postal_code:,
            merchant_state:,
            network_identifiers:,
            presentment_amount:,
            presentment_currency:,
            purchase_details:,
            transaction_id:,
            type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: Integer,
                card_payment_id: String,
                cashback: T.nilable(Increase::Models::Transaction::Source::CardRefund::Cashback),
                currency: Symbol,
                interchange: T.nilable(Increase::Models::Transaction::Source::CardRefund::Interchange),
                merchant_acceptor_id: String,
                merchant_category_code: String,
                merchant_city: String,
                merchant_country: String,
                merchant_name: String,
                merchant_postal_code: T.nilable(String),
                merchant_state: T.nilable(String),
                network_identifiers: Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers,
                presentment_amount: Integer,
                presentment_currency: String,
                purchase_details: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails),
                transaction_id: String,
                type: Symbol
              }
            )
          end
          def to_hash
          end

          class Cashback < Increase::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(Symbol) }
            def currency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def currency=(_)
            end

            sig { params(amount: String, currency: Symbol).void }
            def initialize(amount:, currency:)
            end

            sig { override.returns({amount: String, currency: Symbol}) }
            def to_hash
            end

            class Currency < Increase::Enum
              abstract!

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

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Interchange < Increase::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def code
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def code=(_)
            end

            sig { returns(Symbol) }
            def currency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def currency=(_)
            end

            sig { params(amount: String, code: T.nilable(String), currency: Symbol).void }
            def initialize(amount:, code:, currency:)
            end

            sig { override.returns({amount: String, code: T.nilable(String), currency: Symbol}) }
            def to_hash
            end

            class Currency < Increase::Enum
              abstract!

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

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(String) }
            def acquirer_business_id
            end

            sig { params(_: String).returns(String) }
            def acquirer_business_id=(_)
            end

            sig { returns(String) }
            def acquirer_reference_number
            end

            sig { params(_: String).returns(String) }
            def acquirer_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

            sig do
              params(
                acquirer_business_id: String,
                acquirer_reference_number: String,
                transaction_id: T.nilable(String)
              ).void
            end
            def initialize(acquirer_business_id:, acquirer_reference_number:, transaction_id:)
            end

            sig do
              override.returns(
                {
                  acquirer_business_id: String,
                  acquirer_reference_number: String,
                  transaction_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class PurchaseDetails < Increase::BaseModel
            sig do
              returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental))
            end
            def car_rental
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental)).returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental))
            end
            def car_rental=(_)
            end

            sig { returns(T.nilable(String)) }
            def customer_reference_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def customer_reference_identifier=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def local_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def local_tax_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def local_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def local_tax_currency=(_)
            end

            sig do
              returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging))
            end
            def lodging
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging)).returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging))
            end
            def lodging=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def national_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def national_tax_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def national_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def national_tax_currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def purchase_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_identifier=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def purchase_identifier_format
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def purchase_identifier_format=(_)
            end

            sig do
              returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel))
            end
            def travel
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel)).returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel))
            end
            def travel=(_)
            end

            sig do
              params(
                car_rental: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental),
                customer_reference_identifier: T.nilable(String),
                local_tax_amount: T.nilable(Integer),
                local_tax_currency: T.nilable(String),
                lodging: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging),
                national_tax_amount: T.nilable(Integer),
                national_tax_currency: T.nilable(String),
                purchase_identifier: T.nilable(String),
                purchase_identifier_format: T.nilable(Symbol),
                travel: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel)
              ).void
            end
            def initialize(
              car_rental:,
              customer_reference_identifier:,
              local_tax_amount:,
              local_tax_currency:,
              lodging:,
              national_tax_amount:,
              national_tax_currency:,
              purchase_identifier:,
              purchase_identifier_format:,
              travel:
            )
            end

            sig do
              override.returns(
                {
                  car_rental: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental), customer_reference_identifier: T.nilable(String), local_tax_amount: T.nilable(Integer), local_tax_currency: T.nilable(String), lodging: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging), national_tax_amount: T.nilable(Integer), national_tax_currency: T.nilable(String), purchase_identifier: T.nilable(String), purchase_identifier_format: T.nilable(Symbol), travel: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel)
                }
              )
            end
            def to_hash
            end

            class CarRental < Increase::BaseModel
              sig { returns(T.nilable(String)) }
              def car_class_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def car_class_code=(_)
              end

              sig { returns(T.nilable(Date)) }
              def checkout_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def checkout_date=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def daily_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_rental_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def daily_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_rental_rate_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def days_rented
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def days_rented=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def extra_charges
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def extra_charges=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def fuel_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def fuel_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def fuel_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def fuel_charges_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def insurance_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def insurance_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def insurance_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def insurance_charges_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def no_show_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def no_show_indicator=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency=(_)
              end

              sig { returns(T.nilable(String)) }
              def renter_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def renter_name=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def weekly_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def weekly_rental_rate_currency=(_)
              end

              sig do
                params(
                  car_class_code: T.nilable(String),
                  checkout_date: T.nilable(Date),
                  daily_rental_rate_amount: T.nilable(Integer),
                  daily_rental_rate_currency: T.nilable(String),
                  days_rented: T.nilable(Integer),
                  extra_charges: T.nilable(Symbol),
                  fuel_charges_amount: T.nilable(Integer),
                  fuel_charges_currency: T.nilable(String),
                  insurance_charges_amount: T.nilable(Integer),
                  insurance_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(Symbol),
                  one_way_drop_off_charges_amount: T.nilable(Integer),
                  one_way_drop_off_charges_currency: T.nilable(String),
                  renter_name: T.nilable(String),
                  weekly_rental_rate_amount: T.nilable(Integer),
                  weekly_rental_rate_currency: T.nilable(String)
                ).void
              end
              def initialize(
                car_class_code:,
                checkout_date:,
                daily_rental_rate_amount:,
                daily_rental_rate_currency:,
                days_rented:,
                extra_charges:,
                fuel_charges_amount:,
                fuel_charges_currency:,
                insurance_charges_amount:,
                insurance_charges_currency:,
                no_show_indicator:,
                one_way_drop_off_charges_amount:,
                one_way_drop_off_charges_currency:,
                renter_name:,
                weekly_rental_rate_amount:,
                weekly_rental_rate_currency:
              )
              end

              sig do
                override.returns(
                  {
                    car_class_code: T.nilable(String),
                    checkout_date: T.nilable(Date),
                    daily_rental_rate_amount: T.nilable(Integer),
                    daily_rental_rate_currency: T.nilable(String),
                    days_rented: T.nilable(Integer),
                    extra_charges: T.nilable(Symbol),
                    fuel_charges_amount: T.nilable(Integer),
                    fuel_charges_currency: T.nilable(String),
                    insurance_charges_amount: T.nilable(Integer),
                    insurance_charges_currency: T.nilable(String),
                    no_show_indicator: T.nilable(Symbol),
                    one_way_drop_off_charges_amount: T.nilable(Integer),
                    one_way_drop_off_charges_currency: T.nilable(String),
                    renter_name: T.nilable(String),
                    weekly_rental_rate_amount: T.nilable(Integer),
                    weekly_rental_rate_currency: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class ExtraCharges < Increase::Enum
                abstract!

                # No extra charge
                NO_EXTRA_CHARGE = T.let(:no_extra_charge, T.nilable(Symbol))

                # Gas
                GAS = T.let(:gas, T.nilable(Symbol))

                # Extra mileage
                EXTRA_MILEAGE = T.let(:extra_mileage, T.nilable(Symbol))

                # Late return
                LATE_RETURN = T.let(:late_return, T.nilable(Symbol))

                # One way service fee
                ONE_WAY_SERVICE_FEE = T.let(:one_way_service_fee, T.nilable(Symbol))

                # Parking violation
                PARKING_VIOLATION = T.let(:parking_violation, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class NoShowIndicator < Increase::Enum
                abstract!

                # Not applicable
                NOT_APPLICABLE = T.let(:not_applicable, T.nilable(Symbol))

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = T.let(:no_show_for_specialized_vehicle, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class Lodging < Increase::BaseModel
              sig { returns(T.nilable(Date)) }
              def check_in_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def check_in_date=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def daily_room_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_room_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def daily_room_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_room_rate_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def extra_charges
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def extra_charges=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def folio_cash_advances_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def folio_cash_advances_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def folio_cash_advances_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def folio_cash_advances_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def food_beverage_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def food_beverage_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def food_beverage_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def food_beverage_charges_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def no_show_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def no_show_indicator=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def prepaid_expenses_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def prepaid_expenses_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def prepaid_expenses_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def prepaid_expenses_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def room_nights
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def room_nights=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def total_room_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_room_tax_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def total_room_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_room_tax_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def total_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_tax_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def total_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_tax_currency=(_)
              end

              sig do
                params(
                  check_in_date: T.nilable(Date),
                  daily_room_rate_amount: T.nilable(Integer),
                  daily_room_rate_currency: T.nilable(String),
                  extra_charges: T.nilable(Symbol),
                  folio_cash_advances_amount: T.nilable(Integer),
                  folio_cash_advances_currency: T.nilable(String),
                  food_beverage_charges_amount: T.nilable(Integer),
                  food_beverage_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(Symbol),
                  prepaid_expenses_amount: T.nilable(Integer),
                  prepaid_expenses_currency: T.nilable(String),
                  room_nights: T.nilable(Integer),
                  total_room_tax_amount: T.nilable(Integer),
                  total_room_tax_currency: T.nilable(String),
                  total_tax_amount: T.nilable(Integer),
                  total_tax_currency: T.nilable(String)
                ).void
              end
              def initialize(
                check_in_date:,
                daily_room_rate_amount:,
                daily_room_rate_currency:,
                extra_charges:,
                folio_cash_advances_amount:,
                folio_cash_advances_currency:,
                food_beverage_charges_amount:,
                food_beverage_charges_currency:,
                no_show_indicator:,
                prepaid_expenses_amount:,
                prepaid_expenses_currency:,
                room_nights:,
                total_room_tax_amount:,
                total_room_tax_currency:,
                total_tax_amount:,
                total_tax_currency:
              )
              end

              sig do
                override.returns(
                  {
                    check_in_date: T.nilable(Date),
                    daily_room_rate_amount: T.nilable(Integer),
                    daily_room_rate_currency: T.nilable(String),
                    extra_charges: T.nilable(Symbol),
                    folio_cash_advances_amount: T.nilable(Integer),
                    folio_cash_advances_currency: T.nilable(String),
                    food_beverage_charges_amount: T.nilable(Integer),
                    food_beverage_charges_currency: T.nilable(String),
                    no_show_indicator: T.nilable(Symbol),
                    prepaid_expenses_amount: T.nilable(Integer),
                    prepaid_expenses_currency: T.nilable(String),
                    room_nights: T.nilable(Integer),
                    total_room_tax_amount: T.nilable(Integer),
                    total_room_tax_currency: T.nilable(String),
                    total_tax_amount: T.nilable(Integer),
                    total_tax_currency: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class ExtraCharges < Increase::Enum
                abstract!

                # No extra charge
                NO_EXTRA_CHARGE = T.let(:no_extra_charge, T.nilable(Symbol))

                # Restaurant
                RESTAURANT = T.let(:restaurant, T.nilable(Symbol))

                # Gift shop
                GIFT_SHOP = T.let(:gift_shop, T.nilable(Symbol))

                # Mini bar
                MINI_BAR = T.let(:mini_bar, T.nilable(Symbol))

                # Telephone
                TELEPHONE = T.let(:telephone, T.nilable(Symbol))

                # Other
                OTHER = T.let(:other, T.nilable(Symbol))

                # Laundry
                LAUNDRY = T.let(:laundry, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class NoShowIndicator < Increase::Enum
                abstract!

                # Not applicable
                NOT_APPLICABLE = T.let(:not_applicable, T.nilable(Symbol))

                # No show
                NO_SHOW = T.let(:no_show, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class PurchaseIdentifierFormat < Increase::Enum
              abstract!

              # Free text
              FREE_TEXT = T.let(:free_text, T.nilable(Symbol))

              # Order number
              ORDER_NUMBER = T.let(:order_number, T.nilable(Symbol))

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = T.let(:rental_agreement_number, T.nilable(Symbol))

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = T.let(:hotel_folio_number, T.nilable(Symbol))

              # Invoice number
              INVOICE_NUMBER = T.let(:invoice_number, T.nilable(Symbol))

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Travel < Increase::BaseModel
              sig do
                returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary))
              end
              def ancillary
              end

              sig do
                params(
                  _: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary)
                ).returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary))
              end
              def ancillary=(_)
              end

              sig { returns(T.nilable(String)) }
              def computerized_reservation_system
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def computerized_reservation_system=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def credit_reason_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def credit_reason_indicator=(_)
              end

              sig { returns(T.nilable(Date)) }
              def departure_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def departure_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def origination_city_airport_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def origination_city_airport_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def passenger_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def passenger_name=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def restricted_ticket_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def restricted_ticket_indicator=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def ticket_change_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def ticket_change_indicator=(_)
              end

              sig { returns(T.nilable(String)) }
              def ticket_number
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def ticket_number=(_)
              end

              sig { returns(T.nilable(String)) }
              def travel_agency_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def travel_agency_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_name=(_)
              end

              sig do
                returns(T.nilable(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg]))
              end
              def trip_legs
              end

              sig do
                params(
                  _: T.nilable(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg])
                ).returns(T.nilable(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg]))
              end
              def trip_legs=(_)
              end

              sig do
                params(
                  ancillary: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary),
                  computerized_reservation_system: T.nilable(String),
                  credit_reason_indicator: T.nilable(Symbol),
                  departure_date: T.nilable(Date),
                  origination_city_airport_code: T.nilable(String),
                  passenger_name: T.nilable(String),
                  restricted_ticket_indicator: T.nilable(Symbol),
                  ticket_change_indicator: T.nilable(Symbol),
                  ticket_number: T.nilable(String),
                  travel_agency_code: T.nilable(String),
                  travel_agency_name: T.nilable(String),
                  trip_legs: T.nilable(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg])
                ).void
              end
              def initialize(
                ancillary:,
                computerized_reservation_system:,
                credit_reason_indicator:,
                departure_date:,
                origination_city_airport_code:,
                passenger_name:,
                restricted_ticket_indicator:,
                ticket_change_indicator:,
                ticket_number:,
                travel_agency_code:,
                travel_agency_name:,
                trip_legs:
              )
              end

              sig do
                override.returns(
                  {
                    ancillary: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary), computerized_reservation_system: T.nilable(String), credit_reason_indicator: T.nilable(Symbol), departure_date: T.nilable(Date), origination_city_airport_code: T.nilable(String), passenger_name: T.nilable(String), restricted_ticket_indicator: T.nilable(Symbol), ticket_change_indicator: T.nilable(Symbol), ticket_number: T.nilable(String), travel_agency_code: T.nilable(String), travel_agency_name: T.nilable(String), trip_legs: T.nilable(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg])
                  }
                )
              end
              def to_hash
              end

              class Ancillary < Increase::BaseModel
                sig { returns(T.nilable(String)) }
                def connected_ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def connected_ticket_document_number=(_)
                end

                sig { returns(T.nilable(Symbol)) }
                def credit_reason_indicator
                end

                sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                def credit_reason_indicator=(_)
                end

                sig { returns(T.nilable(String)) }
                def passenger_name_or_description
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def passenger_name_or_description=(_)
                end

                sig do
                  returns(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service])
                end
                def services
                end

                sig do
                  params(
                    _: T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service]
                  ).returns(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service])
                end
                def services=(_)
                end

                sig { returns(T.nilable(String)) }
                def ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def ticket_document_number=(_)
                end

                sig do
                  params(
                    connected_ticket_document_number: T.nilable(String),
                    credit_reason_indicator: T.nilable(Symbol),
                    passenger_name_or_description: T.nilable(String),
                    services: T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service],
                    ticket_document_number: T.nilable(String)
                  ).void
                end
                def initialize(
                  connected_ticket_document_number:,
                  credit_reason_indicator:,
                  passenger_name_or_description:,
                  services:,
                  ticket_document_number:
                )
                end

                sig do
                  override.returns(
                    {
                      connected_ticket_document_number: T.nilable(String),
                      credit_reason_indicator: T.nilable(Symbol),
                      passenger_name_or_description: T.nilable(String),
                      services: T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service],
                      ticket_document_number: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end

                class CreditReasonIndicator < Increase::Enum
                  abstract!

                  # No credit
                  NO_CREDIT = T.let(:no_credit, T.nilable(Symbol))

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                    :passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                  )

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                  )

                  # Other
                  OTHER = T.let(:other, T.nilable(Symbol))

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end

                class Service < Increase::BaseModel
                  sig { returns(T.nilable(Symbol)) }
                  def category
                  end

                  sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                  def category=(_)
                  end

                  sig { returns(T.nilable(String)) }
                  def sub_category
                  end

                  sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                  def sub_category=(_)
                  end

                  sig { params(category: T.nilable(Symbol), sub_category: T.nilable(String)).void }
                  def initialize(category:, sub_category:)
                  end

                  sig { override.returns({category: T.nilable(Symbol), sub_category: T.nilable(String)}) }
                  def to_hash
                  end

                  class Category < Increase::Enum
                    abstract!

                    # None
                    NONE = T.let(:none, T.nilable(Symbol))

                    # Bundled service
                    BUNDLED_SERVICE = T.let(:bundled_service, T.nilable(Symbol))

                    # Baggage fee
                    BAGGAGE_FEE = T.let(:baggage_fee, T.nilable(Symbol))

                    # Change fee
                    CHANGE_FEE = T.let(:change_fee, T.nilable(Symbol))

                    # Cargo
                    CARGO = T.let(:cargo, T.nilable(Symbol))

                    # Carbon offset
                    CARBON_OFFSET = T.let(:carbon_offset, T.nilable(Symbol))

                    # Frequent flyer
                    FREQUENT_FLYER = T.let(:frequent_flyer, T.nilable(Symbol))

                    # Gift card
                    GIFT_CARD = T.let(:gift_card, T.nilable(Symbol))

                    # Ground transport
                    GROUND_TRANSPORT = T.let(:ground_transport, T.nilable(Symbol))

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = T.let(:in_flight_entertainment, T.nilable(Symbol))

                    # Lounge
                    LOUNGE = T.let(:lounge, T.nilable(Symbol))

                    # Medical
                    MEDICAL = T.let(:medical, T.nilable(Symbol))

                    # Meal beverage
                    MEAL_BEVERAGE = T.let(:meal_beverage, T.nilable(Symbol))

                    # Other
                    OTHER = T.let(:other, T.nilable(Symbol))

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = T.let(:passenger_assist_fee, T.nilable(Symbol))

                    # Pets
                    PETS = T.let(:pets, T.nilable(Symbol))

                    # Seat fees
                    SEAT_FEES = T.let(:seat_fees, T.nilable(Symbol))

                    # Standby
                    STANDBY = T.let(:standby, T.nilable(Symbol))

                    # Service fee
                    SERVICE_FEE = T.let(:service_fee, T.nilable(Symbol))

                    # Store
                    STORE = T.let(:store, T.nilable(Symbol))

                    # Travel service
                    TRAVEL_SERVICE = T.let(:travel_service, T.nilable(Symbol))

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = T.let(:unaccompanied_travel, T.nilable(Symbol))

                    # Upgrades
                    UPGRADES = T.let(:upgrades, T.nilable(Symbol))

                    # Wi-fi
                    WIFI = T.let(:wifi, T.nilable(Symbol))

                    sig { override.returns(T::Array[Symbol]) }
                    def self.values
                    end
                  end
                end
              end

              class CreditReasonIndicator < Increase::Enum
                abstract!

                # No credit
                NO_CREDIT = T.let(:no_credit, T.nilable(Symbol))

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                  :passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                )

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                  :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                )

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = T.let(:airline_ticket_cancellation, T.nilable(Symbol))

                # Other
                OTHER = T.let(:other, T.nilable(Symbol))

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = T.let(:partial_refund_of_airline_ticket, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class RestrictedTicketIndicator < Increase::Enum
                abstract!

                # No restrictions
                NO_RESTRICTIONS = T.let(:no_restrictions, T.nilable(Symbol))

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = T.let(:restricted_non_refundable_ticket, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class TicketChangeIndicator < Increase::Enum
                abstract!

                # None
                NONE = T.let(:none, T.nilable(Symbol))

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = T.let(:change_to_existing_ticket, T.nilable(Symbol))

                # New ticket
                NEW_TICKET = T.let(:new_ticket, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class TripLeg < Increase::BaseModel
                sig { returns(T.nilable(String)) }
                def carrier_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def carrier_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def destination_city_airport_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def destination_city_airport_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def fare_basis_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def fare_basis_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def flight_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def flight_number=(_)
                end

                sig { returns(T.nilable(String)) }
                def service_class
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def service_class=(_)
                end

                sig { returns(T.nilable(Symbol)) }
                def stop_over_code
                end

                sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                def stop_over_code=(_)
                end

                sig do
                  params(
                    carrier_code: T.nilable(String),
                    destination_city_airport_code: T.nilable(String),
                    fare_basis_code: T.nilable(String),
                    flight_number: T.nilable(String),
                    service_class: T.nilable(String),
                    stop_over_code: T.nilable(Symbol)
                  ).void
                end
                def initialize(
                  carrier_code:,
                  destination_city_airport_code:,
                  fare_basis_code:,
                  flight_number:,
                  service_class:,
                  stop_over_code:
                )
                end

                sig do
                  override.returns(
                    {
                      carrier_code: T.nilable(String),
                      destination_city_airport_code: T.nilable(String),
                      fare_basis_code: T.nilable(String),
                      flight_number: T.nilable(String),
                      service_class: T.nilable(String),
                      stop_over_code: T.nilable(Symbol)
                    }
                  )
                end
                def to_hash
                end

                class StopOverCode < Increase::Enum
                  abstract!

                  # None
                  NONE = T.let(:none, T.nilable(Symbol))

                  # Stop over allowed
                  STOP_OVER_ALLOWED = T.let(:stop_over_allowed, T.nilable(Symbol))

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = T.let(:stop_over_not_allowed, T.nilable(Symbol))

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end
            end
          end

          class Type < Increase::Enum
            abstract!

            CARD_REFUND = :card_refund

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CardRevenuePayment < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(Time) }
          def period_end
          end

          sig { params(_: Time).returns(Time) }
          def period_end=(_)
          end

          sig { returns(Time) }
          def period_start
          end

          sig { params(_: Time).returns(Time) }
          def period_start=(_)
          end

          sig { returns(T.nilable(String)) }
          def transacted_on_account_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def transacted_on_account_id=(_)
          end

          sig do
            params(
              amount: Integer,
              currency: Symbol,
              period_end: Time,
              period_start: Time,
              transacted_on_account_id: T.nilable(String)
            ).void
          end
          def initialize(amount:, currency:, period_end:, period_start:, transacted_on_account_id:)
          end

          sig do
            override.returns(
              {
                amount: Integer,
                currency: Symbol,
                period_end: Time,
                period_start: Time,
                transacted_on_account_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CardSettlement < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def card_authorization
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def card_authorization=(_)
          end

          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::Cashback)) }
          def cashback
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::Cashback)).returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::Cashback))
          end
          def cashback=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::Interchange)) }
          def interchange
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::Interchange)).returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::Interchange))
          end
          def interchange=(_)
          end

          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          sig { returns(String) }
          def merchant_city
          end

          sig { params(_: String).returns(String) }
          def merchant_city=(_)
          end

          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          sig { returns(String) }
          def merchant_name
          end

          sig { params(_: String).returns(String) }
          def merchant_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          sig { returns(Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers).returns(Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(T.nilable(String)) }
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
          end

          sig { returns(Integer) }
          def presentment_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def presentment_amount=(_)
          end

          sig { returns(String) }
          def presentment_currency
          end

          sig { params(_: String).returns(String) }
          def presentment_currency=(_)
          end

          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails)) }
          def purchase_details
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails)).returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails))
          end
          def purchase_details=(_)
          end

          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              id: String,
              amount: Integer,
              card_authorization: T.nilable(String),
              card_payment_id: String,
              cashback: T.nilable(Increase::Models::Transaction::Source::CardSettlement::Cashback),
              currency: Symbol,
              interchange: T.nilable(Increase::Models::Transaction::Source::CardSettlement::Interchange),
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: String,
              merchant_country: String,
              merchant_name: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_identifiers: Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers,
              pending_transaction_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              purchase_details: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails),
              transaction_id: String,
              type: Symbol
            ).void
          end
          def initialize(
            id:,
            amount:,
            card_authorization:,
            card_payment_id:,
            cashback:,
            currency:,
            interchange:,
            merchant_acceptor_id:,
            merchant_category_code:,
            merchant_city:,
            merchant_country:,
            merchant_name:,
            merchant_postal_code:,
            merchant_state:,
            network_identifiers:,
            pending_transaction_id:,
            presentment_amount:,
            presentment_currency:,
            purchase_details:,
            transaction_id:,
            type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: Integer,
                card_authorization: T.nilable(String),
                card_payment_id: String,
                cashback: T.nilable(Increase::Models::Transaction::Source::CardSettlement::Cashback),
                currency: Symbol,
                interchange: T.nilable(Increase::Models::Transaction::Source::CardSettlement::Interchange),
                merchant_acceptor_id: String,
                merchant_category_code: String,
                merchant_city: String,
                merchant_country: String,
                merchant_name: String,
                merchant_postal_code: T.nilable(String),
                merchant_state: T.nilable(String),
                network_identifiers: Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers,
                pending_transaction_id: T.nilable(String),
                presentment_amount: Integer,
                presentment_currency: String,
                purchase_details: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails),
                transaction_id: String,
                type: Symbol
              }
            )
          end
          def to_hash
          end

          class Cashback < Increase::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(Symbol) }
            def currency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def currency=(_)
            end

            sig { params(amount: String, currency: Symbol).void }
            def initialize(amount:, currency:)
            end

            sig { override.returns({amount: String, currency: Symbol}) }
            def to_hash
            end

            class Currency < Increase::Enum
              abstract!

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

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Interchange < Increase::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def code
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def code=(_)
            end

            sig { returns(Symbol) }
            def currency
            end

            sig { params(_: Symbol).returns(Symbol) }
            def currency=(_)
            end

            sig { params(amount: String, code: T.nilable(String), currency: Symbol).void }
            def initialize(amount:, code:, currency:)
            end

            sig { override.returns({amount: String, code: T.nilable(String), currency: Symbol}) }
            def to_hash
            end

            class Currency < Increase::Enum
              abstract!

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

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(String) }
            def acquirer_business_id
            end

            sig { params(_: String).returns(String) }
            def acquirer_business_id=(_)
            end

            sig { returns(String) }
            def acquirer_reference_number
            end

            sig { params(_: String).returns(String) }
            def acquirer_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

            sig do
              params(
                acquirer_business_id: String,
                acquirer_reference_number: String,
                transaction_id: T.nilable(String)
              ).void
            end
            def initialize(acquirer_business_id:, acquirer_reference_number:, transaction_id:)
            end

            sig do
              override.returns(
                {
                  acquirer_business_id: String,
                  acquirer_reference_number: String,
                  transaction_id: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class PurchaseDetails < Increase::BaseModel
            sig do
              returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental))
            end
            def car_rental
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental)).returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental))
            end
            def car_rental=(_)
            end

            sig { returns(T.nilable(String)) }
            def customer_reference_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def customer_reference_identifier=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def local_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def local_tax_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def local_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def local_tax_currency=(_)
            end

            sig do
              returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging))
            end
            def lodging
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging)).returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging))
            end
            def lodging=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def national_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def national_tax_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def national_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def national_tax_currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def purchase_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_identifier=(_)
            end

            sig { returns(T.nilable(Symbol)) }
            def purchase_identifier_format
            end

            sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
            def purchase_identifier_format=(_)
            end

            sig do
              returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel))
            end
            def travel
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel)).returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel))
            end
            def travel=(_)
            end

            sig do
              params(
                car_rental: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental),
                customer_reference_identifier: T.nilable(String),
                local_tax_amount: T.nilable(Integer),
                local_tax_currency: T.nilable(String),
                lodging: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging),
                national_tax_amount: T.nilable(Integer),
                national_tax_currency: T.nilable(String),
                purchase_identifier: T.nilable(String),
                purchase_identifier_format: T.nilable(Symbol),
                travel: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel)
              ).void
            end
            def initialize(
              car_rental:,
              customer_reference_identifier:,
              local_tax_amount:,
              local_tax_currency:,
              lodging:,
              national_tax_amount:,
              national_tax_currency:,
              purchase_identifier:,
              purchase_identifier_format:,
              travel:
            )
            end

            sig do
              override.returns(
                {
                  car_rental: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental), customer_reference_identifier: T.nilable(String), local_tax_amount: T.nilable(Integer), local_tax_currency: T.nilable(String), lodging: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging), national_tax_amount: T.nilable(Integer), national_tax_currency: T.nilable(String), purchase_identifier: T.nilable(String), purchase_identifier_format: T.nilable(Symbol), travel: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel)
                }
              )
            end
            def to_hash
            end

            class CarRental < Increase::BaseModel
              sig { returns(T.nilable(String)) }
              def car_class_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def car_class_code=(_)
              end

              sig { returns(T.nilable(Date)) }
              def checkout_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def checkout_date=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def daily_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_rental_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def daily_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_rental_rate_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def days_rented
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def days_rented=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def extra_charges
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def extra_charges=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def fuel_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def fuel_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def fuel_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def fuel_charges_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def insurance_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def insurance_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def insurance_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def insurance_charges_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def no_show_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def no_show_indicator=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency=(_)
              end

              sig { returns(T.nilable(String)) }
              def renter_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def renter_name=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def weekly_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def weekly_rental_rate_currency=(_)
              end

              sig do
                params(
                  car_class_code: T.nilable(String),
                  checkout_date: T.nilable(Date),
                  daily_rental_rate_amount: T.nilable(Integer),
                  daily_rental_rate_currency: T.nilable(String),
                  days_rented: T.nilable(Integer),
                  extra_charges: T.nilable(Symbol),
                  fuel_charges_amount: T.nilable(Integer),
                  fuel_charges_currency: T.nilable(String),
                  insurance_charges_amount: T.nilable(Integer),
                  insurance_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(Symbol),
                  one_way_drop_off_charges_amount: T.nilable(Integer),
                  one_way_drop_off_charges_currency: T.nilable(String),
                  renter_name: T.nilable(String),
                  weekly_rental_rate_amount: T.nilable(Integer),
                  weekly_rental_rate_currency: T.nilable(String)
                ).void
              end
              def initialize(
                car_class_code:,
                checkout_date:,
                daily_rental_rate_amount:,
                daily_rental_rate_currency:,
                days_rented:,
                extra_charges:,
                fuel_charges_amount:,
                fuel_charges_currency:,
                insurance_charges_amount:,
                insurance_charges_currency:,
                no_show_indicator:,
                one_way_drop_off_charges_amount:,
                one_way_drop_off_charges_currency:,
                renter_name:,
                weekly_rental_rate_amount:,
                weekly_rental_rate_currency:
              )
              end

              sig do
                override.returns(
                  {
                    car_class_code: T.nilable(String),
                    checkout_date: T.nilable(Date),
                    daily_rental_rate_amount: T.nilable(Integer),
                    daily_rental_rate_currency: T.nilable(String),
                    days_rented: T.nilable(Integer),
                    extra_charges: T.nilable(Symbol),
                    fuel_charges_amount: T.nilable(Integer),
                    fuel_charges_currency: T.nilable(String),
                    insurance_charges_amount: T.nilable(Integer),
                    insurance_charges_currency: T.nilable(String),
                    no_show_indicator: T.nilable(Symbol),
                    one_way_drop_off_charges_amount: T.nilable(Integer),
                    one_way_drop_off_charges_currency: T.nilable(String),
                    renter_name: T.nilable(String),
                    weekly_rental_rate_amount: T.nilable(Integer),
                    weekly_rental_rate_currency: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class ExtraCharges < Increase::Enum
                abstract!

                # No extra charge
                NO_EXTRA_CHARGE = T.let(:no_extra_charge, T.nilable(Symbol))

                # Gas
                GAS = T.let(:gas, T.nilable(Symbol))

                # Extra mileage
                EXTRA_MILEAGE = T.let(:extra_mileage, T.nilable(Symbol))

                # Late return
                LATE_RETURN = T.let(:late_return, T.nilable(Symbol))

                # One way service fee
                ONE_WAY_SERVICE_FEE = T.let(:one_way_service_fee, T.nilable(Symbol))

                # Parking violation
                PARKING_VIOLATION = T.let(:parking_violation, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class NoShowIndicator < Increase::Enum
                abstract!

                # Not applicable
                NOT_APPLICABLE = T.let(:not_applicable, T.nilable(Symbol))

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = T.let(:no_show_for_specialized_vehicle, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class Lodging < Increase::BaseModel
              sig { returns(T.nilable(Date)) }
              def check_in_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def check_in_date=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def daily_room_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_room_rate_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def daily_room_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_room_rate_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def extra_charges
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def extra_charges=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def folio_cash_advances_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def folio_cash_advances_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def folio_cash_advances_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def folio_cash_advances_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def food_beverage_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def food_beverage_charges_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def food_beverage_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def food_beverage_charges_currency=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def no_show_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def no_show_indicator=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def prepaid_expenses_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def prepaid_expenses_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def prepaid_expenses_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def prepaid_expenses_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def room_nights
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def room_nights=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def total_room_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_room_tax_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def total_room_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_room_tax_currency=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def total_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_tax_amount=(_)
              end

              sig { returns(T.nilable(String)) }
              def total_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_tax_currency=(_)
              end

              sig do
                params(
                  check_in_date: T.nilable(Date),
                  daily_room_rate_amount: T.nilable(Integer),
                  daily_room_rate_currency: T.nilable(String),
                  extra_charges: T.nilable(Symbol),
                  folio_cash_advances_amount: T.nilable(Integer),
                  folio_cash_advances_currency: T.nilable(String),
                  food_beverage_charges_amount: T.nilable(Integer),
                  food_beverage_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(Symbol),
                  prepaid_expenses_amount: T.nilable(Integer),
                  prepaid_expenses_currency: T.nilable(String),
                  room_nights: T.nilable(Integer),
                  total_room_tax_amount: T.nilable(Integer),
                  total_room_tax_currency: T.nilable(String),
                  total_tax_amount: T.nilable(Integer),
                  total_tax_currency: T.nilable(String)
                ).void
              end
              def initialize(
                check_in_date:,
                daily_room_rate_amount:,
                daily_room_rate_currency:,
                extra_charges:,
                folio_cash_advances_amount:,
                folio_cash_advances_currency:,
                food_beverage_charges_amount:,
                food_beverage_charges_currency:,
                no_show_indicator:,
                prepaid_expenses_amount:,
                prepaid_expenses_currency:,
                room_nights:,
                total_room_tax_amount:,
                total_room_tax_currency:,
                total_tax_amount:,
                total_tax_currency:
              )
              end

              sig do
                override.returns(
                  {
                    check_in_date: T.nilable(Date),
                    daily_room_rate_amount: T.nilable(Integer),
                    daily_room_rate_currency: T.nilable(String),
                    extra_charges: T.nilable(Symbol),
                    folio_cash_advances_amount: T.nilable(Integer),
                    folio_cash_advances_currency: T.nilable(String),
                    food_beverage_charges_amount: T.nilable(Integer),
                    food_beverage_charges_currency: T.nilable(String),
                    no_show_indicator: T.nilable(Symbol),
                    prepaid_expenses_amount: T.nilable(Integer),
                    prepaid_expenses_currency: T.nilable(String),
                    room_nights: T.nilable(Integer),
                    total_room_tax_amount: T.nilable(Integer),
                    total_room_tax_currency: T.nilable(String),
                    total_tax_amount: T.nilable(Integer),
                    total_tax_currency: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class ExtraCharges < Increase::Enum
                abstract!

                # No extra charge
                NO_EXTRA_CHARGE = T.let(:no_extra_charge, T.nilable(Symbol))

                # Restaurant
                RESTAURANT = T.let(:restaurant, T.nilable(Symbol))

                # Gift shop
                GIFT_SHOP = T.let(:gift_shop, T.nilable(Symbol))

                # Mini bar
                MINI_BAR = T.let(:mini_bar, T.nilable(Symbol))

                # Telephone
                TELEPHONE = T.let(:telephone, T.nilable(Symbol))

                # Other
                OTHER = T.let(:other, T.nilable(Symbol))

                # Laundry
                LAUNDRY = T.let(:laundry, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class NoShowIndicator < Increase::Enum
                abstract!

                # Not applicable
                NOT_APPLICABLE = T.let(:not_applicable, T.nilable(Symbol))

                # No show
                NO_SHOW = T.let(:no_show, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class PurchaseIdentifierFormat < Increase::Enum
              abstract!

              # Free text
              FREE_TEXT = T.let(:free_text, T.nilable(Symbol))

              # Order number
              ORDER_NUMBER = T.let(:order_number, T.nilable(Symbol))

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = T.let(:rental_agreement_number, T.nilable(Symbol))

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = T.let(:hotel_folio_number, T.nilable(Symbol))

              # Invoice number
              INVOICE_NUMBER = T.let(:invoice_number, T.nilable(Symbol))

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Travel < Increase::BaseModel
              sig do
                returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary))
              end
              def ancillary
              end

              sig do
                params(
                  _: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary)
                ).returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary))
              end
              def ancillary=(_)
              end

              sig { returns(T.nilable(String)) }
              def computerized_reservation_system
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def computerized_reservation_system=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def credit_reason_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def credit_reason_indicator=(_)
              end

              sig { returns(T.nilable(Date)) }
              def departure_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def departure_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def origination_city_airport_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def origination_city_airport_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def passenger_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def passenger_name=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def restricted_ticket_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def restricted_ticket_indicator=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def ticket_change_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def ticket_change_indicator=(_)
              end

              sig { returns(T.nilable(String)) }
              def ticket_number
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def ticket_number=(_)
              end

              sig { returns(T.nilable(String)) }
              def travel_agency_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def travel_agency_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_name=(_)
              end

              sig do
                returns(T.nilable(T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg]))
              end
              def trip_legs
              end

              sig do
                params(
                  _: T.nilable(T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg])
                ).returns(T.nilable(T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg]))
              end
              def trip_legs=(_)
              end

              sig do
                params(
                  ancillary: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary),
                  computerized_reservation_system: T.nilable(String),
                  credit_reason_indicator: T.nilable(Symbol),
                  departure_date: T.nilable(Date),
                  origination_city_airport_code: T.nilable(String),
                  passenger_name: T.nilable(String),
                  restricted_ticket_indicator: T.nilable(Symbol),
                  ticket_change_indicator: T.nilable(Symbol),
                  ticket_number: T.nilable(String),
                  travel_agency_code: T.nilable(String),
                  travel_agency_name: T.nilable(String),
                  trip_legs: T.nilable(T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg])
                ).void
              end
              def initialize(
                ancillary:,
                computerized_reservation_system:,
                credit_reason_indicator:,
                departure_date:,
                origination_city_airport_code:,
                passenger_name:,
                restricted_ticket_indicator:,
                ticket_change_indicator:,
                ticket_number:,
                travel_agency_code:,
                travel_agency_name:,
                trip_legs:
              )
              end

              sig do
                override.returns(
                  {
                    ancillary: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary), computerized_reservation_system: T.nilable(String), credit_reason_indicator: T.nilable(Symbol), departure_date: T.nilable(Date), origination_city_airport_code: T.nilable(String), passenger_name: T.nilable(String), restricted_ticket_indicator: T.nilable(Symbol), ticket_change_indicator: T.nilable(Symbol), ticket_number: T.nilable(String), travel_agency_code: T.nilable(String), travel_agency_name: T.nilable(String), trip_legs: T.nilable(T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg])
                  }
                )
              end
              def to_hash
              end

              class Ancillary < Increase::BaseModel
                sig { returns(T.nilable(String)) }
                def connected_ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def connected_ticket_document_number=(_)
                end

                sig { returns(T.nilable(Symbol)) }
                def credit_reason_indicator
                end

                sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                def credit_reason_indicator=(_)
                end

                sig { returns(T.nilable(String)) }
                def passenger_name_or_description
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def passenger_name_or_description=(_)
                end

                sig do
                  returns(T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service])
                end
                def services
                end

                sig do
                  params(
                    _: T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service]
                  ).returns(T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service])
                end
                def services=(_)
                end

                sig { returns(T.nilable(String)) }
                def ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def ticket_document_number=(_)
                end

                sig do
                  params(
                    connected_ticket_document_number: T.nilable(String),
                    credit_reason_indicator: T.nilable(Symbol),
                    passenger_name_or_description: T.nilable(String),
                    services: T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service],
                    ticket_document_number: T.nilable(String)
                  ).void
                end
                def initialize(
                  connected_ticket_document_number:,
                  credit_reason_indicator:,
                  passenger_name_or_description:,
                  services:,
                  ticket_document_number:
                )
                end

                sig do
                  override.returns(
                    {
                      connected_ticket_document_number: T.nilable(String),
                      credit_reason_indicator: T.nilable(Symbol),
                      passenger_name_or_description: T.nilable(String),
                      services: T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service],
                      ticket_document_number: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end

                class CreditReasonIndicator < Increase::Enum
                  abstract!

                  # No credit
                  NO_CREDIT = T.let(:no_credit, T.nilable(Symbol))

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                    :passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                  )

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                  )

                  # Other
                  OTHER = T.let(:other, T.nilable(Symbol))

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end

                class Service < Increase::BaseModel
                  sig { returns(T.nilable(Symbol)) }
                  def category
                  end

                  sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                  def category=(_)
                  end

                  sig { returns(T.nilable(String)) }
                  def sub_category
                  end

                  sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                  def sub_category=(_)
                  end

                  sig { params(category: T.nilable(Symbol), sub_category: T.nilable(String)).void }
                  def initialize(category:, sub_category:)
                  end

                  sig { override.returns({category: T.nilable(Symbol), sub_category: T.nilable(String)}) }
                  def to_hash
                  end

                  class Category < Increase::Enum
                    abstract!

                    # None
                    NONE = T.let(:none, T.nilable(Symbol))

                    # Bundled service
                    BUNDLED_SERVICE = T.let(:bundled_service, T.nilable(Symbol))

                    # Baggage fee
                    BAGGAGE_FEE = T.let(:baggage_fee, T.nilable(Symbol))

                    # Change fee
                    CHANGE_FEE = T.let(:change_fee, T.nilable(Symbol))

                    # Cargo
                    CARGO = T.let(:cargo, T.nilable(Symbol))

                    # Carbon offset
                    CARBON_OFFSET = T.let(:carbon_offset, T.nilable(Symbol))

                    # Frequent flyer
                    FREQUENT_FLYER = T.let(:frequent_flyer, T.nilable(Symbol))

                    # Gift card
                    GIFT_CARD = T.let(:gift_card, T.nilable(Symbol))

                    # Ground transport
                    GROUND_TRANSPORT = T.let(:ground_transport, T.nilable(Symbol))

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = T.let(:in_flight_entertainment, T.nilable(Symbol))

                    # Lounge
                    LOUNGE = T.let(:lounge, T.nilable(Symbol))

                    # Medical
                    MEDICAL = T.let(:medical, T.nilable(Symbol))

                    # Meal beverage
                    MEAL_BEVERAGE = T.let(:meal_beverage, T.nilable(Symbol))

                    # Other
                    OTHER = T.let(:other, T.nilable(Symbol))

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = T.let(:passenger_assist_fee, T.nilable(Symbol))

                    # Pets
                    PETS = T.let(:pets, T.nilable(Symbol))

                    # Seat fees
                    SEAT_FEES = T.let(:seat_fees, T.nilable(Symbol))

                    # Standby
                    STANDBY = T.let(:standby, T.nilable(Symbol))

                    # Service fee
                    SERVICE_FEE = T.let(:service_fee, T.nilable(Symbol))

                    # Store
                    STORE = T.let(:store, T.nilable(Symbol))

                    # Travel service
                    TRAVEL_SERVICE = T.let(:travel_service, T.nilable(Symbol))

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = T.let(:unaccompanied_travel, T.nilable(Symbol))

                    # Upgrades
                    UPGRADES = T.let(:upgrades, T.nilable(Symbol))

                    # Wi-fi
                    WIFI = T.let(:wifi, T.nilable(Symbol))

                    sig { override.returns(T::Array[Symbol]) }
                    def self.values
                    end
                  end
                end
              end

              class CreditReasonIndicator < Increase::Enum
                abstract!

                # No credit
                NO_CREDIT = T.let(:no_credit, T.nilable(Symbol))

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                  :passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                )

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = T.let(
                  :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation, T.nilable(Symbol)
                )

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = T.let(:airline_ticket_cancellation, T.nilable(Symbol))

                # Other
                OTHER = T.let(:other, T.nilable(Symbol))

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = T.let(:partial_refund_of_airline_ticket, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class RestrictedTicketIndicator < Increase::Enum
                abstract!

                # No restrictions
                NO_RESTRICTIONS = T.let(:no_restrictions, T.nilable(Symbol))

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = T.let(:restricted_non_refundable_ticket, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class TicketChangeIndicator < Increase::Enum
                abstract!

                # None
                NONE = T.let(:none, T.nilable(Symbol))

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = T.let(:change_to_existing_ticket, T.nilable(Symbol))

                # New ticket
                NEW_TICKET = T.let(:new_ticket, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class TripLeg < Increase::BaseModel
                sig { returns(T.nilable(String)) }
                def carrier_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def carrier_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def destination_city_airport_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def destination_city_airport_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def fare_basis_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def fare_basis_code=(_)
                end

                sig { returns(T.nilable(String)) }
                def flight_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def flight_number=(_)
                end

                sig { returns(T.nilable(String)) }
                def service_class
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def service_class=(_)
                end

                sig { returns(T.nilable(Symbol)) }
                def stop_over_code
                end

                sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
                def stop_over_code=(_)
                end

                sig do
                  params(
                    carrier_code: T.nilable(String),
                    destination_city_airport_code: T.nilable(String),
                    fare_basis_code: T.nilable(String),
                    flight_number: T.nilable(String),
                    service_class: T.nilable(String),
                    stop_over_code: T.nilable(Symbol)
                  ).void
                end
                def initialize(
                  carrier_code:,
                  destination_city_airport_code:,
                  fare_basis_code:,
                  flight_number:,
                  service_class:,
                  stop_over_code:
                )
                end

                sig do
                  override.returns(
                    {
                      carrier_code: T.nilable(String),
                      destination_city_airport_code: T.nilable(String),
                      fare_basis_code: T.nilable(String),
                      flight_number: T.nilable(String),
                      service_class: T.nilable(String),
                      stop_over_code: T.nilable(Symbol)
                    }
                  )
                end
                def to_hash
                end

                class StopOverCode < Increase::Enum
                  abstract!

                  # None
                  NONE = T.let(:none, T.nilable(Symbol))

                  # Stop over allowed
                  STOP_OVER_ALLOWED = T.let(:stop_over_allowed, T.nilable(Symbol))

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = T.let(:stop_over_not_allowed, T.nilable(Symbol))

                  sig { override.returns(T::Array[Symbol]) }
                  def self.values
                  end
                end
              end
            end
          end

          class Type < Increase::Enum
            abstract!

            CARD_SETTLEMENT = :card_settlement

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CashbackPayment < Increase::BaseModel
          sig { returns(T.nilable(String)) }
          def accrued_on_card_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def accrued_on_card_id=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(Time) }
          def period_end
          end

          sig { params(_: Time).returns(Time) }
          def period_end=(_)
          end

          sig { returns(Time) }
          def period_start
          end

          sig { params(_: Time).returns(Time) }
          def period_start=(_)
          end

          sig do
            params(
              accrued_on_card_id: T.nilable(String),
              amount: Integer,
              currency: Symbol,
              period_end: Time,
              period_start: Time
            ).void
          end
          def initialize(accrued_on_card_id:, amount:, currency:, period_end:, period_start:)
          end

          sig do
            override.returns(
              {
                accrued_on_card_id: T.nilable(String),
                amount: Integer,
                currency: Symbol,
                period_end: Time,
                period_start: Time
              }
            )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class Category < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CheckDepositAcceptance < Increase::BaseModel
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def auxiliary_on_us
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def auxiliary_on_us=(_)
          end

          sig { returns(String) }
          def check_deposit_id
          end

          sig { params(_: String).returns(String) }
          def check_deposit_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          sig { returns(T.nilable(String)) }
          def serial_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def serial_number=(_)
          end

          sig do
            params(
              account_number: String,
              amount: Integer,
              auxiliary_on_us: T.nilable(String),
              check_deposit_id: String,
              currency: Symbol,
              routing_number: String,
              serial_number: T.nilable(String)
            ).void
          end
          def initialize(
            account_number:,
            amount:,
            auxiliary_on_us:,
            check_deposit_id:,
            currency:,
            routing_number:,
            serial_number:
          )
          end

          sig do
            override.returns(
              {
                account_number: String,
                amount: Integer,
                auxiliary_on_us: T.nilable(String),
                check_deposit_id: String,
                currency: Symbol,
                routing_number: String,
                serial_number: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CheckDepositReturn < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def check_deposit_id
          end

          sig { params(_: String).returns(String) }
          def check_deposit_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(Symbol) }
          def return_reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def return_reason=(_)
          end

          sig { returns(Time) }
          def returned_at
          end

          sig { params(_: Time).returns(Time) }
          def returned_at=(_)
          end

          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          sig do
            params(
              amount: Integer,
              check_deposit_id: String,
              currency: Symbol,
              return_reason: Symbol,
              returned_at: Time,
              transaction_id: String
            ).void
          end
          def initialize(amount:, check_deposit_id:, currency:, return_reason:, returned_at:, transaction_id:)
          end

          sig do
            override.returns(
              {
                amount: Integer,
                check_deposit_id: String,
                currency: Symbol,
                return_reason: Symbol,
                returned_at: Time,
                transaction_id: String
              }
            )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class ReturnReason < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CheckTransferDeposit < Increase::BaseModel
          sig { returns(T.nilable(String)) }
          def back_image_file_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def back_image_file_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def bank_of_first_deposit_routing_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def bank_of_first_deposit_routing_number=(_)
          end

          sig { returns(Time) }
          def deposited_at
          end

          sig { params(_: Time).returns(Time) }
          def deposited_at=(_)
          end

          sig { returns(T.nilable(String)) }
          def front_image_file_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def front_image_file_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def inbound_check_deposit_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def inbound_check_deposit_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def transaction_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def transfer_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def transfer_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              back_image_file_id: T.nilable(String),
              bank_of_first_deposit_routing_number: T.nilable(String),
              deposited_at: Time,
              front_image_file_id: T.nilable(String),
              inbound_check_deposit_id: T.nilable(String),
              transaction_id: T.nilable(String),
              transfer_id: T.nilable(String),
              type: Symbol
            ).void
          end
          def initialize(
            back_image_file_id:,
            bank_of_first_deposit_routing_number:,
            deposited_at:,
            front_image_file_id:,
            inbound_check_deposit_id:,
            transaction_id:,
            transfer_id:,
            type:
          )
          end

          sig do
            override.returns(
              {
                back_image_file_id: T.nilable(String),
                bank_of_first_deposit_routing_number: T.nilable(String),
                deposited_at: Time,
                front_image_file_id: T.nilable(String),
                inbound_check_deposit_id: T.nilable(String),
                transaction_id: T.nilable(String),
                transfer_id: T.nilable(String),
                type: Symbol
              }
            )
          end
          def to_hash
          end

          class Type < Increase::Enum
            abstract!

            CHECK_TRANSFER_DEPOSIT = :check_transfer_deposit

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class FeePayment < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(Date) }
          def fee_period_start
          end

          sig { params(_: Date).returns(Date) }
          def fee_period_start=(_)
          end

          sig { returns(T.nilable(String)) }
          def program_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def program_id=(_)
          end

          sig do
            params(
              amount: Integer,
              currency: Symbol,
              fee_period_start: Date,
              program_id: T.nilable(String)
            ).void
          end
          def initialize(amount:, currency:, fee_period_start:, program_id:)
          end

          sig do
            override.returns(
              {
                amount: Integer,
                currency: Symbol,
                fee_period_start: Date,
                program_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class InboundACHTransfer < Increase::BaseModel
          sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda)) }
          def addenda
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda)).returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda))
          end
          def addenda=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_company_descriptive_date
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_company_descriptive_date=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_company_discretionary_data
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_company_discretionary_data=(_)
          end

          sig { returns(String) }
          def originator_company_entry_description
          end

          sig { params(_: String).returns(String) }
          def originator_company_entry_description=(_)
          end

          sig { returns(String) }
          def originator_company_id
          end

          sig { params(_: String).returns(String) }
          def originator_company_id=(_)
          end

          sig { returns(String) }
          def originator_company_name
          end

          sig { params(_: String).returns(String) }
          def originator_company_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def receiver_id_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def receiver_id_number=(_)
          end

          sig { returns(T.nilable(String)) }
          def receiver_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def receiver_name=(_)
          end

          sig { returns(String) }
          def trace_number
          end

          sig { params(_: String).returns(String) }
          def trace_number=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
              addenda: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda),
              amount: Integer,
              originator_company_descriptive_date: T.nilable(String),
              originator_company_discretionary_data: T.nilable(String),
              originator_company_entry_description: String,
              originator_company_id: String,
              originator_company_name: String,
              receiver_id_number: T.nilable(String),
              receiver_name: T.nilable(String),
              trace_number: String,
              transfer_id: String
            ).void
          end
          def initialize(
            addenda:,
            amount:,
            originator_company_descriptive_date:,
            originator_company_discretionary_data:,
            originator_company_entry_description:,
            originator_company_id:,
            originator_company_name:,
            receiver_id_number:,
            receiver_name:,
            trace_number:,
            transfer_id:
          )
          end

          sig do
            override.returns(
              {
                addenda: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda),
                amount: Integer,
                originator_company_descriptive_date: T.nilable(String),
                originator_company_discretionary_data: T.nilable(String),
                originator_company_entry_description: String,
                originator_company_id: String,
                originator_company_name: String,
                receiver_id_number: T.nilable(String),
                receiver_name: T.nilable(String),
                trace_number: String,
                transfer_id: String
              }
            )
          end
          def to_hash
          end

          class Addenda < Increase::BaseModel
            sig { returns(Symbol) }
            def category
            end

            sig { params(_: Symbol).returns(Symbol) }
            def category=(_)
            end

            sig do
              returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform))
            end
            def freeform
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform)).returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform))
            end
            def freeform=(_)
            end

            sig do
              params(
                category: Symbol,
                freeform: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform)
              ).void
            end
            def initialize(category:, freeform:)
            end

            sig do
              override.returns(
                {
                  category: Symbol,
                  freeform: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform)
                }
              )
            end
            def to_hash
            end

            class Category < Increase::Enum
              abstract!

              # Unstructured addendum.
              FREEFORM = :freeform

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Freeform < Increase::BaseModel
              sig do
                returns(T::Array[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry])
              end
              def entries
              end

              sig do
                params(_: T::Array[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry]).returns(T::Array[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry])
              end
              def entries=(_)
              end

              sig do
                params(
                  entries: T::Array[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry]
                ).void
              end
              def initialize(entries:)
              end

              sig do
                override.returns({entries: T::Array[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry]})
              end
              def to_hash
              end

              class Entry < Increase::BaseModel
                sig { returns(String) }
                def payment_related_information
                end

                sig { params(_: String).returns(String) }
                def payment_related_information=(_)
                end

                sig { params(payment_related_information: String).void }
                def initialize(payment_related_information:)
                end

                sig { override.returns({payment_related_information: String}) }
                def to_hash
                end
              end
            end
          end
        end

        class InboundACHTransferReturnIntention < Increase::BaseModel
          sig { returns(String) }
          def inbound_ach_transfer_id
          end

          sig { params(_: String).returns(String) }
          def inbound_ach_transfer_id=(_)
          end

          sig { params(inbound_ach_transfer_id: String).void }
          def initialize(inbound_ach_transfer_id:)
          end

          sig { override.returns({inbound_ach_transfer_id: String}) }
          def to_hash
          end
        end

        class InboundCheckAdjustment < Increase::BaseModel
          sig { returns(String) }
          def adjusted_transaction_id
          end

          sig { params(_: String).returns(String) }
          def adjusted_transaction_id=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          sig { params(adjusted_transaction_id: String, amount: Integer, reason: Symbol).void }
          def initialize(adjusted_transaction_id:, amount:, reason:)
          end

          sig { override.returns({adjusted_transaction_id: String, amount: Integer, reason: Symbol}) }
          def to_hash
          end

          class Reason < Increase::Enum
            abstract!

            # The return was initiated too late and the receiving institution has responded with a Late Return Claim.
            LATE_RETURN = :late_return

            # The check was deposited to the wrong payee and the depositing institution has reimbursed the funds with a Wrong Payee Credit.
            WRONG_PAYEE_CREDIT = :wrong_payee_credit

            # The check was deposited with a different amount than what was written on the check.
            ADJUSTED_AMOUNT = :adjusted_amount

            # The recipient was not able to process the check. This usually happens for e.g., low quality images.
            NON_CONFORMING_ITEM = :non_conforming_item

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class InboundCheckDepositReturnIntention < Increase::BaseModel
          sig { returns(String) }
          def inbound_check_deposit_id
          end

          sig { params(_: String).returns(String) }
          def inbound_check_deposit_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def transfer_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def transfer_id=(_)
          end

          sig { params(inbound_check_deposit_id: String, transfer_id: T.nilable(String)).void }
          def initialize(inbound_check_deposit_id:, transfer_id:)
          end

          sig { override.returns({inbound_check_deposit_id: String, transfer_id: T.nilable(String)}) }
          def to_hash
          end
        end

        class InboundRealTimePaymentsTransferConfirmation < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def creditor_name
          end

          sig { params(_: String).returns(String) }
          def creditor_name=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def debtor_account_number
          end

          sig { params(_: String).returns(String) }
          def debtor_account_number=(_)
          end

          sig { returns(String) }
          def debtor_name
          end

          sig { params(_: String).returns(String) }
          def debtor_name=(_)
          end

          sig { returns(String) }
          def debtor_routing_number
          end

          sig { params(_: String).returns(String) }
          def debtor_routing_number=(_)
          end

          sig { returns(T.nilable(String)) }
          def remittance_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def remittance_information=(_)
          end

          sig { returns(String) }
          def transaction_identification
          end

          sig { params(_: String).returns(String) }
          def transaction_identification=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
              amount: Integer,
              creditor_name: String,
              currency: Symbol,
              debtor_account_number: String,
              debtor_name: String,
              debtor_routing_number: String,
              remittance_information: T.nilable(String),
              transaction_identification: String,
              transfer_id: String
            ).void
          end
          def initialize(
            amount:,
            creditor_name:,
            currency:,
            debtor_account_number:,
            debtor_name:,
            debtor_routing_number:,
            remittance_information:,
            transaction_identification:,
            transfer_id:
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                creditor_name: String,
                currency: Symbol,
                debtor_account_number: String,
                debtor_name: String,
                debtor_routing_number: String,
                remittance_information: T.nilable(String),
                transaction_identification: String,
                transfer_id: String
              }
            )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class InboundRealTimePaymentsTransferDecline < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def creditor_name
          end

          sig { params(_: String).returns(String) }
          def creditor_name=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def debtor_account_number
          end

          sig { params(_: String).returns(String) }
          def debtor_account_number=(_)
          end

          sig { returns(String) }
          def debtor_name
          end

          sig { params(_: String).returns(String) }
          def debtor_name=(_)
          end

          sig { returns(String) }
          def debtor_routing_number
          end

          sig { params(_: String).returns(String) }
          def debtor_routing_number=(_)
          end

          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          sig { returns(T.nilable(String)) }
          def remittance_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def remittance_information=(_)
          end

          sig { returns(String) }
          def transaction_identification
          end

          sig { params(_: String).returns(String) }
          def transaction_identification=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
              amount: Integer,
              creditor_name: String,
              currency: Symbol,
              debtor_account_number: String,
              debtor_name: String,
              debtor_routing_number: String,
              reason: Symbol,
              remittance_information: T.nilable(String),
              transaction_identification: String,
              transfer_id: String
            ).void
          end
          def initialize(
            amount:,
            creditor_name:,
            currency:,
            debtor_account_number:,
            debtor_name:,
            debtor_routing_number:,
            reason:,
            remittance_information:,
            transaction_identification:,
            transfer_id:
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                creditor_name: String,
                currency: Symbol,
                debtor_account_number: String,
                debtor_name: String,
                debtor_routing_number: String,
                reason: Symbol,
                remittance_information: T.nilable(String),
                transaction_identification: String,
                transfer_id: String
              }
            )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Reason < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class InboundWireReversal < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(String) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(T.nilable(String)) }
          def financial_institution_to_financial_institution_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def financial_institution_to_financial_institution_information=(_)
          end

          sig { returns(Date) }
          def input_cycle_date
          end

          sig { params(_: Date).returns(Date) }
          def input_cycle_date=(_)
          end

          sig { returns(String) }
          def input_message_accountability_data
          end

          sig { params(_: String).returns(String) }
          def input_message_accountability_data=(_)
          end

          sig { returns(String) }
          def input_sequence_number
          end

          sig { params(_: String).returns(String) }
          def input_sequence_number=(_)
          end

          sig { returns(String) }
          def input_source
          end

          sig { params(_: String).returns(String) }
          def input_source=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_routing_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_routing_number=(_)
          end

          sig { returns(Date) }
          def previous_message_input_cycle_date
          end

          sig { params(_: Date).returns(Date) }
          def previous_message_input_cycle_date=(_)
          end

          sig { returns(String) }
          def previous_message_input_message_accountability_data
          end

          sig { params(_: String).returns(String) }
          def previous_message_input_message_accountability_data=(_)
          end

          sig { returns(String) }
          def previous_message_input_sequence_number
          end

          sig { params(_: String).returns(String) }
          def previous_message_input_sequence_number=(_)
          end

          sig { returns(String) }
          def previous_message_input_source
          end

          sig { params(_: String).returns(String) }
          def previous_message_input_source=(_)
          end

          sig { returns(T.nilable(String)) }
          def receiver_financial_institution_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def receiver_financial_institution_information=(_)
          end

          sig { returns(T.nilable(String)) }
          def sender_reference
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def sender_reference=(_)
          end

          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          sig { returns(String) }
          def wire_transfer_id
          end

          sig { params(_: String).returns(String) }
          def wire_transfer_id=(_)
          end

          sig do
            params(
              amount: Integer,
              created_at: Time,
              description: String,
              financial_institution_to_financial_institution_information: T.nilable(String),
              input_cycle_date: Date,
              input_message_accountability_data: String,
              input_sequence_number: String,
              input_source: String,
              originator_routing_number: T.nilable(String),
              previous_message_input_cycle_date: Date,
              previous_message_input_message_accountability_data: String,
              previous_message_input_sequence_number: String,
              previous_message_input_source: String,
              receiver_financial_institution_information: T.nilable(String),
              sender_reference: T.nilable(String),
              transaction_id: String,
              wire_transfer_id: String
            ).void
          end
          def initialize(
            amount:,
            created_at:,
            description:,
            financial_institution_to_financial_institution_information:,
            input_cycle_date:,
            input_message_accountability_data:,
            input_sequence_number:,
            input_source:,
            originator_routing_number:,
            previous_message_input_cycle_date:,
            previous_message_input_message_accountability_data:,
            previous_message_input_sequence_number:,
            previous_message_input_source:,
            receiver_financial_institution_information:,
            sender_reference:,
            transaction_id:,
            wire_transfer_id:
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                created_at: Time,
                description: String,
                financial_institution_to_financial_institution_information: T.nilable(String),
                input_cycle_date: Date,
                input_message_accountability_data: String,
                input_sequence_number: String,
                input_source: String,
                originator_routing_number: T.nilable(String),
                previous_message_input_cycle_date: Date,
                previous_message_input_message_accountability_data: String,
                previous_message_input_sequence_number: String,
                previous_message_input_source: String,
                receiver_financial_institution_information: T.nilable(String),
                sender_reference: T.nilable(String),
                transaction_id: String,
                wire_transfer_id: String
              }
            )
          end
          def to_hash
          end
        end

        class InboundWireTransfer < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def beneficiary_address_line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def beneficiary_address_line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def beneficiary_address_line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def beneficiary_address_line2=(_)
          end

          sig { returns(T.nilable(String)) }
          def beneficiary_address_line3
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def beneficiary_address_line3=(_)
          end

          sig { returns(T.nilable(String)) }
          def beneficiary_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def beneficiary_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def beneficiary_reference
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def beneficiary_reference=(_)
          end

          sig { returns(String) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(T.nilable(String)) }
          def input_message_accountability_data
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def input_message_accountability_data=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_address_line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_address_line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_address_line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_address_line2=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_address_line3
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_address_line3=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_routing_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_routing_number=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_to_beneficiary_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_to_beneficiary_information=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line1=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line2=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line3
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line3=(_)
          end

          sig { returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line4
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line4=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
              amount: Integer,
              beneficiary_address_line1: T.nilable(String),
              beneficiary_address_line2: T.nilable(String),
              beneficiary_address_line3: T.nilable(String),
              beneficiary_name: T.nilable(String),
              beneficiary_reference: T.nilable(String),
              description: String,
              input_message_accountability_data: T.nilable(String),
              originator_address_line1: T.nilable(String),
              originator_address_line2: T.nilable(String),
              originator_address_line3: T.nilable(String),
              originator_name: T.nilable(String),
              originator_routing_number: T.nilable(String),
              originator_to_beneficiary_information: T.nilable(String),
              originator_to_beneficiary_information_line1: T.nilable(String),
              originator_to_beneficiary_information_line2: T.nilable(String),
              originator_to_beneficiary_information_line3: T.nilable(String),
              originator_to_beneficiary_information_line4: T.nilable(String),
              transfer_id: String
            ).void
          end
          def initialize(
            amount:,
            beneficiary_address_line1:,
            beneficiary_address_line2:,
            beneficiary_address_line3:,
            beneficiary_name:,
            beneficiary_reference:,
            description:,
            input_message_accountability_data:,
            originator_address_line1:,
            originator_address_line2:,
            originator_address_line3:,
            originator_name:,
            originator_routing_number:,
            originator_to_beneficiary_information:,
            originator_to_beneficiary_information_line1:,
            originator_to_beneficiary_information_line2:,
            originator_to_beneficiary_information_line3:,
            originator_to_beneficiary_information_line4:,
            transfer_id:
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                beneficiary_address_line1: T.nilable(String),
                beneficiary_address_line2: T.nilable(String),
                beneficiary_address_line3: T.nilable(String),
                beneficiary_name: T.nilable(String),
                beneficiary_reference: T.nilable(String),
                description: String,
                input_message_accountability_data: T.nilable(String),
                originator_address_line1: T.nilable(String),
                originator_address_line2: T.nilable(String),
                originator_address_line3: T.nilable(String),
                originator_name: T.nilable(String),
                originator_routing_number: T.nilable(String),
                originator_to_beneficiary_information: T.nilable(String),
                originator_to_beneficiary_information_line1: T.nilable(String),
                originator_to_beneficiary_information_line2: T.nilable(String),
                originator_to_beneficiary_information_line3: T.nilable(String),
                originator_to_beneficiary_information_line4: T.nilable(String),
                transfer_id: String
              }
            )
          end
          def to_hash
          end
        end

        class InboundWireTransferReversal < Increase::BaseModel
          sig { returns(String) }
          def inbound_wire_transfer_id
          end

          sig { params(_: String).returns(String) }
          def inbound_wire_transfer_id=(_)
          end

          sig { params(inbound_wire_transfer_id: String).void }
          def initialize(inbound_wire_transfer_id:)
          end

          sig { override.returns({inbound_wire_transfer_id: String}) }
          def to_hash
          end
        end

        class InterestPayment < Increase::BaseModel
          sig { returns(String) }
          def accrued_on_account_id
          end

          sig { params(_: String).returns(String) }
          def accrued_on_account_id=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(Time) }
          def period_end
          end

          sig { params(_: Time).returns(Time) }
          def period_end=(_)
          end

          sig { returns(Time) }
          def period_start
          end

          sig { params(_: Time).returns(Time) }
          def period_start=(_)
          end

          sig do
            params(
              accrued_on_account_id: String,
              amount: Integer,
              currency: Symbol,
              period_end: Time,
              period_start: Time
            ).void
          end
          def initialize(accrued_on_account_id:, amount:, currency:, period_end:, period_start:)
          end

          sig do
            override.returns(
              {
                accrued_on_account_id: String,
                amount: Integer,
                currency: Symbol,
                period_end: Time,
                period_start: Time
              }
            )
          end
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class InternalSource < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          sig { params(amount: Integer, currency: Symbol, reason: Symbol).void }
          def initialize(amount:, currency:, reason:)
          end

          sig { override.returns({amount: Integer, currency: Symbol, reason: Symbol}) }
          def to_hash
          end

          class Currency < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Reason < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class RealTimePaymentsTransferAcknowledgement < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def destination_account_number
          end

          sig { params(_: String).returns(String) }
          def destination_account_number=(_)
          end

          sig { returns(String) }
          def destination_routing_number
          end

          sig { params(_: String).returns(String) }
          def destination_routing_number=(_)
          end

          sig { returns(String) }
          def remittance_information
          end

          sig { params(_: String).returns(String) }
          def remittance_information=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
              amount: Integer,
              destination_account_number: String,
              destination_routing_number: String,
              remittance_information: String,
              transfer_id: String
            ).void
          end
          def initialize(
            amount:,
            destination_account_number:,
            destination_routing_number:,
            remittance_information:,
            transfer_id:
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                destination_account_number: String,
                destination_routing_number: String,
                remittance_information: String,
                transfer_id: String
              }
            )
          end
          def to_hash
          end
        end

        class SampleFunds < Increase::BaseModel
          sig { returns(String) }
          def originator
          end

          sig { params(_: String).returns(String) }
          def originator=(_)
          end

          sig { params(originator: String).void }
          def initialize(originator:)
          end

          sig { override.returns({originator: String}) }
          def to_hash
          end
        end

        class WireTransferIntention < Increase::BaseModel
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def message_to_recipient
          end

          sig { params(_: String).returns(String) }
          def message_to_recipient=(_)
          end

          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
              account_number: String,
              amount: Integer,
              message_to_recipient: String,
              routing_number: String,
              transfer_id: String
            ).void
          end
          def initialize(account_number:, amount:, message_to_recipient:, routing_number:, transfer_id:)
          end

          sig do
            override.returns(
              {
                account_number: String,
                amount: Integer,
                message_to_recipient: String,
                routing_number: String,
                transfer_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        TRANSACTION = :transaction

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
