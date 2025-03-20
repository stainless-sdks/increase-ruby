# typed: strong

module Increase
  module Models
    class Transaction < Increase::BaseModel
      # The Transaction identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the Account the Transaction belongs to.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The Transaction amount in the minor unit of its currency. For dollars, for
      #   example, this is cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the
      #   Transaction occurred.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
      #   Transaction's currency. This will match the currency on the Transaction's
      #   Account.
      sig { returns(Increase::Models::Transaction::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: Increase::Models::Transaction::Currency::TaggedSymbol)
          .returns(Increase::Models::Transaction::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      # An informational message describing this transaction. Use the fields in `source`
      #   to get more detailed information. This field appears as the line-item on the
      #   statement.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The identifier for the route this Transaction came through. Routes are things
      #   like cards and ACH details.
      sig { returns(T.nilable(String)) }
      def route_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def route_id=(_)
      end

      # The type of the route this Transaction came through.
      sig { returns(T.nilable(Increase::Models::Transaction::RouteType::TaggedSymbol)) }
      def route_type
      end

      sig do
        params(_: T.nilable(Increase::Models::Transaction::RouteType::TaggedSymbol))
          .returns(T.nilable(Increase::Models::Transaction::RouteType::TaggedSymbol))
      end
      def route_type=(_)
      end

      # This is an object giving more details on the network-level event that caused the
      #   Transaction. Note that for backwards compatibility reasons, additional
      #   undocumented keys may appear in this object. These should be treated as
      #   deprecated and will be removed in the future.
      sig { returns(Increase::Models::Transaction::Source) }
      def source
      end

      sig { params(_: Increase::Models::Transaction::Source).returns(Increase::Models::Transaction::Source) }
      def source=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `transaction`.
      sig { returns(Increase::Models::Transaction::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::Transaction::Type::TaggedSymbol)
          .returns(Increase::Models::Transaction::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Transactions are the immutable additions and removals of money from your bank
      #   account. They're the equivalent of line items on your bank statement.
      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          created_at: Time,
          currency: Increase::Models::Transaction::Currency::TaggedSymbol,
          description: String,
          route_id: T.nilable(String),
          route_type: T.nilable(Increase::Models::Transaction::RouteType::TaggedSymbol),
          source: Increase::Models::Transaction::Source,
          type: Increase::Models::Transaction::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, amount:, created_at:, currency:, description:, route_id:, route_type:, source:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              amount: Integer,
              created_at: Time,
              currency: Increase::Models::Transaction::Currency::TaggedSymbol,
              description: String,
              route_id: T.nilable(String),
              route_type: T.nilable(Increase::Models::Transaction::RouteType::TaggedSymbol),
              source: Increase::Models::Transaction::Source,
              type: Increase::Models::Transaction::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
      #   Transaction's currency. This will match the currency on the Transaction's
      #   Account.
      module Currency
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Transaction::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Transaction::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::Transaction::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::Transaction::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::Transaction::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::Transaction::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::Transaction::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::Transaction::Currency::TaggedSymbol)
      end

      # The type of the route this Transaction came through.
      module RouteType
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Transaction::RouteType) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Transaction::RouteType::TaggedSymbol) }

        # An Account Number.
        ACCOUNT_NUMBER = T.let(:account_number, Increase::Models::Transaction::RouteType::TaggedSymbol)

        # A Card.
        CARD = T.let(:card, Increase::Models::Transaction::RouteType::TaggedSymbol)

        # A Lockbox.
        LOCKBOX = T.let(:lockbox, Increase::Models::Transaction::RouteType::TaggedSymbol)
      end

      class Source < Increase::BaseModel
        # An Account Transfer Intention object. This field will be present in the JSON
        #   response if and only if `category` is equal to `account_transfer_intention`. Two
        #   Account Transfer Intentions are created from each Account Transfer. One
        #   decrements the source account, and the other increments the destination account.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::AccountTransferIntention)) }
        def account_transfer_intention
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::AccountTransferIntention))
            .returns(T.nilable(Increase::Models::Transaction::Source::AccountTransferIntention))
        end
        def account_transfer_intention=(_)
        end

        # An ACH Transfer Intention object. This field will be present in the JSON
        #   response if and only if `category` is equal to `ach_transfer_intention`. An ACH
        #   Transfer Intention is created from an ACH Transfer. It reflects the intention to
        #   move money into or out of an Increase account via the ACH network.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferIntention)) }
        def ach_transfer_intention
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::ACHTransferIntention))
            .returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferIntention))
        end
        def ach_transfer_intention=(_)
        end

        # An ACH Transfer Rejection object. This field will be present in the JSON
        #   response if and only if `category` is equal to `ach_transfer_rejection`. An ACH
        #   Transfer Rejection is created when an ACH Transfer is rejected by Increase. It
        #   offsets the ACH Transfer Intention. These rejections are rare.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferRejection)) }
        def ach_transfer_rejection
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::ACHTransferRejection))
            .returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferRejection))
        end
        def ach_transfer_rejection=(_)
        end

        # An ACH Transfer Return object. This field will be present in the JSON response
        #   if and only if `category` is equal to `ach_transfer_return`. An ACH Transfer
        #   Return is created when an ACH Transfer is returned by the receiving bank. It
        #   offsets the ACH Transfer Intention. ACH Transfer Returns usually occur within
        #   the first two business days after the transfer is initiated, but can occur much
        #   later.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferReturn)) }
        def ach_transfer_return
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::ACHTransferReturn))
            .returns(T.nilable(Increase::Models::Transaction::Source::ACHTransferReturn))
        end
        def ach_transfer_return=(_)
        end

        # A Card Dispute Acceptance object. This field will be present in the JSON
        #   response if and only if `category` is equal to `card_dispute_acceptance`.
        #   Contains the details of a successful Card Dispute.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::CardDisputeAcceptance)) }
        def card_dispute_acceptance
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CardDisputeAcceptance))
            .returns(T.nilable(Increase::Models::Transaction::Source::CardDisputeAcceptance))
        end
        def card_dispute_acceptance=(_)
        end

        # A Card Dispute Loss object. This field will be present in the JSON response if
        #   and only if `category` is equal to `card_dispute_loss`. Contains the details of
        #   a lost Card Dispute.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::CardDisputeLoss)) }
        def card_dispute_loss
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CardDisputeLoss))
            .returns(T.nilable(Increase::Models::Transaction::Source::CardDisputeLoss))
        end
        def card_dispute_loss=(_)
        end

        # A Card Refund object. This field will be present in the JSON response if and
        #   only if `category` is equal to `card_refund`. Card Refunds move money back to
        #   the cardholder. While they are usually connected to a Card Settlement an
        #   acquirer can also refund money directly to a card without relation to a
        #   transaction.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund)) }
        def card_refund
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund))
            .returns(T.nilable(Increase::Models::Transaction::Source::CardRefund))
        end
        def card_refund=(_)
        end

        # A Card Revenue Payment object. This field will be present in the JSON response
        #   if and only if `category` is equal to `card_revenue_payment`. Card Revenue
        #   Payments reflect earnings from fees on card transactions.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRevenuePayment)) }
        def card_revenue_payment
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CardRevenuePayment))
            .returns(T.nilable(Increase::Models::Transaction::Source::CardRevenuePayment))
        end
        def card_revenue_payment=(_)
        end

        # A Card Settlement object. This field will be present in the JSON response if and
        #   only if `category` is equal to `card_settlement`. Card Settlements are card
        #   transactions that have cleared and settled. While a settlement is usually
        #   preceded by an authorization, an acquirer can also directly clear a transaction
        #   without first authorizing it.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement)) }
        def card_settlement
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement))
            .returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement))
        end
        def card_settlement=(_)
        end

        # A Cashback Payment object. This field will be present in the JSON response if
        #   and only if `category` is equal to `cashback_payment`. A Cashback Payment
        #   represents the cashback paid to a cardholder for a given period. Cashback is
        #   usually paid monthly for the prior month's transactions.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::CashbackPayment)) }
        def cashback_payment
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CashbackPayment))
            .returns(T.nilable(Increase::Models::Transaction::Source::CashbackPayment))
        end
        def cashback_payment=(_)
        end

        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        sig { returns(Increase::Models::Transaction::Source::Category::TaggedSymbol) }
        def category
        end

        sig do
          params(_: Increase::Models::Transaction::Source::Category::TaggedSymbol)
            .returns(Increase::Models::Transaction::Source::Category::TaggedSymbol)
        end
        def category=(_)
        end

        # A Check Deposit Acceptance object. This field will be present in the JSON
        #   response if and only if `category` is equal to `check_deposit_acceptance`. A
        #   Check Deposit Acceptance is created when a Check Deposit is processed and its
        #   details confirmed. Check Deposits may be returned by the receiving bank, which
        #   will appear as a Check Deposit Return.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::CheckDepositAcceptance)) }
        def check_deposit_acceptance
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CheckDepositAcceptance))
            .returns(T.nilable(Increase::Models::Transaction::Source::CheckDepositAcceptance))
        end
        def check_deposit_acceptance=(_)
        end

        # A Check Deposit Return object. This field will be present in the JSON response
        #   if and only if `category` is equal to `check_deposit_return`. A Check Deposit
        #   Return is created when a Check Deposit is returned by the bank holding the
        #   account it was drawn against. Check Deposits may be returned for a variety of
        #   reasons, including insufficient funds or a mismatched account number. Usually,
        #   checks are returned within the first 7 days after the deposit is made.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::CheckDepositReturn)) }
        def check_deposit_return
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CheckDepositReturn))
            .returns(T.nilable(Increase::Models::Transaction::Source::CheckDepositReturn))
        end
        def check_deposit_return=(_)
        end

        # A Check Transfer Deposit object. This field will be present in the JSON response
        #   if and only if `category` is equal to `check_transfer_deposit`. An Inbound Check
        #   is a check drawn on an Increase account that has been deposited by an external
        #   bank account. These types of checks are not pre-registered.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::CheckTransferDeposit)) }
        def check_transfer_deposit
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::CheckTransferDeposit))
            .returns(T.nilable(Increase::Models::Transaction::Source::CheckTransferDeposit))
        end
        def check_transfer_deposit=(_)
        end

        # A Fee Payment object. This field will be present in the JSON response if and
        #   only if `category` is equal to `fee_payment`. A Fee Payment represents a payment
        #   made to Increase.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::FeePayment)) }
        def fee_payment
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::FeePayment))
            .returns(T.nilable(Increase::Models::Transaction::Source::FeePayment))
        end
        def fee_payment=(_)
        end

        # An Inbound ACH Transfer Intention object. This field will be present in the JSON
        #   response if and only if `category` is equal to `inbound_ach_transfer`. An
        #   Inbound ACH Transfer Intention is created when an ACH transfer is initiated at
        #   another bank and received by Increase.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer)) }
        def inbound_ach_transfer
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer))
            .returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer))
        end
        def inbound_ach_transfer=(_)
        end

        # An Inbound ACH Transfer Return Intention object. This field will be present in
        #   the JSON response if and only if `category` is equal to
        #   `inbound_ach_transfer_return_intention`. An Inbound ACH Transfer Return
        #   Intention is created when an ACH transfer is initiated at another bank and
        #   returned by Increase.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransferReturnIntention)) }
        def inbound_ach_transfer_return_intention
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundACHTransferReturnIntention))
            .returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransferReturnIntention))
        end
        def inbound_ach_transfer_return_intention=(_)
        end

        # An Inbound Check Adjustment object. This field will be present in the JSON
        #   response if and only if `category` is equal to `inbound_check_adjustment`. An
        #   Inbound Check Adjustment is created when Increase receives an adjustment for a
        #   check or return deposited through Check21.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundCheckAdjustment)) }
        def inbound_check_adjustment
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundCheckAdjustment))
            .returns(T.nilable(Increase::Models::Transaction::Source::InboundCheckAdjustment))
        end
        def inbound_check_adjustment=(_)
        end

        # An Inbound Check Deposit Return Intention object. This field will be present in
        #   the JSON response if and only if `category` is equal to
        #   `inbound_check_deposit_return_intention`. An Inbound Check Deposit Return
        #   Intention is created when Increase receives an Inbound Check and the User
        #   requests that it be returned.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention)) }
        def inbound_check_deposit_return_intention
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention))
            .returns(T.nilable(Increase::Models::Transaction::Source::InboundCheckDepositReturnIntention))
        end
        def inbound_check_deposit_return_intention=(_)
        end

        # An Inbound Real-Time Payments Transfer Confirmation object. This field will be
        #   present in the JSON response if and only if `category` is equal to
        #   `inbound_real_time_payments_transfer_confirmation`. An Inbound Real-Time
        #   Payments Transfer Confirmation is created when a Real-Time Payments transfer is
        #   initiated at another bank and received by Increase.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation)) }
        def inbound_real_time_payments_transfer_confirmation
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation))
            .returns(T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation))
        end
        def inbound_real_time_payments_transfer_confirmation=(_)
        end

        # An Inbound Real-Time Payments Transfer Decline object. This field will be
        #   present in the JSON response if and only if `category` is equal to
        #   `inbound_real_time_payments_transfer_decline`.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline)) }
        def inbound_real_time_payments_transfer_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline))
            .returns(T.nilable(Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline))
        end
        def inbound_real_time_payments_transfer_decline=(_)
        end

        # An Inbound Wire Reversal object. This field will be present in the JSON response
        #   if and only if `category` is equal to `inbound_wire_reversal`. An Inbound Wire
        #   Reversal represents a reversal of a wire transfer that was initiated via
        #   Increase. The other bank is sending the money back. This most often happens when
        #   the original destination account details were incorrect.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundWireReversal)) }
        def inbound_wire_reversal
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundWireReversal))
            .returns(T.nilable(Increase::Models::Transaction::Source::InboundWireReversal))
        end
        def inbound_wire_reversal=(_)
        end

        # An Inbound Wire Transfer Intention object. This field will be present in the
        #   JSON response if and only if `category` is equal to `inbound_wire_transfer`. An
        #   Inbound Wire Transfer Intention is created when a wire transfer is initiated at
        #   another bank and received by Increase.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundWireTransfer)) }
        def inbound_wire_transfer
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundWireTransfer))
            .returns(T.nilable(Increase::Models::Transaction::Source::InboundWireTransfer))
        end
        def inbound_wire_transfer=(_)
        end

        # An Inbound Wire Transfer Reversal Intention object. This field will be present
        #   in the JSON response if and only if `category` is equal to
        #   `inbound_wire_transfer_reversal`. An Inbound Wire Transfer Reversal Intention is
        #   created when Increase has received a wire and the User requests that it be
        #   reversed.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundWireTransferReversal)) }
        def inbound_wire_transfer_reversal
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InboundWireTransferReversal))
            .returns(T.nilable(Increase::Models::Transaction::Source::InboundWireTransferReversal))
        end
        def inbound_wire_transfer_reversal=(_)
        end

        # An Interest Payment object. This field will be present in the JSON response if
        #   and only if `category` is equal to `interest_payment`. An Interest Payment
        #   represents a payment of interest on an account. Interest is usually paid
        #   monthly.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InterestPayment)) }
        def interest_payment
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InterestPayment))
            .returns(T.nilable(Increase::Models::Transaction::Source::InterestPayment))
        end
        def interest_payment=(_)
        end

        # An Internal Source object. This field will be present in the JSON response if
        #   and only if `category` is equal to `internal_source`. A transaction between the
        #   user and Increase. See the `reason` attribute for more information.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::InternalSource)) }
        def internal_source
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::InternalSource))
            .returns(T.nilable(Increase::Models::Transaction::Source::InternalSource))
        end
        def internal_source=(_)
        end

        # If the category of this Transaction source is equal to `other`, this field will
        #   contain an empty object, otherwise it will contain null.
        sig { returns(T.nilable(T.anything)) }
        def other
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def other=(_)
        end

        # A Real-Time Payments Transfer Acknowledgement object. This field will be present
        #   in the JSON response if and only if `category` is equal to
        #   `real_time_payments_transfer_acknowledgement`. A Real-Time Payments Transfer
        #   Acknowledgement is created when a Real-Time Payments Transfer sent from Increase
        #   is acknowledged by the receiving bank.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement)) }
        def real_time_payments_transfer_acknowledgement
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement))
            .returns(T.nilable(Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement))
        end
        def real_time_payments_transfer_acknowledgement=(_)
        end

        # A Sample Funds object. This field will be present in the JSON response if and
        #   only if `category` is equal to `sample_funds`. Sample funds for testing
        #   purposes.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::SampleFunds)) }
        def sample_funds
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::SampleFunds))
            .returns(T.nilable(Increase::Models::Transaction::Source::SampleFunds))
        end
        def sample_funds=(_)
        end

        # A Wire Transfer Intention object. This field will be present in the JSON
        #   response if and only if `category` is equal to `wire_transfer_intention`. A Wire
        #   Transfer initiated via Increase and sent to a different bank.
        sig { returns(T.nilable(Increase::Models::Transaction::Source::WireTransferIntention)) }
        def wire_transfer_intention
        end

        sig do
          params(_: T.nilable(Increase::Models::Transaction::Source::WireTransferIntention))
            .returns(T.nilable(Increase::Models::Transaction::Source::WireTransferIntention))
        end
        def wire_transfer_intention=(_)
        end

        # This is an object giving more details on the network-level event that caused the
        #   Transaction. Note that for backwards compatibility reasons, additional
        #   undocumented keys may appear in this object. These should be treated as
        #   deprecated and will be removed in the future.
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
            category: Increase::Models::Transaction::Source::Category::TaggedSymbol,
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
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          override
            .returns(
              {
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
                category: Increase::Models::Transaction::Source::Category::TaggedSymbol,
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
              }
            )
        end
        def to_hash
        end

        class AccountTransferIntention < Increase::BaseModel
          # The pending amount in the minor unit of the transaction's currency. For dollars,
          #   for example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
          #   account currency.
          sig { returns(Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # The description you chose to give the transfer.
          sig { returns(String) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          # The identifier of the Account to where the Account Transfer was sent.
          sig { returns(String) }
          def destination_account_id
          end

          sig { params(_: String).returns(String) }
          def destination_account_id=(_)
          end

          # The identifier of the Account from where the Account Transfer was sent.
          sig { returns(String) }
          def source_account_id
          end

          sig { params(_: String).returns(String) }
          def source_account_id=(_)
          end

          # The identifier of the Account Transfer that led to this Pending Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An Account Transfer Intention object. This field will be present in the JSON
          #   response if and only if `category` is equal to `account_transfer_intention`. Two
          #   Account Transfer Intentions are created from each Account Transfer. One
          #   decrements the source account, and the other increments the destination account.
          sig do
            params(
              amount: Integer,
              currency: Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol,
              description: String,
              destination_account_id: String,
              source_account_id: String,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, currency:, description:, destination_account_id:, source_account_id:, transfer_id:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  currency: Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol,
                  description: String,
                  destination_account_id: String,
                  source_account_id: String,
                  transfer_id: String
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
          #   account currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::AccountTransferIntention::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD =
              T.let(:CAD, Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF =
              T.let(:CHF, Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR =
              T.let(:EUR, Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP =
              T.let(:GBP, Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY =
              T.let(:JPY, Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD =
              T.let(:USD, Increase::Models::Transaction::Source::AccountTransferIntention::Currency::TaggedSymbol)
          end
        end

        class ACHTransferIntention < Increase::BaseModel
          # The account number for the destination account.
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          # The amount in the minor unit of the transaction's currency. For dollars, for
          #   example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
          #   destination account.
          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          # A description set when the ACH Transfer was created.
          sig { returns(String) }
          def statement_descriptor
          end

          sig { params(_: String).returns(String) }
          def statement_descriptor=(_)
          end

          # The identifier of the ACH Transfer that led to this Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An ACH Transfer Intention object. This field will be present in the JSON
          #   response if and only if `category` is equal to `ach_transfer_intention`. An ACH
          #   Transfer Intention is created from an ACH Transfer. It reflects the intention to
          #   move money into or out of an Increase account via the ACH network.
          sig do
            params(
              account_number: String,
              amount: Integer,
              routing_number: String,
              statement_descriptor: String,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(account_number:, amount:, routing_number:, statement_descriptor:, transfer_id:)
          end

          sig do
            override
              .returns(
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
          # The identifier of the ACH Transfer that led to this Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An ACH Transfer Rejection object. This field will be present in the JSON
          #   response if and only if `category` is equal to `ach_transfer_rejection`. An ACH
          #   Transfer Rejection is created when an ACH Transfer is rejected by Increase. It
          #   offsets the ACH Transfer Intention. These rejections are rare.
          sig { params(transfer_id: String).returns(T.attached_class) }
          def self.new(transfer_id:)
          end

          sig { override.returns({transfer_id: String}) }
          def to_hash
          end
        end

        class ACHTransferReturn < Increase::BaseModel
          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   the transfer was created.
          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          # The three character ACH return code, in the range R01 to R85.
          sig { returns(String) }
          def raw_return_reason_code
          end

          sig { params(_: String).returns(String) }
          def raw_return_reason_code=(_)
          end

          # Why the ACH Transfer was returned. This reason code is sent by the receiving
          #   bank back to Increase.
          sig { returns(Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol) }
          def return_reason_code
          end

          sig do
            params(_: Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol)
          end
          def return_reason_code=(_)
          end

          # A 15 digit number that was generated by the bank that initiated the return. The
          #   trace number of the return is different than that of the original transfer. ACH
          #   trace numbers are not unique, but along with the amount and date this number can
          #   be used to identify the ACH return at the bank that initiated it.
          sig { returns(String) }
          def trace_number
          end

          sig { params(_: String).returns(String) }
          def trace_number=(_)
          end

          # The identifier of the Transaction associated with this return.
          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          # The identifier of the ACH Transfer associated with this return.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An ACH Transfer Return object. This field will be present in the JSON response
          #   if and only if `category` is equal to `ach_transfer_return`. An ACH Transfer
          #   Return is created when an ACH Transfer is returned by the receiving bank. It
          #   offsets the ACH Transfer Intention. ACH Transfer Returns usually occur within
          #   the first two business days after the transfer is initiated, but can occur much
          #   later.
          sig do
            params(
              created_at: Time,
              raw_return_reason_code: String,
              return_reason_code: Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol,
              trace_number: String,
              transaction_id: String,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(created_at:, raw_return_reason_code:, return_reason_code:, trace_number:, transaction_id:, transfer_id:)
          end

          sig do
            override
              .returns(
                {
                  created_at: Time,
                  raw_return_reason_code: String,
                  return_reason_code: Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol,
                  trace_number: String,
                  transaction_id: String,
                  transfer_id: String
                }
              )
          end
          def to_hash
          end

          # Why the ACH Transfer was returned. This reason code is sent by the receiving
          #   bank back to Increase.
          module ReturnReasonCode
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol) }

            # Code R01. Insufficient funds in the receiving account. Sometimes abbreviated to NSF.
            INSUFFICIENT_FUND =
              T.let(
                :insufficient_fund,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R03. The account does not exist or the receiving bank was unable to locate it.
            NO_ACCOUNT =
              T.let(
                :no_account,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R02. The account is closed at the receiving bank.
            ACCOUNT_CLOSED =
              T.let(
                :account_closed,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R04. The account number is invalid at the receiving bank.
            INVALID_ACCOUNT_NUMBER_STRUCTURE =
              T.let(
                :invalid_account_number_structure,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R16. The account at the receiving bank was frozen per the Office of Foreign Assets Control.
            ACCOUNT_FROZEN_ENTRY_RETURNED_PER_OFAC_INSTRUCTION =
              T.let(
                :account_frozen_entry_returned_per_ofac_instruction,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R23. The receiving bank account refused a credit transfer.
            CREDIT_ENTRY_REFUSED_BY_RECEIVER =
              T.let(
                :credit_entry_refused_by_receiver,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R05. The receiving bank rejected because of an incorrect Standard Entry Class code.
            UNAUTHORIZED_DEBIT_TO_CONSUMER_ACCOUNT_USING_CORPORATE_SEC_CODE =
              T.let(
                :unauthorized_debit_to_consumer_account_using_corporate_sec_code,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R29. The corporate customer at the receiving bank reversed the transfer.
            CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED =
              T.let(
                :corporate_customer_advised_not_authorized,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R08. The receiving bank stopped payment on this transfer.
            PAYMENT_STOPPED =
              T.let(
                :payment_stopped,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R20. The receiving bank account does not perform transfers.
            NON_TRANSACTION_ACCOUNT =
              T.let(
                :non_transaction_account,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R09. The receiving bank account does not have enough available balance for the transfer.
            UNCOLLECTED_FUNDS =
              T.let(
                :uncollected_funds,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R28. The routing number is incorrect.
            ROUTING_NUMBER_CHECK_DIGIT_ERROR =
              T.let(
                :routing_number_check_digit_error,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R10. The customer at the receiving bank reversed the transfer.
            CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
              T.let(
                :customer_advised_unauthorized_improper_ineligible_or_incomplete,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R19. The amount field is incorrect or too large.
            AMOUNT_FIELD_ERROR =
              T.let(
                :amount_field_error,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R07. The customer at the receiving institution informed their bank that they have revoked authorization for a previously authorized transfer.
            AUTHORIZATION_REVOKED_BY_CUSTOMER =
              T.let(
                :authorization_revoked_by_customer,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R13. The routing number is invalid.
            INVALID_ACH_ROUTING_NUMBER =
              T.let(
                :invalid_ach_routing_number,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R17. The receiving bank is unable to process a field in the transfer.
            FILE_RECORD_EDIT_CRITERIA =
              T.let(
                :file_record_edit_criteria,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R45. The individual name field was invalid.
            ENR_INVALID_INDIVIDUAL_NAME =
              T.let(
                :enr_invalid_individual_name,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R06. The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
            RETURNED_PER_ODFI_REQUEST =
              T.let(
                :returned_per_odfi_request,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R34. The receiving bank's regulatory supervisor has limited their participation in the ACH network.
            LIMITED_PARTICIPATION_DFI =
              T.let(
                :limited_participation_dfi,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R85. The outbound international ACH transfer was incorrect.
            INCORRECTLY_CODED_OUTBOUND_INTERNATIONAL_PAYMENT =
              T.let(
                :incorrectly_coded_outbound_international_payment,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R12. A rare return reason. The account was sold to another bank.
            ACCOUNT_SOLD_TO_ANOTHER_DFI =
              T.let(
                :account_sold_to_another_dfi,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R25. The addenda record is incorrect or missing.
            ADDENDA_ERROR =
              T.let(
                :addenda_error,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R15. A rare return reason. The account holder is deceased.
            BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED =
              T.let(
                :beneficiary_or_account_holder_deceased,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R11. A rare return reason. The customer authorized some payment to the sender, but this payment was not in error.
            CUSTOMER_ADVISED_NOT_WITHIN_AUTHORIZATION_TERMS =
              T.let(
                :customer_advised_not_within_authorization_terms,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R74. A rare return reason. Sent in response to a return that was returned with code `field_error`. The latest return should include the corrected field(s).
            CORRECTED_RETURN =
              T.let(
                :corrected_return,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R24. A rare return reason. The receiving bank received an exact duplicate entry with the same trace number and amount.
            DUPLICATE_ENTRY =
              T.let(
                :duplicate_entry,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R67. A rare return reason. The return this message refers to was a duplicate.
            DUPLICATE_RETURN =
              T.let(
                :duplicate_return,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R47. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_DUPLICATE_ENROLLMENT =
              T.let(
                :enr_duplicate_enrollment,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R43. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_INVALID_DFI_ACCOUNT_NUMBER =
              T.let(
                :enr_invalid_dfi_account_number,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R44. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_INVALID_INDIVIDUAL_ID_NUMBER =
              T.let(
                :enr_invalid_individual_id_number,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R46. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_INVALID_REPRESENTATIVE_PAYEE_INDICATOR =
              T.let(
                :enr_invalid_representative_payee_indicator,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R41. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_INVALID_TRANSACTION_CODE =
              T.let(
                :enr_invalid_transaction_code,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R40. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_RETURN_OF_ENR_ENTRY =
              T.let(
                :enr_return_of_enr_entry,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R42. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
            ENR_ROUTING_NUMBER_CHECK_DIGIT_ERROR =
              T.let(
                :enr_routing_number_check_digit_error,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R84. A rare return reason. The International ACH Transfer cannot be processed by the gateway.
            ENTRY_NOT_PROCESSED_BY_GATEWAY =
              T.let(
                :entry_not_processed_by_gateway,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R69. A rare return reason. One or more of the fields in the ACH were malformed.
            FIELD_ERROR =
              T.let(
                :field_error,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R83. A rare return reason. The Foreign receiving bank was unable to settle this ACH transfer.
            FOREIGN_RECEIVING_DFI_UNABLE_TO_SETTLE =
              T.let(
                :foreign_receiving_dfi_unable_to_settle,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R80. A rare return reason. The International ACH Transfer is malformed.
            IAT_ENTRY_CODING_ERROR =
              T.let(
                :iat_entry_coding_error,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R18. A rare return reason. The ACH has an improper effective entry date field.
            IMPROPER_EFFECTIVE_ENTRY_DATE =
              T.let(
                :improper_effective_entry_date,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R39. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
            IMPROPER_SOURCE_DOCUMENT_SOURCE_DOCUMENT_PRESENTED =
              T.let(
                :improper_source_document_source_document_presented,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R21. A rare return reason. The Company ID field of the ACH was invalid.
            INVALID_COMPANY_ID =
              T.let(
                :invalid_company_id,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R82. A rare return reason. The foreign receiving bank identifier for an International ACH Transfer was invalid.
            INVALID_FOREIGN_RECEIVING_DFI_IDENTIFICATION =
              T.let(
                :invalid_foreign_receiving_dfi_identification,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R22. A rare return reason. The Individual ID number field of the ACH was invalid.
            INVALID_INDIVIDUAL_ID_NUMBER =
              T.let(
                :invalid_individual_id_number,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R53. A rare return reason. Both the Represented Check ("RCK") entry and the original check were presented to the bank.
            ITEM_AND_RCK_ENTRY_PRESENTED_FOR_PAYMENT =
              T.let(
                :item_and_rck_entry_presented_for_payment,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R51. A rare return reason. The Represented Check ("RCK") entry is ineligible.
            ITEM_RELATED_TO_RCK_ENTRY_IS_INELIGIBLE =
              T.let(
                :item_related_to_rck_entry_is_ineligible,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R26. A rare return reason. The ACH is missing a required field.
            MANDATORY_FIELD_ERROR =
              T.let(
                :mandatory_field_error,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R71. A rare return reason. The receiving bank does not recognize the routing number in a dishonored return entry.
            MISROUTED_DISHONORED_RETURN =
              T.let(
                :misrouted_dishonored_return,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R61. A rare return reason. The receiving bank does not recognize the routing number in a return entry.
            MISROUTED_RETURN =
              T.let(
                :misrouted_return,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R76. A rare return reason. Sent in response to a return, the bank does not find the errors alleged by the returning bank.
            NO_ERRORS_FOUND =
              T.let(
                :no_errors_found,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R77. A rare return reason. The receiving bank does not accept the return of the erroneous debit. The funds are not available at the receiving bank.
            NON_ACCEPTANCE_OF_R62_DISHONORED_RETURN =
              T.let(
                :non_acceptance_of_r62_dishonored_return,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R81. A rare return reason. The receiving bank does not accept International ACH Transfers.
            NON_PARTICIPANT_IN_IAT_PROGRAM =
              T.let(
                :non_participant_in_iat_program,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R31. A rare return reason. A return that has been agreed to be accepted by the receiving bank, despite falling outside of the usual return timeframe.
            PERMISSIBLE_RETURN_ENTRY =
              T.let(
                :permissible_return_entry,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R70. A rare return reason. The receiving bank had not approved this return.
            PERMISSIBLE_RETURN_ENTRY_NOT_ACCEPTED =
              T.let(
                :permissible_return_entry_not_accepted,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R32. A rare return reason. The receiving bank could not settle this transaction.
            RDFI_NON_SETTLEMENT =
              T.let(
                :rdfi_non_settlement,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R30. A rare return reason. The receiving bank does not accept Check Truncation ACH transfers.
            RDFI_PARTICIPANT_IN_CHECK_TRUNCATION_PROGRAM =
              T.let(
                :rdfi_participant_in_check_truncation_program,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R14. A rare return reason. The payee is deceased.
            REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
              T.let(
                :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R75. A rare return reason. The originating bank disputes that an earlier `duplicate_entry` return was actually a duplicate.
            RETURN_NOT_A_DUPLICATE =
              T.let(
                :return_not_a_duplicate,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R62. A rare return reason. The originating financial institution made a mistake and this return corrects it.
            RETURN_OF_ERRONEOUS_OR_REVERSING_DEBIT =
              T.let(
                :return_of_erroneous_or_reversing_debit,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R36. A rare return reason. Return of a malformed credit entry.
            RETURN_OF_IMPROPER_CREDIT_ENTRY =
              T.let(
                :return_of_improper_credit_entry,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R35. A rare return reason. Return of a malformed debit entry.
            RETURN_OF_IMPROPER_DEBIT_ENTRY =
              T.let(
                :return_of_improper_debit_entry,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R33. A rare return reason. Return of a Destroyed Check ("XKC") entry.
            RETURN_OF_XCK_ENTRY =
              T.let(
                :return_of_xck_entry,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R37. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
            SOURCE_DOCUMENT_PRESENTED_FOR_PAYMENT =
              T.let(
                :source_document_presented_for_payment,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R50. A rare return reason. State law prevents the bank from accepting the Represented Check ("RCK") entry.
            STATE_LAW_AFFECTING_RCK_ACCEPTANCE =
              T.let(
                :state_law_affecting_rck_acceptance,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R52. A rare return reason. A stop payment was issued on a Represented Check ("RCK") entry.
            STOP_PAYMENT_ON_ITEM_RELATED_TO_RCK_ENTRY =
              T.let(
                :stop_payment_on_item_related_to_rck_entry,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R38. A rare return reason. The source attached to the ACH, usually an ACH check conversion, includes a stop payment.
            STOP_PAYMENT_ON_SOURCE_DOCUMENT =
              T.let(
                :stop_payment_on_source_document,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R73. A rare return reason. The bank receiving an `untimely_return` believes it was on time.
            TIMELY_ORIGINAL_RETURN =
              T.let(
                :timely_original_return,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R27. A rare return reason. An ACH return's trace number does not match an originated ACH.
            TRACE_NUMBER_ERROR =
              T.let(
                :trace_number_error,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R72. A rare return reason. The dishonored return was sent too late.
            UNTIMELY_DISHONORED_RETURN =
              T.let(
                :untimely_dishonored_return,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )

            # Code R68. A rare return reason. The return was sent too late.
            UNTIMELY_RETURN =
              T.let(
                :untimely_return,
                Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode::TaggedSymbol
              )
          end
        end

        class CardDisputeAcceptance < Increase::BaseModel
          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   the Card Dispute was accepted.
          sig { returns(Time) }
          def accepted_at
          end

          sig { params(_: Time).returns(Time) }
          def accepted_at=(_)
          end

          # The identifier of the Card Dispute that was accepted.
          sig { returns(String) }
          def card_dispute_id
          end

          sig { params(_: String).returns(String) }
          def card_dispute_id=(_)
          end

          # The identifier of the Transaction that was created to return the disputed funds
          #   to your account.
          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          # A Card Dispute Acceptance object. This field will be present in the JSON
          #   response if and only if `category` is equal to `card_dispute_acceptance`.
          #   Contains the details of a successful Card Dispute.
          sig do
            params(
              accepted_at: Time,
              card_dispute_id: String,
              transaction_id: String
            ).returns(T.attached_class)
          end
          def self.new(accepted_at:, card_dispute_id:, transaction_id:)
          end

          sig { override.returns({accepted_at: Time, card_dispute_id: String, transaction_id: String}) }
          def to_hash
          end
        end

        class CardDisputeLoss < Increase::BaseModel
          # The identifier of the Card Dispute that was lost.
          sig { returns(String) }
          def card_dispute_id
          end

          sig { params(_: String).returns(String) }
          def card_dispute_id=(_)
          end

          # Why the Card Dispute was lost.
          sig { returns(String) }
          def explanation
          end

          sig { params(_: String).returns(String) }
          def explanation=(_)
          end

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   the Card Dispute was lost.
          sig { returns(Time) }
          def lost_at
          end

          sig { params(_: Time).returns(Time) }
          def lost_at=(_)
          end

          # The identifier of the Transaction that was created to debit the disputed funds
          #   from your account.
          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          # A Card Dispute Loss object. This field will be present in the JSON response if
          #   and only if `category` is equal to `card_dispute_loss`. Contains the details of
          #   a lost Card Dispute.
          sig do
            params(card_dispute_id: String, explanation: String, lost_at: Time, transaction_id: String)
              .returns(T.attached_class)
          end
          def self.new(card_dispute_id:, explanation:, lost_at:, transaction_id:)
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
          # The Card Refund identifier.
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # The amount in the minor unit of the transaction's settlement currency. For
          #   dollars, for example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The ID of the Card Payment this transaction belongs to.
          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          # Cashback debited for this transaction, if eligible. Cashback is paid out in
          #   aggregate, monthly.
          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::Cashback)) }
          def cashback
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::Cashback))
              .returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::Cashback))
          end
          def cashback=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's settlement currency.
          sig { returns(Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # Interchange assessed as a part of this transaciton.
          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::Interchange)) }
          def interchange
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::Interchange))
              .returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::Interchange))
          end
          def interchange=(_)
          end

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          # The 4-digit MCC describing the merchant's business.
          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          # The city the merchant resides in.
          sig { returns(String) }
          def merchant_city
          end

          sig { params(_: String).returns(String) }
          def merchant_city=(_)
          end

          # The country the merchant resides in.
          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          # The name of the merchant.
          sig { returns(String) }
          def merchant_name
          end

          sig { params(_: String).returns(String) }
          def merchant_name=(_)
          end

          # The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          # The state the merchant resides in.
          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          # Network-specific identifiers for this refund.
          sig { returns(Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers)
              .returns(Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          # The amount in the minor unit of the transaction's presentment currency.
          sig { returns(Integer) }
          def presentment_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def presentment_amount=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's presentment currency.
          sig { returns(String) }
          def presentment_currency
          end

          sig { params(_: String).returns(String) }
          def presentment_currency=(_)
          end

          # Additional details about the card purchase, such as tax and industry-specific
          #   fields.
          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails)) }
          def purchase_details
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails))
              .returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails))
          end
          def purchase_details=(_)
          end

          # The identifier of the Transaction associated with this Transaction.
          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_refund`.
          sig { returns(Increase::Models::Transaction::Source::CardRefund::Type::TaggedSymbol) }
          def type
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CardRefund::Type::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::CardRefund::Type::TaggedSymbol)
          end
          def type=(_)
          end

          # A Card Refund object. This field will be present in the JSON response if and
          #   only if `category` is equal to `card_refund`. Card Refunds move money back to
          #   the cardholder. While they are usually connected to a Card Settlement an
          #   acquirer can also refund money directly to a card without relation to a
          #   transaction.
          sig do
            params(
              id: String,
              amount: Integer,
              card_payment_id: String,
              cashback: T.nilable(Increase::Models::Transaction::Source::CardRefund::Cashback),
              currency: Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol,
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
              type: Increase::Models::Transaction::Source::CardRefund::Type::TaggedSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  card_payment_id: String,
                  cashback: T.nilable(Increase::Models::Transaction::Source::CardRefund::Cashback),
                  currency: Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol,
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
                  type: Increase::Models::Transaction::Source::CardRefund::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          class Cashback < Increase::BaseModel
            # The cashback amount given as a string containing a decimal number. The amount is
            #   a positive number if it will be credited to you (e.g., settlements) and a
            #   negative number if it will be debited (e.g., refunds).
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            sig { returns(Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol) }
            def currency
            end

            sig do
              params(_: Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol)
                .returns(Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol)
            end
            def currency=(_)
            end

            # Cashback debited for this transaction, if eligible. Cashback is paid out in
            #   aggregate, monthly.
            sig do
              params(
                amount: String,
                currency: Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, currency:)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    currency: Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol
                  }
                )
            end
            def to_hash
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            module Currency
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol) }

              # Canadian Dollar (CAD)
              CAD = T.let(:CAD, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol)

              # Swiss Franc (CHF)
              CHF = T.let(:CHF, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol)

              # Euro (EUR)
              EUR = T.let(:EUR, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol)

              # British Pound (GBP)
              GBP = T.let(:GBP, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol)

              # Japanese Yen (JPY)
              JPY = T.let(:JPY, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol)

              # US Dollar (USD)
              USD = T.let(:USD, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency::TaggedSymbol)
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's settlement currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::Transaction::Source::CardRefund::Currency::TaggedSymbol)
          end

          class Interchange < Increase::BaseModel
            # The interchange amount given as a string containing a decimal number. The amount
            #   is a positive number if it is credited to Increase (e.g., settlements) and a
            #   negative number if it is debited (e.g., refunds).
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            # The card network specific interchange code.
            sig { returns(T.nilable(String)) }
            def code
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def code=(_)
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   reimbursement.
            sig { returns(Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol) }
            def currency
            end

            sig do
              params(_: Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol)
                .returns(Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol)
            end
            def currency=(_)
            end

            # Interchange assessed as a part of this transaciton.
            sig do
              params(
                amount: String,
                code: T.nilable(String),
                currency: Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, code:, currency:)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    code: T.nilable(String),
                    currency: Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol
                  }
                )
            end
            def to_hash
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   reimbursement.
            module Currency
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol) }

              # Canadian Dollar (CAD)
              CAD = T.let(:CAD, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol)

              # Swiss Franc (CHF)
              CHF = T.let(:CHF, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol)

              # Euro (EUR)
              EUR = T.let(:EUR, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol)

              # British Pound (GBP)
              GBP = T.let(:GBP, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol)

              # Japanese Yen (JPY)
              JPY = T.let(:JPY, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol)

              # US Dollar (USD)
              USD = T.let(:USD, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency::TaggedSymbol)
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A network assigned business ID that identifies the acquirer that processed this
            #   transaction.
            sig { returns(String) }
            def acquirer_business_id
            end

            sig { params(_: String).returns(String) }
            def acquirer_business_id=(_)
            end

            # A globally unique identifier for this settlement.
            sig { returns(String) }
            def acquirer_reference_number
            end

            sig { params(_: String).returns(String) }
            def acquirer_reference_number=(_)
            end

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

            # Network-specific identifiers for this refund.
            sig do
              params(
                acquirer_business_id: String,
                acquirer_reference_number: String,
                transaction_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(acquirer_business_id:, acquirer_reference_number:, transaction_id:)
            end

            sig do
              override
                .returns(
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
            # Fields specific to car rentals.
            sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental)) }
            def car_rental
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental))
                .returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental))
            end
            def car_rental=(_)
            end

            # An identifier from the merchant for the customer or consumer.
            sig { returns(T.nilable(String)) }
            def customer_reference_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def customer_reference_identifier=(_)
            end

            # The state or provincial tax amount in minor units.
            sig { returns(T.nilable(Integer)) }
            def local_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def local_tax_amount=(_)
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   assessed.
            sig { returns(T.nilable(String)) }
            def local_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def local_tax_currency=(_)
            end

            # Fields specific to lodging.
            sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging)) }
            def lodging
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging))
                .returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging))
            end
            def lodging=(_)
            end

            # The national tax amount in minor units.
            sig { returns(T.nilable(Integer)) }
            def national_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def national_tax_amount=(_)
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   assessed.
            sig { returns(T.nilable(String)) }
            def national_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def national_tax_currency=(_)
            end

            # An identifier from the merchant for the purchase to the issuer and cardholder.
            sig { returns(T.nilable(String)) }
            def purchase_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_identifier=(_)
            end

            # The format of the purchase identifier.
            sig do
              returns(
                T.nilable(
                  Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )
              )
            end
            def purchase_identifier_format
            end

            sig do
              params(
                _: T.nilable(
                  Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )
              )
                .returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                  )
                )
            end
            def purchase_identifier_format=(_)
            end

            # Fields specific to travel.
            sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel)) }
            def travel
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel))
                .returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel))
            end
            def travel=(_)
            end

            # Additional details about the card purchase, such as tax and industry-specific
            #   fields.
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
                purchase_identifier_format: T.nilable(
                  Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                ),
                travel: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel)
              )
                .returns(T.attached_class)
            end
            def self.new(
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
              override
                .returns(
                  {
                    car_rental: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental),
                    customer_reference_identifier: T.nilable(String),
                    local_tax_amount: T.nilable(Integer),
                    local_tax_currency: T.nilable(String),
                    lodging: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging),
                    national_tax_amount: T.nilable(Integer),
                    national_tax_currency: T.nilable(String),
                    purchase_identifier: T.nilable(String),
                    purchase_identifier_format: T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                    ),
                    travel: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel)
                  }
                )
            end
            def to_hash
            end

            class CarRental < Increase::BaseModel
              # Code indicating the vehicle's class.
              sig { returns(T.nilable(String)) }
              def car_class_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def car_class_code=(_)
              end

              # Date the customer picked up the car or, in the case of a no-show or pre-pay
              #   transaction, the scheduled pick up date.
              sig { returns(T.nilable(Date)) }
              def checkout_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def checkout_date=(_)
              end

              # Daily rate being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              def daily_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_rental_rate_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental
              #   rate.
              sig { returns(T.nilable(String)) }
              def daily_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_rental_rate_currency=(_)
              end

              # Number of days the vehicle was rented.
              sig { returns(T.nilable(Integer)) }
              def days_rented
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def days_rented=(_)
              end

              # Additional charges (gas, late fee, etc.) being billed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )
                )
              end
              def extra_charges
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                    )
                  )
              end
              def extra_charges=(_)
              end

              # Fuel charges for the vehicle.
              sig { returns(T.nilable(Integer)) }
              def fuel_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def fuel_charges_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges
              #   assessed.
              sig { returns(T.nilable(String)) }
              def fuel_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def fuel_charges_currency=(_)
              end

              # Any insurance being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              def insurance_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def insurance_charges_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance
              #   charges assessed.
              sig { returns(T.nilable(String)) }
              def insurance_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def insurance_charges_currency=(_)
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was
              #   not actually rented (that is, a "no-show" charge).
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )
                )
              end
              def no_show_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                    )
                  )
              end
              def no_show_indicator=(_)
              end

              # Charges for returning the vehicle at a different location than where it was
              #   picked up.
              sig { returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way
              #   drop-off charges assessed.
              sig { returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency=(_)
              end

              # Name of the person renting the vehicle.
              sig { returns(T.nilable(String)) }
              def renter_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def renter_name=(_)
              end

              # Weekly rate being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly
              #   rental rate.
              sig { returns(T.nilable(String)) }
              def weekly_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def weekly_rental_rate_currency=(_)
              end

              # Fields specific to car rentals.
              sig do
                params(
                  car_class_code: T.nilable(String),
                  checkout_date: T.nilable(Date),
                  daily_rental_rate_amount: T.nilable(Integer),
                  daily_rental_rate_currency: T.nilable(String),
                  days_rented: T.nilable(Integer),
                  extra_charges: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  ),
                  fuel_charges_amount: T.nilable(Integer),
                  fuel_charges_currency: T.nilable(String),
                  insurance_charges_amount: T.nilable(Integer),
                  insurance_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  ),
                  one_way_drop_off_charges_amount: T.nilable(Integer),
                  one_way_drop_off_charges_currency: T.nilable(String),
                  renter_name: T.nilable(String),
                  weekly_rental_rate_amount: T.nilable(Integer),
                  weekly_rental_rate_currency: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(
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
                override
                  .returns(
                    {
                      car_class_code: T.nilable(String),
                      checkout_date: T.nilable(Date),
                      daily_rental_rate_amount: T.nilable(Integer),
                      daily_rental_rate_currency: T.nilable(String),
                      days_rented: T.nilable(Integer),
                      extra_charges: T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                      ),
                      fuel_charges_amount: T.nilable(Integer),
                      fuel_charges_currency: T.nilable(String),
                      insurance_charges_amount: T.nilable(Integer),
                      insurance_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                      ),
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

              # Additional charges (gas, late fee, etc.) being billed.
              module ExtraCharges
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges) }
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                    )
                  end

                # No extra charge
                NO_EXTRA_CHARGE =
                  T.let(
                    :no_extra_charge,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Gas
                GAS =
                  T.let(
                    :gas,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Extra mileage
                EXTRA_MILEAGE =
                  T.let(
                    :extra_mileage,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Late return
                LATE_RETURN =
                  T.let(
                    :late_return,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # One way service fee
                ONE_WAY_SERVICE_FEE =
                  T.let(
                    :one_way_service_fee,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Parking violation
                PARKING_VIOLATION =
                  T.let(
                    :parking_violation,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was
              #   not actually rented (that is, a "no-show" charge).
              module NoShowIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                    )
                  end

                # Not applicable
                NOT_APPLICABLE =
                  T.let(
                    :not_applicable,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE =
                  T.let(
                    :no_show_for_specialized_vehicle,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )
              end
            end

            class Lodging < Increase::BaseModel
              # Date the customer checked in.
              sig { returns(T.nilable(Date)) }
              def check_in_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def check_in_date=(_)
              end

              # Daily rate being charged for the room.
              sig { returns(T.nilable(Integer)) }
              def daily_room_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_room_rate_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room
              #   rate.
              sig { returns(T.nilable(String)) }
              def daily_room_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_room_rate_currency=(_)
              end

              # Additional charges (phone, late check-out, etc.) being billed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )
                )
              end
              def extra_charges
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                    )
                  )
              end
              def extra_charges=(_)
              end

              # Folio cash advances for the room.
              sig { returns(T.nilable(Integer)) }
              def folio_cash_advances_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def folio_cash_advances_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash
              #   advances.
              sig { returns(T.nilable(String)) }
              def folio_cash_advances_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def folio_cash_advances_currency=(_)
              end

              # Food and beverage charges for the room.
              sig { returns(T.nilable(Integer)) }
              def food_beverage_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def food_beverage_charges_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and
              #   beverage charges.
              sig { returns(T.nilable(String)) }
              def food_beverage_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def food_beverage_charges_currency=(_)
              end

              # Indicator that the cardholder is being billed for a reserved room that was not
              #   actually used.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )
                )
              end
              def no_show_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                    )
                  )
              end
              def no_show_indicator=(_)
              end

              # Prepaid expenses being charged for the room.
              sig { returns(T.nilable(Integer)) }
              def prepaid_expenses_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def prepaid_expenses_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid
              #   expenses.
              sig { returns(T.nilable(String)) }
              def prepaid_expenses_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def prepaid_expenses_currency=(_)
              end

              # Number of nights the room was rented.
              sig { returns(T.nilable(Integer)) }
              def room_nights
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def room_nights=(_)
              end

              # Total room tax being charged.
              sig { returns(T.nilable(Integer)) }
              def total_room_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_room_tax_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room
              #   tax.
              sig { returns(T.nilable(String)) }
              def total_room_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_room_tax_currency=(_)
              end

              # Total tax being charged for the room.
              sig { returns(T.nilable(Integer)) }
              def total_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_tax_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax
              #   assessed.
              sig { returns(T.nilable(String)) }
              def total_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_tax_currency=(_)
              end

              # Fields specific to lodging.
              sig do
                params(
                  check_in_date: T.nilable(Date),
                  daily_room_rate_amount: T.nilable(Integer),
                  daily_room_rate_currency: T.nilable(String),
                  extra_charges: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  ),
                  folio_cash_advances_amount: T.nilable(Integer),
                  folio_cash_advances_currency: T.nilable(String),
                  food_beverage_charges_amount: T.nilable(Integer),
                  food_beverage_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  ),
                  prepaid_expenses_amount: T.nilable(Integer),
                  prepaid_expenses_currency: T.nilable(String),
                  room_nights: T.nilable(Integer),
                  total_room_tax_amount: T.nilable(Integer),
                  total_room_tax_currency: T.nilable(String),
                  total_tax_amount: T.nilable(Integer),
                  total_tax_currency: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(
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
                override
                  .returns(
                    {
                      check_in_date: T.nilable(Date),
                      daily_room_rate_amount: T.nilable(Integer),
                      daily_room_rate_currency: T.nilable(String),
                      extra_charges: T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                      ),
                      folio_cash_advances_amount: T.nilable(Integer),
                      folio_cash_advances_currency: T.nilable(String),
                      food_beverage_charges_amount: T.nilable(Integer),
                      food_beverage_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                      ),
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

              # Additional charges (phone, late check-out, etc.) being billed.
              module ExtraCharges
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges) }
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                    )
                  end

                # No extra charge
                NO_EXTRA_CHARGE =
                  T.let(
                    :no_extra_charge,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Restaurant
                RESTAURANT =
                  T.let(
                    :restaurant,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Gift shop
                GIFT_SHOP =
                  T.let(
                    :gift_shop,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Mini bar
                MINI_BAR =
                  T.let(
                    :mini_bar,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Telephone
                TELEPHONE =
                  T.let(
                    :telephone,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Other
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Laundry
                LAUNDRY =
                  T.let(
                    :laundry,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )
              end

              # Indicator that the cardholder is being billed for a reserved room that was not
              #   actually used.
              module NoShowIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                    )
                  end

                # Not applicable
                NOT_APPLICABLE =
                  T.let(
                    :not_applicable,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )

                # No show
                NO_SHOW =
                  T.let(
                    :no_show,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )
              end
            end

            # The format of the purchase identifier.
            module PurchaseIdentifierFormat
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                  )
                end

              # Free text
              FREE_TEXT =
                T.let(
                  :free_text,
                  Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Order number
              ORDER_NUMBER =
                T.let(
                  :order_number,
                  Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER =
                T.let(
                  :rental_agreement_number,
                  Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Hotel folio number
              HOTEL_FOLIO_NUMBER =
                T.let(
                  :hotel_folio_number,
                  Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Invoice number
              INVOICE_NUMBER =
                T.let(
                  :invoice_number,
                  Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )
            end

            class Travel < Increase::BaseModel
              # Ancillary purchases in addition to the airfare.
              sig { returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary)) }
              def ancillary
              end

              sig do
                params(
                  _: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary)
                )
                  .returns(T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary))
              end
              def ancillary=(_)
              end

              # Indicates the computerized reservation system used to book the ticket.
              sig { returns(T.nilable(String)) }
              def computerized_reservation_system
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def computerized_reservation_system=(_)
              end

              # Indicates the reason for a credit to the cardholder.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )
                )
              end
              def credit_reason_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                    )
                  )
              end
              def credit_reason_indicator=(_)
              end

              # Date of departure.
              sig { returns(T.nilable(Date)) }
              def departure_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def departure_date=(_)
              end

              # Code for the originating city or airport.
              sig { returns(T.nilable(String)) }
              def origination_city_airport_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def origination_city_airport_code=(_)
              end

              # Name of the passenger.
              sig { returns(T.nilable(String)) }
              def passenger_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def passenger_name=(_)
              end

              # Indicates whether this ticket is non-refundable.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )
                )
              end
              def restricted_ticket_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                    )
                  )
              end
              def restricted_ticket_indicator=(_)
              end

              # Indicates why a ticket was changed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )
                )
              end
              def ticket_change_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                    )
                  )
              end
              def ticket_change_indicator=(_)
              end

              # Ticket number.
              sig { returns(T.nilable(String)) }
              def ticket_number
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def ticket_number=(_)
              end

              # Code for the travel agency if the ticket was issued by a travel agency.
              sig { returns(T.nilable(String)) }
              def travel_agency_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_code=(_)
              end

              # Name of the travel agency if the ticket was issued by a travel agency.
              sig { returns(T.nilable(String)) }
              def travel_agency_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_name=(_)
              end

              # Fields specific to each leg of the journey.
              sig do
                returns(
                  T.nilable(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg])
                )
              end
              def trip_legs
              end

              sig do
                params(
                  _: T.nilable(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg])
                )
                  .returns(
                    T.nilable(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg])
                  )
              end
              def trip_legs=(_)
              end

              # Fields specific to travel.
              sig do
                params(
                  ancillary: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary),
                  computerized_reservation_system: T.nilable(String),
                  credit_reason_indicator: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  ),
                  departure_date: T.nilable(Date),
                  origination_city_airport_code: T.nilable(String),
                  passenger_name: T.nilable(String),
                  restricted_ticket_indicator: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  ),
                  ticket_change_indicator: T.nilable(
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  ),
                  ticket_number: T.nilable(String),
                  travel_agency_code: T.nilable(String),
                  travel_agency_name: T.nilable(String),
                  trip_legs: T.nilable(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg])
                )
                  .returns(T.attached_class)
              end
              def self.new(
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
                override
                  .returns(
                    {
                      ancillary: T.nilable(Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary),
                      computerized_reservation_system: T.nilable(String),
                      credit_reason_indicator: T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                      ),
                      departure_date: T.nilable(Date),
                      origination_city_airport_code: T.nilable(String),
                      passenger_name: T.nilable(String),
                      restricted_ticket_indicator: T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                      ),
                      ticket_change_indicator: T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                      ),
                      ticket_number: T.nilable(String),
                      travel_agency_code: T.nilable(String),
                      travel_agency_name: T.nilable(String),
                      trip_legs: T.nilable(T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg])
                    }
                  )
              end
              def to_hash
              end

              class Ancillary < Increase::BaseModel
                # If this purchase has a connection or relationship to another purchase, such as a
                #   baggage fee for a passenger transport ticket, this field should contain the
                #   ticket document number for the other purchase.
                sig { returns(T.nilable(String)) }
                def connected_ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def connected_ticket_document_number=(_)
                end

                # Indicates the reason for a credit to the cardholder.
                sig do
                  returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )
                  )
                end
                def credit_reason_indicator
                end

                sig do
                  params(
                    _: T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )
                  )
                    .returns(
                      T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                      )
                    )
                end
                def credit_reason_indicator=(_)
                end

                # Name of the passenger or description of the ancillary purchase.
                sig { returns(T.nilable(String)) }
                def passenger_name_or_description
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def passenger_name_or_description=(_)
                end

                # Additional travel charges, such as baggage fees.
                sig do
                  returns(
                    T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service]
                  )
                end
                def services
                end

                sig do
                  params(
                    _: T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service]
                  )
                    .returns(
                      T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service]
                    )
                end
                def services=(_)
                end

                # Ticket document number.
                sig { returns(T.nilable(String)) }
                def ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def ticket_document_number=(_)
                end

                # Ancillary purchases in addition to the airfare.
                sig do
                  params(
                    connected_ticket_document_number: T.nilable(String),
                    credit_reason_indicator: T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    ),
                    passenger_name_or_description: T.nilable(String),
                    services: T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service],
                    ticket_document_number: T.nilable(String)
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  connected_ticket_document_number:,
                  credit_reason_indicator:,
                  passenger_name_or_description:,
                  services:,
                  ticket_document_number:
                )
                end

                sig do
                  override
                    .returns(
                      {
                        connected_ticket_document_number: T.nilable(String),
                        credit_reason_indicator: T.nilable(
                          Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                        ),
                        passenger_name_or_description: T.nilable(String),
                        services: T::Array[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service],
                        ticket_document_number: T.nilable(String)
                      }
                    )
                end
                def to_hash
                end

                # Indicates the reason for a credit to the cardholder.
                module CreditReasonIndicator
                  extend Increase::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                      )
                    end

                  # No credit
                  NO_CREDIT =
                    T.let(
                      :no_credit,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    T.let(
                      :passenger_transport_ancillary_purchase_cancellation,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    T.let(
                      :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Other
                  OTHER =
                    T.let(
                      :other,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )
                end

                class Service < Increase::BaseModel
                  # Category of the ancillary service.
                  sig do
                    returns(
                      T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )
                    )
                  end
                  def category
                  end

                  sig do
                    params(
                      _: T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )
                    )
                      .returns(
                        T.nilable(
                          Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                        )
                      )
                  end
                  def category=(_)
                  end

                  # Sub-category of the ancillary service, free-form.
                  sig { returns(T.nilable(String)) }
                  def sub_category
                  end

                  sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                  def sub_category=(_)
                  end

                  sig do
                    params(
                      category: T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      ),
                      sub_category: T.nilable(String)
                    )
                      .returns(T.attached_class)
                  end
                  def self.new(category:, sub_category:)
                  end

                  sig do
                    override
                      .returns(
                        {
                          category: T.nilable(
                            Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                          ),
                          sub_category: T.nilable(String)
                        }
                      )
                  end
                  def to_hash
                  end

                  # Category of the ancillary service.
                  module Category
                    extend Increase::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category)
                      end
                    OrSymbol =
                      T.type_alias do
                        T.any(
                          Symbol,
                          Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                        )
                      end

                    # None
                    NONE =
                      T.let(
                        :none,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Bundled service
                    BUNDLED_SERVICE =
                      T.let(
                        :bundled_service,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Baggage fee
                    BAGGAGE_FEE =
                      T.let(
                        :baggage_fee,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Change fee
                    CHANGE_FEE =
                      T.let(
                        :change_fee,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Cargo
                    CARGO =
                      T.let(
                        :cargo,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Carbon offset
                    CARBON_OFFSET =
                      T.let(
                        :carbon_offset,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Frequent flyer
                    FREQUENT_FLYER =
                      T.let(
                        :frequent_flyer,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Gift card
                    GIFT_CARD =
                      T.let(
                        :gift_card,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Ground transport
                    GROUND_TRANSPORT =
                      T.let(
                        :ground_transport,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT =
                      T.let(
                        :in_flight_entertainment,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Lounge
                    LOUNGE =
                      T.let(
                        :lounge,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Medical
                    MEDICAL =
                      T.let(
                        :medical,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Meal beverage
                    MEAL_BEVERAGE =
                      T.let(
                        :meal_beverage,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Other
                    OTHER =
                      T.let(
                        :other,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE =
                      T.let(
                        :passenger_assist_fee,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Pets
                    PETS =
                      T.let(
                        :pets,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Seat fees
                    SEAT_FEES =
                      T.let(
                        :seat_fees,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Standby
                    STANDBY =
                      T.let(
                        :standby,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Service fee
                    SERVICE_FEE =
                      T.let(
                        :service_fee,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Store
                    STORE =
                      T.let(
                        :store,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Travel service
                    TRAVEL_SERVICE =
                      T.let(
                        :travel_service,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL =
                      T.let(
                        :unaccompanied_travel,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Upgrades
                    UPGRADES =
                      T.let(
                        :upgrades,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Wi-fi
                    WIFI =
                      T.let(
                        :wifi,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )
                  end
                end
              end

              # Indicates the reason for a credit to the cardholder.
              module CreditReasonIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                    )
                  end

                # No credit
                NO_CREDIT =
                  T.let(
                    :no_credit,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  T.let(
                    :passenger_transport_ancillary_purchase_cancellation,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  T.let(
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION =
                  T.let(
                    :airline_ticket_cancellation,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Other
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET =
                  T.let(
                    :partial_refund_of_airline_ticket,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )
              end

              # Indicates whether this ticket is non-refundable.
              module RestrictedTicketIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                    )
                  end

                # No restrictions
                NO_RESTRICTIONS =
                  T.let(
                    :no_restrictions,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET =
                  T.let(
                    :restricted_non_refundable_ticket,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )
              end

              # Indicates why a ticket was changed.
              module TicketChangeIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                    )
                  end

                # None
                NONE =
                  T.let(
                    :none,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET =
                  T.let(
                    :change_to_existing_ticket,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )

                # New ticket
                NEW_TICKET =
                  T.let(
                    :new_ticket,
                    Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )
              end

              class TripLeg < Increase::BaseModel
                # Carrier code (e.g., United Airlines, Jet Blue, etc.).
                sig { returns(T.nilable(String)) }
                def carrier_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def carrier_code=(_)
                end

                # Code for the destination city or airport.
                sig { returns(T.nilable(String)) }
                def destination_city_airport_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def destination_city_airport_code=(_)
                end

                # Fare basis code.
                sig { returns(T.nilable(String)) }
                def fare_basis_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def fare_basis_code=(_)
                end

                # Flight number.
                sig { returns(T.nilable(String)) }
                def flight_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def flight_number=(_)
                end

                # Service class (e.g., first class, business class, etc.).
                sig { returns(T.nilable(String)) }
                def service_class
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def service_class=(_)
                end

                # Indicates whether a stopover is allowed on this ticket.
                sig do
                  returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )
                  )
                end
                def stop_over_code
                end

                sig do
                  params(
                    _: T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )
                  )
                    .returns(
                      T.nilable(
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                      )
                    )
                end
                def stop_over_code=(_)
                end

                sig do
                  params(
                    carrier_code: T.nilable(String),
                    destination_city_airport_code: T.nilable(String),
                    fare_basis_code: T.nilable(String),
                    flight_number: T.nilable(String),
                    service_class: T.nilable(String),
                    stop_over_code: T.nilable(
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  carrier_code:,
                  destination_city_airport_code:,
                  fare_basis_code:,
                  flight_number:,
                  service_class:,
                  stop_over_code:
                )
                end

                sig do
                  override
                    .returns(
                      {
                        carrier_code: T.nilable(String),
                        destination_city_airport_code: T.nilable(String),
                        fare_basis_code: T.nilable(String),
                        flight_number: T.nilable(String),
                        service_class: T.nilable(String),
                        stop_over_code: T.nilable(
                          Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                        )
                      }
                    )
                end
                def to_hash
                end

                # Indicates whether a stopover is allowed on this ticket.
                module StopOverCode
                  extend Increase::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                      )
                    end

                  # None
                  NONE =
                    T.let(
                      :none,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )

                  # Stop over allowed
                  STOP_OVER_ALLOWED =
                    T.let(
                      :stop_over_allowed,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED =
                    T.let(
                      :stop_over_not_allowed,
                      Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )
                end
              end
            end
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_refund`.
          module Type
            extend Increase::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardRefund::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CardRefund::Type::TaggedSymbol) }

            CARD_REFUND = T.let(:card_refund, Increase::Models::Transaction::Source::CardRefund::Type::TaggedSymbol)
          end
        end

        class CardRevenuePayment < Increase::BaseModel
          # The amount in the minor unit of the transaction's currency. For dollars, for
          #   example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   currency.
          sig { returns(Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # The end of the period for which this transaction paid interest.
          sig { returns(Time) }
          def period_end
          end

          sig { params(_: Time).returns(Time) }
          def period_end=(_)
          end

          # The start of the period for which this transaction paid interest.
          sig { returns(Time) }
          def period_start
          end

          sig { params(_: Time).returns(Time) }
          def period_start=(_)
          end

          # The account the card belonged to.
          sig { returns(T.nilable(String)) }
          def transacted_on_account_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def transacted_on_account_id=(_)
          end

          # A Card Revenue Payment object. This field will be present in the JSON response
          #   if and only if `category` is equal to `card_revenue_payment`. Card Revenue
          #   Payments reflect earnings from fees on card transactions.
          sig do
            params(
              amount: Integer,
              currency: Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol,
              period_end: Time,
              period_start: Time,
              transacted_on_account_id: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, currency:, period_end:, period_start:, transacted_on_account_id:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  currency: Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol,
                  period_end: Time,
                  period_start: Time,
                  transacted_on_account_id: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardRevenuePayment::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::Transaction::Source::CardRevenuePayment::Currency::TaggedSymbol)
          end
        end

        class CardSettlement < Increase::BaseModel
          # The Card Settlement identifier.
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # The amount in the minor unit of the transaction's settlement currency. For
          #   dollars, for example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The Card Authorization that was created prior to this Card Settlement, if one
          #   exists.
          sig { returns(T.nilable(String)) }
          def card_authorization
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def card_authorization=(_)
          end

          # The ID of the Card Payment this transaction belongs to.
          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          # Cashback earned on this transaction, if eligible. Cashback is paid out in
          #   aggregate, monthly.
          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::Cashback)) }
          def cashback
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::Cashback))
              .returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::Cashback))
          end
          def cashback=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's settlement currency.
          sig { returns(Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # Interchange assessed as a part of this transaction.
          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::Interchange)) }
          def interchange
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::Interchange))
              .returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::Interchange))
          end
          def interchange=(_)
          end

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          # The 4-digit MCC describing the merchant's business.
          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          # The city the merchant resides in.
          sig { returns(String) }
          def merchant_city
          end

          sig { params(_: String).returns(String) }
          def merchant_city=(_)
          end

          # The country the merchant resides in.
          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          # The name of the merchant.
          sig { returns(String) }
          def merchant_name
          end

          sig { params(_: String).returns(String) }
          def merchant_name=(_)
          end

          # The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          # The state the merchant resides in.
          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          # Network-specific identifiers for this refund.
          sig { returns(Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers)
              .returns(Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          # The identifier of the Pending Transaction associated with this Transaction.
          sig { returns(T.nilable(String)) }
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
          end

          # The amount in the minor unit of the transaction's presentment currency.
          sig { returns(Integer) }
          def presentment_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def presentment_amount=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's presentment currency.
          sig { returns(String) }
          def presentment_currency
          end

          sig { params(_: String).returns(String) }
          def presentment_currency=(_)
          end

          # Additional details about the card purchase, such as tax and industry-specific
          #   fields.
          sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails)) }
          def purchase_details
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails))
              .returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails))
          end
          def purchase_details=(_)
          end

          # The identifier of the Transaction associated with this Transaction.
          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_settlement`.
          sig { returns(Increase::Models::Transaction::Source::CardSettlement::Type::TaggedSymbol) }
          def type
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CardSettlement::Type::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::CardSettlement::Type::TaggedSymbol)
          end
          def type=(_)
          end

          # A Card Settlement object. This field will be present in the JSON response if and
          #   only if `category` is equal to `card_settlement`. Card Settlements are card
          #   transactions that have cleared and settled. While a settlement is usually
          #   preceded by an authorization, an acquirer can also directly clear a transaction
          #   without first authorizing it.
          sig do
            params(
              id: String,
              amount: Integer,
              card_authorization: T.nilable(String),
              card_payment_id: String,
              cashback: T.nilable(Increase::Models::Transaction::Source::CardSettlement::Cashback),
              currency: Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol,
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
              type: Increase::Models::Transaction::Source::CardSettlement::Type::TaggedSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  card_authorization: T.nilable(String),
                  card_payment_id: String,
                  cashback: T.nilable(Increase::Models::Transaction::Source::CardSettlement::Cashback),
                  currency: Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol,
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
                  type: Increase::Models::Transaction::Source::CardSettlement::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          class Cashback < Increase::BaseModel
            # The cashback amount given as a string containing a decimal number. The amount is
            #   a positive number if it will be credited to you (e.g., settlements) and a
            #   negative number if it will be debited (e.g., refunds).
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            sig { returns(Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol) }
            def currency
            end

            sig do
              params(_: Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol)
                .returns(Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol)
            end
            def currency=(_)
            end

            # Cashback earned on this transaction, if eligible. Cashback is paid out in
            #   aggregate, monthly.
            sig do
              params(
                amount: String,
                currency: Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, currency:)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    currency: Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol
                  }
                )
            end
            def to_hash
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            module Currency
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol) }

              # Canadian Dollar (CAD)
              CAD =
                T.let(:CAD, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol)

              # Swiss Franc (CHF)
              CHF =
                T.let(:CHF, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol)

              # Euro (EUR)
              EUR =
                T.let(:EUR, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol)

              # British Pound (GBP)
              GBP =
                T.let(:GBP, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol)

              # Japanese Yen (JPY)
              JPY =
                T.let(:JPY, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol)

              # US Dollar (USD)
              USD =
                T.let(:USD, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency::TaggedSymbol)
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's settlement currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::Transaction::Source::CardSettlement::Currency::TaggedSymbol)
          end

          class Interchange < Increase::BaseModel
            # The interchange amount given as a string containing a decimal number. The amount
            #   is a positive number if it is credited to Increase (e.g., settlements) and a
            #   negative number if it is debited (e.g., refunds).
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            # The card network specific interchange code.
            sig { returns(T.nilable(String)) }
            def code
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def code=(_)
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   reimbursement.
            sig { returns(Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol) }
            def currency
            end

            sig do
              params(_: Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol)
                .returns(Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol)
            end
            def currency=(_)
            end

            # Interchange assessed as a part of this transaction.
            sig do
              params(
                amount: String,
                code: T.nilable(String),
                currency: Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol
              )
                .returns(T.attached_class)
            end
            def self.new(amount:, code:, currency:)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    code: T.nilable(String),
                    currency: Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol
                  }
                )
            end
            def to_hash
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   reimbursement.
            module Currency
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol) }

              # Canadian Dollar (CAD)
              CAD =
                T.let(:CAD, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol)

              # Swiss Franc (CHF)
              CHF =
                T.let(:CHF, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol)

              # Euro (EUR)
              EUR =
                T.let(:EUR, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol)

              # British Pound (GBP)
              GBP =
                T.let(:GBP, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol)

              # Japanese Yen (JPY)
              JPY =
                T.let(:JPY, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol)

              # US Dollar (USD)
              USD =
                T.let(:USD, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency::TaggedSymbol)
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A network assigned business ID that identifies the acquirer that processed this
            #   transaction.
            sig { returns(String) }
            def acquirer_business_id
            end

            sig { params(_: String).returns(String) }
            def acquirer_business_id=(_)
            end

            # A globally unique identifier for this settlement.
            sig { returns(String) }
            def acquirer_reference_number
            end

            sig { params(_: String).returns(String) }
            def acquirer_reference_number=(_)
            end

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

            # Network-specific identifiers for this refund.
            sig do
              params(
                acquirer_business_id: String,
                acquirer_reference_number: String,
                transaction_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(acquirer_business_id:, acquirer_reference_number:, transaction_id:)
            end

            sig do
              override
                .returns(
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
            # Fields specific to car rentals.
            sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental)) }
            def car_rental
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental))
                .returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental))
            end
            def car_rental=(_)
            end

            # An identifier from the merchant for the customer or consumer.
            sig { returns(T.nilable(String)) }
            def customer_reference_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def customer_reference_identifier=(_)
            end

            # The state or provincial tax amount in minor units.
            sig { returns(T.nilable(Integer)) }
            def local_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def local_tax_amount=(_)
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   assessed.
            sig { returns(T.nilable(String)) }
            def local_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def local_tax_currency=(_)
            end

            # Fields specific to lodging.
            sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging)) }
            def lodging
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging))
                .returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging))
            end
            def lodging=(_)
            end

            # The national tax amount in minor units.
            sig { returns(T.nilable(Integer)) }
            def national_tax_amount
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def national_tax_amount=(_)
            end

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   assessed.
            sig { returns(T.nilable(String)) }
            def national_tax_currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def national_tax_currency=(_)
            end

            # An identifier from the merchant for the purchase to the issuer and cardholder.
            sig { returns(T.nilable(String)) }
            def purchase_identifier
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def purchase_identifier=(_)
            end

            # The format of the purchase identifier.
            sig do
              returns(
                T.nilable(
                  Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )
              )
            end
            def purchase_identifier_format
            end

            sig do
              params(
                _: T.nilable(
                  Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )
              )
                .returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                  )
                )
            end
            def purchase_identifier_format=(_)
            end

            # Fields specific to travel.
            sig { returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel)) }
            def travel
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel))
                .returns(T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel))
            end
            def travel=(_)
            end

            # Additional details about the card purchase, such as tax and industry-specific
            #   fields.
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
                purchase_identifier_format: T.nilable(
                  Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                ),
                travel: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel)
              )
                .returns(T.attached_class)
            end
            def self.new(
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
              override
                .returns(
                  {
                    car_rental: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental),
                    customer_reference_identifier: T.nilable(String),
                    local_tax_amount: T.nilable(Integer),
                    local_tax_currency: T.nilable(String),
                    lodging: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging),
                    national_tax_amount: T.nilable(Integer),
                    national_tax_currency: T.nilable(String),
                    purchase_identifier: T.nilable(String),
                    purchase_identifier_format: T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                    ),
                    travel: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel)
                  }
                )
            end
            def to_hash
            end

            class CarRental < Increase::BaseModel
              # Code indicating the vehicle's class.
              sig { returns(T.nilable(String)) }
              def car_class_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def car_class_code=(_)
              end

              # Date the customer picked up the car or, in the case of a no-show or pre-pay
              #   transaction, the scheduled pick up date.
              sig { returns(T.nilable(Date)) }
              def checkout_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def checkout_date=(_)
              end

              # Daily rate being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              def daily_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_rental_rate_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental
              #   rate.
              sig { returns(T.nilable(String)) }
              def daily_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_rental_rate_currency=(_)
              end

              # Number of days the vehicle was rented.
              sig { returns(T.nilable(Integer)) }
              def days_rented
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def days_rented=(_)
              end

              # Additional charges (gas, late fee, etc.) being billed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )
                )
              end
              def extra_charges
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                    )
                  )
              end
              def extra_charges=(_)
              end

              # Fuel charges for the vehicle.
              sig { returns(T.nilable(Integer)) }
              def fuel_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def fuel_charges_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges
              #   assessed.
              sig { returns(T.nilable(String)) }
              def fuel_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def fuel_charges_currency=(_)
              end

              # Any insurance being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              def insurance_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def insurance_charges_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance
              #   charges assessed.
              sig { returns(T.nilable(String)) }
              def insurance_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def insurance_charges_currency=(_)
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was
              #   not actually rented (that is, a "no-show" charge).
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )
                )
              end
              def no_show_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                    )
                  )
              end
              def no_show_indicator=(_)
              end

              # Charges for returning the vehicle at a different location than where it was
              #   picked up.
              sig { returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def one_way_drop_off_charges_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way
              #   drop-off charges assessed.
              sig { returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def one_way_drop_off_charges_currency=(_)
              end

              # Name of the person renting the vehicle.
              sig { returns(T.nilable(String)) }
              def renter_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def renter_name=(_)
              end

              # Weekly rate being charged for the vehicle.
              sig { returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def weekly_rental_rate_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly
              #   rental rate.
              sig { returns(T.nilable(String)) }
              def weekly_rental_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def weekly_rental_rate_currency=(_)
              end

              # Fields specific to car rentals.
              sig do
                params(
                  car_class_code: T.nilable(String),
                  checkout_date: T.nilable(Date),
                  daily_rental_rate_amount: T.nilable(Integer),
                  daily_rental_rate_currency: T.nilable(String),
                  days_rented: T.nilable(Integer),
                  extra_charges: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  ),
                  fuel_charges_amount: T.nilable(Integer),
                  fuel_charges_currency: T.nilable(String),
                  insurance_charges_amount: T.nilable(Integer),
                  insurance_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  ),
                  one_way_drop_off_charges_amount: T.nilable(Integer),
                  one_way_drop_off_charges_currency: T.nilable(String),
                  renter_name: T.nilable(String),
                  weekly_rental_rate_amount: T.nilable(Integer),
                  weekly_rental_rate_currency: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(
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
                override
                  .returns(
                    {
                      car_class_code: T.nilable(String),
                      checkout_date: T.nilable(Date),
                      daily_rental_rate_amount: T.nilable(Integer),
                      daily_rental_rate_currency: T.nilable(String),
                      days_rented: T.nilable(Integer),
                      extra_charges: T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                      ),
                      fuel_charges_amount: T.nilable(Integer),
                      fuel_charges_currency: T.nilable(String),
                      insurance_charges_amount: T.nilable(Integer),
                      insurance_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                      ),
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

              # Additional charges (gas, late fee, etc.) being billed.
              module ExtraCharges
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                    )
                  end

                # No extra charge
                NO_EXTRA_CHARGE =
                  T.let(
                    :no_extra_charge,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Gas
                GAS =
                  T.let(
                    :gas,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Extra mileage
                EXTRA_MILEAGE =
                  T.let(
                    :extra_mileage,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Late return
                LATE_RETURN =
                  T.let(
                    :late_return,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # One way service fee
                ONE_WAY_SERVICE_FEE =
                  T.let(
                    :one_way_service_fee,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )

                # Parking violation
                PARKING_VIOLATION =
                  T.let(
                    :parking_violation,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges::TaggedSymbol
                  )
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was
              #   not actually rented (that is, a "no-show" charge).
              module NoShowIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                    )
                  end

                # Not applicable
                NOT_APPLICABLE =
                  T.let(
                    :not_applicable,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE =
                  T.let(
                    :no_show_for_specialized_vehicle,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator::TaggedSymbol
                  )
              end
            end

            class Lodging < Increase::BaseModel
              # Date the customer checked in.
              sig { returns(T.nilable(Date)) }
              def check_in_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def check_in_date=(_)
              end

              # Daily rate being charged for the room.
              sig { returns(T.nilable(Integer)) }
              def daily_room_rate_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def daily_room_rate_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room
              #   rate.
              sig { returns(T.nilable(String)) }
              def daily_room_rate_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def daily_room_rate_currency=(_)
              end

              # Additional charges (phone, late check-out, etc.) being billed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )
                )
              end
              def extra_charges
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                    )
                  )
              end
              def extra_charges=(_)
              end

              # Folio cash advances for the room.
              sig { returns(T.nilable(Integer)) }
              def folio_cash_advances_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def folio_cash_advances_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash
              #   advances.
              sig { returns(T.nilable(String)) }
              def folio_cash_advances_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def folio_cash_advances_currency=(_)
              end

              # Food and beverage charges for the room.
              sig { returns(T.nilable(Integer)) }
              def food_beverage_charges_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def food_beverage_charges_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and
              #   beverage charges.
              sig { returns(T.nilable(String)) }
              def food_beverage_charges_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def food_beverage_charges_currency=(_)
              end

              # Indicator that the cardholder is being billed for a reserved room that was not
              #   actually used.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )
                )
              end
              def no_show_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                    )
                  )
              end
              def no_show_indicator=(_)
              end

              # Prepaid expenses being charged for the room.
              sig { returns(T.nilable(Integer)) }
              def prepaid_expenses_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def prepaid_expenses_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid
              #   expenses.
              sig { returns(T.nilable(String)) }
              def prepaid_expenses_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def prepaid_expenses_currency=(_)
              end

              # Number of nights the room was rented.
              sig { returns(T.nilable(Integer)) }
              def room_nights
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def room_nights=(_)
              end

              # Total room tax being charged.
              sig { returns(T.nilable(Integer)) }
              def total_room_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_room_tax_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room
              #   tax.
              sig { returns(T.nilable(String)) }
              def total_room_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_room_tax_currency=(_)
              end

              # Total tax being charged for the room.
              sig { returns(T.nilable(Integer)) }
              def total_tax_amount
              end

              sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def total_tax_amount=(_)
              end

              # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax
              #   assessed.
              sig { returns(T.nilable(String)) }
              def total_tax_currency
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def total_tax_currency=(_)
              end

              # Fields specific to lodging.
              sig do
                params(
                  check_in_date: T.nilable(Date),
                  daily_room_rate_amount: T.nilable(Integer),
                  daily_room_rate_currency: T.nilable(String),
                  extra_charges: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  ),
                  folio_cash_advances_amount: T.nilable(Integer),
                  folio_cash_advances_currency: T.nilable(String),
                  food_beverage_charges_amount: T.nilable(Integer),
                  food_beverage_charges_currency: T.nilable(String),
                  no_show_indicator: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  ),
                  prepaid_expenses_amount: T.nilable(Integer),
                  prepaid_expenses_currency: T.nilable(String),
                  room_nights: T.nilable(Integer),
                  total_room_tax_amount: T.nilable(Integer),
                  total_room_tax_currency: T.nilable(String),
                  total_tax_amount: T.nilable(Integer),
                  total_tax_currency: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(
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
                override
                  .returns(
                    {
                      check_in_date: T.nilable(Date),
                      daily_room_rate_amount: T.nilable(Integer),
                      daily_room_rate_currency: T.nilable(String),
                      extra_charges: T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                      ),
                      folio_cash_advances_amount: T.nilable(Integer),
                      folio_cash_advances_currency: T.nilable(String),
                      food_beverage_charges_amount: T.nilable(Integer),
                      food_beverage_charges_currency: T.nilable(String),
                      no_show_indicator: T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                      ),
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

              # Additional charges (phone, late check-out, etc.) being billed.
              module ExtraCharges
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                    )
                  end

                # No extra charge
                NO_EXTRA_CHARGE =
                  T.let(
                    :no_extra_charge,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Restaurant
                RESTAURANT =
                  T.let(
                    :restaurant,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Gift shop
                GIFT_SHOP =
                  T.let(
                    :gift_shop,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Mini bar
                MINI_BAR =
                  T.let(
                    :mini_bar,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Telephone
                TELEPHONE =
                  T.let(
                    :telephone,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Other
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )

                # Laundry
                LAUNDRY =
                  T.let(
                    :laundry,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges::TaggedSymbol
                  )
              end

              # Indicator that the cardholder is being billed for a reserved room that was not
              #   actually used.
              module NoShowIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                    )
                  end

                # Not applicable
                NOT_APPLICABLE =
                  T.let(
                    :not_applicable,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )

                # No show
                NO_SHOW =
                  T.let(
                    :no_show,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator::TaggedSymbol
                  )
              end
            end

            # The format of the purchase identifier.
            module PurchaseIdentifierFormat
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                  )
                end

              # Free text
              FREE_TEXT =
                T.let(
                  :free_text,
                  Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Order number
              ORDER_NUMBER =
                T.let(
                  :order_number,
                  Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER =
                T.let(
                  :rental_agreement_number,
                  Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Hotel folio number
              HOTEL_FOLIO_NUMBER =
                T.let(
                  :hotel_folio_number,
                  Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )

              # Invoice number
              INVOICE_NUMBER =
                T.let(
                  :invoice_number,
                  Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat::TaggedSymbol
                )
            end

            class Travel < Increase::BaseModel
              # Ancillary purchases in addition to the airfare.
              sig do
                returns(
                  T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary)
                )
              end
              def ancillary
              end

              sig do
                params(
                  _: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary)
                )
                  .returns(
                    T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary)
                  )
              end
              def ancillary=(_)
              end

              # Indicates the computerized reservation system used to book the ticket.
              sig { returns(T.nilable(String)) }
              def computerized_reservation_system
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def computerized_reservation_system=(_)
              end

              # Indicates the reason for a credit to the cardholder.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )
                )
              end
              def credit_reason_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                    )
                  )
              end
              def credit_reason_indicator=(_)
              end

              # Date of departure.
              sig { returns(T.nilable(Date)) }
              def departure_date
              end

              sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
              def departure_date=(_)
              end

              # Code for the originating city or airport.
              sig { returns(T.nilable(String)) }
              def origination_city_airport_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def origination_city_airport_code=(_)
              end

              # Name of the passenger.
              sig { returns(T.nilable(String)) }
              def passenger_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def passenger_name=(_)
              end

              # Indicates whether this ticket is non-refundable.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )
                )
              end
              def restricted_ticket_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                    )
                  )
              end
              def restricted_ticket_indicator=(_)
              end

              # Indicates why a ticket was changed.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )
                )
              end
              def ticket_change_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                    )
                  )
              end
              def ticket_change_indicator=(_)
              end

              # Ticket number.
              sig { returns(T.nilable(String)) }
              def ticket_number
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def ticket_number=(_)
              end

              # Code for the travel agency if the ticket was issued by a travel agency.
              sig { returns(T.nilable(String)) }
              def travel_agency_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_code=(_)
              end

              # Name of the travel agency if the ticket was issued by a travel agency.
              sig { returns(T.nilable(String)) }
              def travel_agency_name
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def travel_agency_name=(_)
              end

              # Fields specific to each leg of the journey.
              sig do
                returns(
                  T.nilable(
                    T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg]
                  )
                )
              end
              def trip_legs
              end

              sig do
                params(
                  _: T.nilable(
                    T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg]
                  )
                )
                  .returns(
                    T.nilable(
                      T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg]
                    )
                  )
              end
              def trip_legs=(_)
              end

              # Fields specific to travel.
              sig do
                params(
                  ancillary: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary),
                  computerized_reservation_system: T.nilable(String),
                  credit_reason_indicator: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  ),
                  departure_date: T.nilable(Date),
                  origination_city_airport_code: T.nilable(String),
                  passenger_name: T.nilable(String),
                  restricted_ticket_indicator: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  ),
                  ticket_change_indicator: T.nilable(
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  ),
                  ticket_number: T.nilable(String),
                  travel_agency_code: T.nilable(String),
                  travel_agency_name: T.nilable(String),
                  trip_legs: T.nilable(
                    T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg]
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(
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
                override
                  .returns(
                    {
                      ancillary: T.nilable(Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary),
                      computerized_reservation_system: T.nilable(String),
                      credit_reason_indicator: T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                      ),
                      departure_date: T.nilable(Date),
                      origination_city_airport_code: T.nilable(String),
                      passenger_name: T.nilable(String),
                      restricted_ticket_indicator: T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                      ),
                      ticket_change_indicator: T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                      ),
                      ticket_number: T.nilable(String),
                      travel_agency_code: T.nilable(String),
                      travel_agency_name: T.nilable(String),
                      trip_legs: T.nilable(
                        T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg]
                      )
                    }
                  )
              end
              def to_hash
              end

              class Ancillary < Increase::BaseModel
                # If this purchase has a connection or relationship to another purchase, such as a
                #   baggage fee for a passenger transport ticket, this field should contain the
                #   ticket document number for the other purchase.
                sig { returns(T.nilable(String)) }
                def connected_ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def connected_ticket_document_number=(_)
                end

                # Indicates the reason for a credit to the cardholder.
                sig do
                  returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )
                  )
                end
                def credit_reason_indicator
                end

                sig do
                  params(
                    _: T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )
                  )
                    .returns(
                      T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                      )
                    )
                end
                def credit_reason_indicator=(_)
                end

                # Name of the passenger or description of the ancillary purchase.
                sig { returns(T.nilable(String)) }
                def passenger_name_or_description
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def passenger_name_or_description=(_)
                end

                # Additional travel charges, such as baggage fees.
                sig do
                  returns(
                    T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service]
                  )
                end
                def services
                end

                sig do
                  params(
                    _: T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service]
                  )
                    .returns(
                      T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service]
                    )
                end
                def services=(_)
                end

                # Ticket document number.
                sig { returns(T.nilable(String)) }
                def ticket_document_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def ticket_document_number=(_)
                end

                # Ancillary purchases in addition to the airfare.
                sig do
                  params(
                    connected_ticket_document_number: T.nilable(String),
                    credit_reason_indicator: T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    ),
                    passenger_name_or_description: T.nilable(String),
                    services: T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service],
                    ticket_document_number: T.nilable(String)
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  connected_ticket_document_number:,
                  credit_reason_indicator:,
                  passenger_name_or_description:,
                  services:,
                  ticket_document_number:
                )
                end

                sig do
                  override
                    .returns(
                      {
                        connected_ticket_document_number: T.nilable(String),
                        credit_reason_indicator: T.nilable(
                          Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                        ),
                        passenger_name_or_description: T.nilable(String),
                        services: T::Array[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service],
                        ticket_document_number: T.nilable(String)
                      }
                    )
                end
                def to_hash
                end

                # Indicates the reason for a credit to the cardholder.
                module CreditReasonIndicator
                  extend Increase::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                      )
                    end

                  # No credit
                  NO_CREDIT =
                    T.let(
                      :no_credit,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    T.let(
                      :passenger_transport_ancillary_purchase_cancellation,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                    T.let(
                      :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )

                  # Other
                  OTHER =
                    T.let(
                      :other,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator::TaggedSymbol
                    )
                end

                class Service < Increase::BaseModel
                  # Category of the ancillary service.
                  sig do
                    returns(
                      T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )
                    )
                  end
                  def category
                  end

                  sig do
                    params(
                      _: T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )
                    )
                      .returns(
                        T.nilable(
                          Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                        )
                      )
                  end
                  def category=(_)
                  end

                  # Sub-category of the ancillary service, free-form.
                  sig { returns(T.nilable(String)) }
                  def sub_category
                  end

                  sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                  def sub_category=(_)
                  end

                  sig do
                    params(
                      category: T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      ),
                      sub_category: T.nilable(String)
                    )
                      .returns(T.attached_class)
                  end
                  def self.new(category:, sub_category:)
                  end

                  sig do
                    override
                      .returns(
                        {
                          category: T.nilable(
                            Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                          ),
                          sub_category: T.nilable(String)
                        }
                      )
                  end
                  def to_hash
                  end

                  # Category of the ancillary service.
                  module Category
                    extend Increase::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category)
                      end
                    OrSymbol =
                      T.type_alias do
                        T.any(
                          Symbol,
                          Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                        )
                      end

                    # None
                    NONE =
                      T.let(
                        :none,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Bundled service
                    BUNDLED_SERVICE =
                      T.let(
                        :bundled_service,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Baggage fee
                    BAGGAGE_FEE =
                      T.let(
                        :baggage_fee,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Change fee
                    CHANGE_FEE =
                      T.let(
                        :change_fee,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Cargo
                    CARGO =
                      T.let(
                        :cargo,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Carbon offset
                    CARBON_OFFSET =
                      T.let(
                        :carbon_offset,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Frequent flyer
                    FREQUENT_FLYER =
                      T.let(
                        :frequent_flyer,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Gift card
                    GIFT_CARD =
                      T.let(
                        :gift_card,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Ground transport
                    GROUND_TRANSPORT =
                      T.let(
                        :ground_transport,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT =
                      T.let(
                        :in_flight_entertainment,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Lounge
                    LOUNGE =
                      T.let(
                        :lounge,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Medical
                    MEDICAL =
                      T.let(
                        :medical,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Meal beverage
                    MEAL_BEVERAGE =
                      T.let(
                        :meal_beverage,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Other
                    OTHER =
                      T.let(
                        :other,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE =
                      T.let(
                        :passenger_assist_fee,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Pets
                    PETS =
                      T.let(
                        :pets,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Seat fees
                    SEAT_FEES =
                      T.let(
                        :seat_fees,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Standby
                    STANDBY =
                      T.let(
                        :standby,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Service fee
                    SERVICE_FEE =
                      T.let(
                        :service_fee,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Store
                    STORE =
                      T.let(
                        :store,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Travel service
                    TRAVEL_SERVICE =
                      T.let(
                        :travel_service,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL =
                      T.let(
                        :unaccompanied_travel,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Upgrades
                    UPGRADES =
                      T.let(
                        :upgrades,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )

                    # Wi-fi
                    WIFI =
                      T.let(
                        :wifi,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category::TaggedSymbol
                      )
                  end
                end
              end

              # Indicates the reason for a credit to the cardholder.
              module CreditReasonIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                    )
                  end

                # No credit
                NO_CREDIT =
                  T.let(
                    :no_credit,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  T.let(
                    :passenger_transport_ancillary_purchase_cancellation,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION =
                  T.let(
                    :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION =
                  T.let(
                    :airline_ticket_cancellation,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Other
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET =
                  T.let(
                    :partial_refund_of_airline_ticket,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator::TaggedSymbol
                  )
              end

              # Indicates whether this ticket is non-refundable.
              module RestrictedTicketIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                    )
                  end

                # No restrictions
                NO_RESTRICTIONS =
                  T.let(
                    :no_restrictions,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET =
                  T.let(
                    :restricted_non_refundable_ticket,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator::TaggedSymbol
                  )
              end

              # Indicates why a ticket was changed.
              module TicketChangeIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                    )
                  end

                # None
                NONE =
                  T.let(
                    :none,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET =
                  T.let(
                    :change_to_existing_ticket,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )

                # New ticket
                NEW_TICKET =
                  T.let(
                    :new_ticket,
                    Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator::TaggedSymbol
                  )
              end

              class TripLeg < Increase::BaseModel
                # Carrier code (e.g., United Airlines, Jet Blue, etc.).
                sig { returns(T.nilable(String)) }
                def carrier_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def carrier_code=(_)
                end

                # Code for the destination city or airport.
                sig { returns(T.nilable(String)) }
                def destination_city_airport_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def destination_city_airport_code=(_)
                end

                # Fare basis code.
                sig { returns(T.nilable(String)) }
                def fare_basis_code
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def fare_basis_code=(_)
                end

                # Flight number.
                sig { returns(T.nilable(String)) }
                def flight_number
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def flight_number=(_)
                end

                # Service class (e.g., first class, business class, etc.).
                sig { returns(T.nilable(String)) }
                def service_class
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def service_class=(_)
                end

                # Indicates whether a stopover is allowed on this ticket.
                sig do
                  returns(
                    T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )
                  )
                end
                def stop_over_code
                end

                sig do
                  params(
                    _: T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )
                  )
                    .returns(
                      T.nilable(
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                      )
                    )
                end
                def stop_over_code=(_)
                end

                sig do
                  params(
                    carrier_code: T.nilable(String),
                    destination_city_airport_code: T.nilable(String),
                    fare_basis_code: T.nilable(String),
                    flight_number: T.nilable(String),
                    service_class: T.nilable(String),
                    stop_over_code: T.nilable(
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  carrier_code:,
                  destination_city_airport_code:,
                  fare_basis_code:,
                  flight_number:,
                  service_class:,
                  stop_over_code:
                )
                end

                sig do
                  override
                    .returns(
                      {
                        carrier_code: T.nilable(String),
                        destination_city_airport_code: T.nilable(String),
                        fare_basis_code: T.nilable(String),
                        flight_number: T.nilable(String),
                        service_class: T.nilable(String),
                        stop_over_code: T.nilable(
                          Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                        )
                      }
                    )
                end
                def to_hash
                end

                # Indicates whether a stopover is allowed on this ticket.
                module StopOverCode
                  extend Increase::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode)
                    end
                  OrSymbol =
                    T.type_alias do
                      T.any(
                        Symbol,
                        Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                      )
                    end

                  # None
                  NONE =
                    T.let(
                      :none,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )

                  # Stop over allowed
                  STOP_OVER_ALLOWED =
                    T.let(
                      :stop_over_allowed,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED =
                    T.let(
                      :stop_over_not_allowed,
                      Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode::TaggedSymbol
                    )
                end
              end
            end
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_settlement`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CardSettlement::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CardSettlement::Type::TaggedSymbol) }

            CARD_SETTLEMENT =
              T.let(:card_settlement, Increase::Models::Transaction::Source::CardSettlement::Type::TaggedSymbol)
          end
        end

        class CashbackPayment < Increase::BaseModel
          # The card on which the cashback was accrued.
          sig { returns(T.nilable(String)) }
          def accrued_on_card_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def accrued_on_card_id=(_)
          end

          # The amount in the minor unit of the transaction's currency. For dollars, for
          #   example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   currency.
          sig { returns(Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # The end of the period for which this transaction paid cashback.
          sig { returns(Time) }
          def period_end
          end

          sig { params(_: Time).returns(Time) }
          def period_end=(_)
          end

          # The start of the period for which this transaction paid cashback.
          sig { returns(Time) }
          def period_start
          end

          sig { params(_: Time).returns(Time) }
          def period_start=(_)
          end

          # A Cashback Payment object. This field will be present in the JSON response if
          #   and only if `category` is equal to `cashback_payment`. A Cashback Payment
          #   represents the cashback paid to a cardholder for a given period. Cashback is
          #   usually paid monthly for the prior month's transactions.
          sig do
            params(
              accrued_on_card_id: T.nilable(String),
              amount: Integer,
              currency: Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol,
              period_end: Time,
              period_start: Time
            )
              .returns(T.attached_class)
          end
          def self.new(accrued_on_card_id:, amount:, currency:, period_end:, period_start:)
          end

          sig do
            override
              .returns(
                {
                  accrued_on_card_id: T.nilable(String),
                  amount: Integer,
                  currency: Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol,
                  period_end: Time,
                  period_start: Time
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CashbackPayment::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::Transaction::Source::CashbackPayment::Currency::TaggedSymbol)
          end
        end

        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        module Category
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::Category) }
          OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::Category::TaggedSymbol) }

          # Account Transfer Intention: details will be under the `account_transfer_intention` object.
          ACCOUNT_TRANSFER_INTENTION =
            T.let(:account_transfer_intention, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # ACH Transfer Intention: details will be under the `ach_transfer_intention` object.
          ACH_TRANSFER_INTENTION =
            T.let(:ach_transfer_intention, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # ACH Transfer Rejection: details will be under the `ach_transfer_rejection` object.
          ACH_TRANSFER_REJECTION =
            T.let(:ach_transfer_rejection, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # ACH Transfer Return: details will be under the `ach_transfer_return` object.
          ACH_TRANSFER_RETURN =
            T.let(:ach_transfer_return, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Cashback Payment: details will be under the `cashback_payment` object.
          CASHBACK_PAYMENT =
            T.let(:cashback_payment, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Card Dispute Acceptance: details will be under the `card_dispute_acceptance` object.
          CARD_DISPUTE_ACCEPTANCE =
            T.let(:card_dispute_acceptance, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Card Dispute Loss: details will be under the `card_dispute_loss` object.
          CARD_DISPUTE_LOSS =
            T.let(:card_dispute_loss, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Card Refund: details will be under the `card_refund` object.
          CARD_REFUND = T.let(:card_refund, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Card Settlement: details will be under the `card_settlement` object.
          CARD_SETTLEMENT = T.let(:card_settlement, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Card Revenue Payment: details will be under the `card_revenue_payment` object.
          CARD_REVENUE_PAYMENT =
            T.let(:card_revenue_payment, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Check Deposit Acceptance: details will be under the `check_deposit_acceptance` object.
          CHECK_DEPOSIT_ACCEPTANCE =
            T.let(:check_deposit_acceptance, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Check Deposit Return: details will be under the `check_deposit_return` object.
          CHECK_DEPOSIT_RETURN =
            T.let(:check_deposit_return, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Check Transfer Deposit: details will be under the `check_transfer_deposit` object.
          CHECK_TRANSFER_DEPOSIT =
            T.let(:check_transfer_deposit, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Fee Payment: details will be under the `fee_payment` object.
          FEE_PAYMENT = T.let(:fee_payment, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Inbound ACH Transfer Intention: details will be under the `inbound_ach_transfer` object.
          INBOUND_ACH_TRANSFER =
            T.let(:inbound_ach_transfer, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Inbound ACH Transfer Return Intention: details will be under the `inbound_ach_transfer_return_intention` object.
          INBOUND_ACH_TRANSFER_RETURN_INTENTION =
            T.let(
              :inbound_ach_transfer_return_intention,
              Increase::Models::Transaction::Source::Category::TaggedSymbol
            )

          # Inbound Check Deposit Return Intention: details will be under the `inbound_check_deposit_return_intention` object.
          INBOUND_CHECK_DEPOSIT_RETURN_INTENTION =
            T.let(
              :inbound_check_deposit_return_intention,
              Increase::Models::Transaction::Source::Category::TaggedSymbol
            )

          # Inbound Check Adjustment: details will be under the `inbound_check_adjustment` object.
          INBOUND_CHECK_ADJUSTMENT =
            T.let(:inbound_check_adjustment, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Inbound Real-Time Payments Transfer Confirmation: details will be under the `inbound_real_time_payments_transfer_confirmation` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_CONFIRMATION =
            T.let(
              :inbound_real_time_payments_transfer_confirmation,
              Increase::Models::Transaction::Source::Category::TaggedSymbol
            )

          # Inbound Real-Time Payments Transfer Decline: details will be under the `inbound_real_time_payments_transfer_decline` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_DECLINE =
            T.let(
              :inbound_real_time_payments_transfer_decline,
              Increase::Models::Transaction::Source::Category::TaggedSymbol
            )

          # Inbound Wire Reversal: details will be under the `inbound_wire_reversal` object.
          INBOUND_WIRE_REVERSAL =
            T.let(:inbound_wire_reversal, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Inbound Wire Transfer Intention: details will be under the `inbound_wire_transfer` object.
          INBOUND_WIRE_TRANSFER =
            T.let(:inbound_wire_transfer, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Inbound Wire Transfer Reversal Intention: details will be under the `inbound_wire_transfer_reversal` object.
          INBOUND_WIRE_TRANSFER_REVERSAL =
            T.let(:inbound_wire_transfer_reversal, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Interest Payment: details will be under the `interest_payment` object.
          INTEREST_PAYMENT =
            T.let(:interest_payment, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Internal Source: details will be under the `internal_source` object.
          INTERNAL_SOURCE = T.let(:internal_source, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Real-Time Payments Transfer Acknowledgement: details will be under the `real_time_payments_transfer_acknowledgement` object.
          REAL_TIME_PAYMENTS_TRANSFER_ACKNOWLEDGEMENT =
            T.let(
              :real_time_payments_transfer_acknowledgement,
              Increase::Models::Transaction::Source::Category::TaggedSymbol
            )

          # Sample Funds: details will be under the `sample_funds` object.
          SAMPLE_FUNDS = T.let(:sample_funds, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # Wire Transfer Intention: details will be under the `wire_transfer_intention` object.
          WIRE_TRANSFER_INTENTION =
            T.let(:wire_transfer_intention, Increase::Models::Transaction::Source::Category::TaggedSymbol)

          # The Transaction was made for an undocumented or deprecated reason.
          OTHER = T.let(:other, Increase::Models::Transaction::Source::Category::TaggedSymbol)
        end

        class CheckDepositAcceptance < Increase::BaseModel
          # The account number printed on the check.
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          # The amount to be deposited in the minor unit of the transaction's currency. For
          #   dollars, for example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # An additional line of metadata printed on the check. This typically includes the
          #   check number for business checks.
          sig { returns(T.nilable(String)) }
          def auxiliary_on_us
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def auxiliary_on_us=(_)
          end

          # The ID of the Check Deposit that was accepted.
          sig { returns(String) }
          def check_deposit_id
          end

          sig { params(_: String).returns(String) }
          def check_deposit_id=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          sig { returns(Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # The routing number printed on the check.
          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          # The check serial number, if present, for consumer checks. For business checks,
          #   the serial number is usually in the `auxiliary_on_us` field.
          sig { returns(T.nilable(String)) }
          def serial_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def serial_number=(_)
          end

          # A Check Deposit Acceptance object. This field will be present in the JSON
          #   response if and only if `category` is equal to `check_deposit_acceptance`. A
          #   Check Deposit Acceptance is created when a Check Deposit is processed and its
          #   details confirmed. Check Deposits may be returned by the receiving bank, which
          #   will appear as a Check Deposit Return.
          sig do
            params(
              account_number: String,
              amount: Integer,
              auxiliary_on_us: T.nilable(String),
              check_deposit_id: String,
              currency: Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol,
              routing_number: String,
              serial_number: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(account_number:, amount:, auxiliary_on_us:, check_deposit_id:, currency:, routing_number:, serial_number:)
          end

          sig do
            override
              .returns(
                {
                  account_number: String,
                  amount: Integer,
                  auxiliary_on_us: T.nilable(String),
                  check_deposit_id: String,
                  currency: Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol,
                  routing_number: String,
                  serial_number: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency::TaggedSymbol)
          end
        end

        class CheckDepositReturn < Increase::BaseModel
          # The returned amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The identifier of the Check Deposit that was returned.
          sig { returns(String) }
          def check_deposit_id
          end

          sig { params(_: String).returns(String) }
          def check_deposit_id=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          sig { returns(Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # Why this check was returned by the bank holding the account it was drawn
          #   against.
          sig { returns(Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol) }
          def return_reason
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol)
          end
          def return_reason=(_)
          end

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   the check deposit was returned.
          sig { returns(Time) }
          def returned_at
          end

          sig { params(_: Time).returns(Time) }
          def returned_at=(_)
          end

          # The identifier of the transaction that reversed the original check deposit
          #   transaction.
          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          # A Check Deposit Return object. This field will be present in the JSON response
          #   if and only if `category` is equal to `check_deposit_return`. A Check Deposit
          #   Return is created when a Check Deposit is returned by the bank holding the
          #   account it was drawn against. Check Deposits may be returned for a variety of
          #   reasons, including insufficient funds or a mismatched account number. Usually,
          #   checks are returned within the first 7 days after the deposit is made.
          sig do
            params(
              amount: Integer,
              check_deposit_id: String,
              currency: Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol,
              return_reason: Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol,
              returned_at: Time,
              transaction_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, check_deposit_id:, currency:, return_reason:, returned_at:, transaction_id:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  check_deposit_id: String,
                  currency: Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol,
                  return_reason: Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol,
                  returned_at: Time,
                  transaction_id: String
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::Transaction::Source::CheckDepositReturn::Currency::TaggedSymbol)
          end

          # Why this check was returned by the bank holding the account it was drawn
          #   against.
          module ReturnReason
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol) }

            # The check doesn't allow ACH conversion.
            ACH_CONVERSION_NOT_SUPPORTED =
              T.let(
                :ach_conversion_not_supported,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The account is closed.
            CLOSED_ACCOUNT =
              T.let(
                :closed_account,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The check has already been deposited.
            DUPLICATE_SUBMISSION =
              T.let(
                :duplicate_submission,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # Insufficient funds
            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # No account was found matching the check details.
            NO_ACCOUNT =
              T.let(:no_account, Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol)

            # The check was not authorized.
            NOT_AUTHORIZED =
              T.let(
                :not_authorized,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The check is too old.
            STALE_DATED =
              T.let(:stale_dated, Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol)

            # The payment has been stopped by the account holder.
            STOP_PAYMENT =
              T.let(
                :stop_payment,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The reason for the return is unknown.
            UNKNOWN_REASON =
              T.let(
                :unknown_reason,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The image doesn't match the details submitted.
            UNMATCHED_DETAILS =
              T.let(
                :unmatched_details,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The image could not be read.
            UNREADABLE_IMAGE =
              T.let(
                :unreadable_image,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The check endorsement was irregular.
            ENDORSEMENT_IRREGULAR =
              T.let(
                :endorsement_irregular,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The check present was either altered or fake.
            ALTERED_OR_FICTITIOUS_ITEM =
              T.let(
                :altered_or_fictitious_item,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The account this check is drawn on is frozen.
            FROZEN_OR_BLOCKED_ACCOUNT =
              T.let(
                :frozen_or_blocked_account,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The check is post dated.
            POST_DATED =
              T.let(:post_dated, Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol)

            # The endorsement was missing.
            ENDORSEMENT_MISSING =
              T.let(
                :endorsement_missing,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The check signature was missing.
            SIGNATURE_MISSING =
              T.let(
                :signature_missing,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The bank suspects a stop payment will be placed.
            STOP_PAYMENT_SUSPECT =
              T.let(
                :stop_payment_suspect,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The bank cannot read the image.
            UNUSABLE_IMAGE =
              T.let(
                :unusable_image,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The check image fails the bank's security check.
            IMAGE_FAILS_SECURITY_CHECK =
              T.let(
                :image_fails_security_check,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The bank cannot determine the amount.
            CANNOT_DETERMINE_AMOUNT =
              T.let(
                :cannot_determine_amount,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The signature is inconsistent with prior signatures.
            SIGNATURE_IRREGULAR =
              T.let(
                :signature_irregular,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The check is a non-cash item and cannot be drawn against the account.
            NON_CASH_ITEM =
              T.let(
                :non_cash_item,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The bank is unable to process this check.
            UNABLE_TO_PROCESS =
              T.let(
                :unable_to_process,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The check exceeds the bank or customer's limit.
            ITEM_EXCEEDS_DOLLAR_LIMIT =
              T.let(
                :item_exceeds_dollar_limit,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )

            # The bank sold this account and no longer services this customer.
            BRANCH_OR_ACCOUNT_SOLD =
              T.let(
                :branch_or_account_sold,
                Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason::TaggedSymbol
              )
          end
        end

        class CheckTransferDeposit < Increase::BaseModel
          # The identifier of the API File object containing an image of the back of the
          #   deposited check.
          sig { returns(T.nilable(String)) }
          def back_image_file_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def back_image_file_id=(_)
          end

          # The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
          #   bank depositing this check. In some rare cases, this is not transmitted via
          #   Check21 and the value will be null.
          sig { returns(T.nilable(String)) }
          def bank_of_first_deposit_routing_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def bank_of_first_deposit_routing_number=(_)
          end

          # When the check was deposited.
          sig { returns(Time) }
          def deposited_at
          end

          sig { params(_: Time).returns(Time) }
          def deposited_at=(_)
          end

          # The identifier of the API File object containing an image of the front of the
          #   deposited check.
          sig { returns(T.nilable(String)) }
          def front_image_file_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def front_image_file_id=(_)
          end

          # The identifier of the Inbound Check Deposit object associated with this
          #   transaction.
          sig { returns(T.nilable(String)) }
          def inbound_check_deposit_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def inbound_check_deposit_id=(_)
          end

          # The identifier of the Transaction object created when the check was deposited.
          sig { returns(T.nilable(String)) }
          def transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def transaction_id=(_)
          end

          # The identifier of the Check Transfer object that was deposited.
          sig { returns(T.nilable(String)) }
          def transfer_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def transfer_id=(_)
          end

          # A constant representing the object's type. For this resource it will always be
          #   `check_transfer_deposit`.
          sig { returns(Increase::Models::Transaction::Source::CheckTransferDeposit::Type::TaggedSymbol) }
          def type
          end

          sig do
            params(_: Increase::Models::Transaction::Source::CheckTransferDeposit::Type::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::CheckTransferDeposit::Type::TaggedSymbol)
          end
          def type=(_)
          end

          # A Check Transfer Deposit object. This field will be present in the JSON response
          #   if and only if `category` is equal to `check_transfer_deposit`. An Inbound Check
          #   is a check drawn on an Increase account that has been deposited by an external
          #   bank account. These types of checks are not pre-registered.
          sig do
            params(
              back_image_file_id: T.nilable(String),
              bank_of_first_deposit_routing_number: T.nilable(String),
              deposited_at: Time,
              front_image_file_id: T.nilable(String),
              inbound_check_deposit_id: T.nilable(String),
              transaction_id: T.nilable(String),
              transfer_id: T.nilable(String),
              type: Increase::Models::Transaction::Source::CheckTransferDeposit::Type::TaggedSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
                {
                  back_image_file_id: T.nilable(String),
                  bank_of_first_deposit_routing_number: T.nilable(String),
                  deposited_at: Time,
                  front_image_file_id: T.nilable(String),
                  inbound_check_deposit_id: T.nilable(String),
                  transaction_id: T.nilable(String),
                  transfer_id: T.nilable(String),
                  type: Increase::Models::Transaction::Source::CheckTransferDeposit::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          # A constant representing the object's type. For this resource it will always be
          #   `check_transfer_deposit`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::CheckTransferDeposit::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::CheckTransferDeposit::Type::TaggedSymbol) }

            CHECK_TRANSFER_DEPOSIT =
              T.let(
                :check_transfer_deposit,
                Increase::Models::Transaction::Source::CheckTransferDeposit::Type::TaggedSymbol
              )
          end
        end

        class FeePayment < Increase::BaseModel
          # The amount in the minor unit of the transaction's currency. For dollars, for
          #   example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   currency.
          sig { returns(Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # The start of this payment's fee period, usually the first day of a month.
          sig { returns(Date) }
          def fee_period_start
          end

          sig { params(_: Date).returns(Date) }
          def fee_period_start=(_)
          end

          # The Program for which this fee was incurred.
          sig { returns(T.nilable(String)) }
          def program_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def program_id=(_)
          end

          # A Fee Payment object. This field will be present in the JSON response if and
          #   only if `category` is equal to `fee_payment`. A Fee Payment represents a payment
          #   made to Increase.
          sig do
            params(
              amount: Integer,
              currency: Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol,
              fee_period_start: Date,
              program_id: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, currency:, fee_period_start:, program_id:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  currency: Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol,
                  fee_period_start: Date,
                  program_id: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::FeePayment::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::Transaction::Source::FeePayment::Currency::TaggedSymbol)
          end
        end

        class InboundACHTransfer < Increase::BaseModel
          # Additional information sent from the originator.
          sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda)) }
          def addenda
          end

          sig do
            params(_: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda))
              .returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda))
          end
          def addenda=(_)
          end

          # The transfer amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The description of the date of the transfer, usually in the format `YYMMDD`.
          sig { returns(T.nilable(String)) }
          def originator_company_descriptive_date
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_company_descriptive_date=(_)
          end

          # Data set by the originator.
          sig { returns(T.nilable(String)) }
          def originator_company_discretionary_data
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_company_discretionary_data=(_)
          end

          # An informational description of the transfer.
          sig { returns(String) }
          def originator_company_entry_description
          end

          sig { params(_: String).returns(String) }
          def originator_company_entry_description=(_)
          end

          # An identifier for the originating company. This is generally, but not always, a
          #   stable identifier across multiple transfers.
          sig { returns(String) }
          def originator_company_id
          end

          sig { params(_: String).returns(String) }
          def originator_company_id=(_)
          end

          # A name set by the originator to identify themselves.
          sig { returns(String) }
          def originator_company_name
          end

          sig { params(_: String).returns(String) }
          def originator_company_name=(_)
          end

          # The originator's identifier for the transfer recipient.
          sig { returns(T.nilable(String)) }
          def receiver_id_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def receiver_id_number=(_)
          end

          # The name of the transfer recipient. This value is informational and not verified
          #   by Increase.
          sig { returns(T.nilable(String)) }
          def receiver_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def receiver_name=(_)
          end

          # A 15 digit number recorded in the Nacha file and available to both the
          #   originating and receiving bank. Along with the amount, date, and originating
          #   routing number, this can be used to identify the ACH transfer at either bank.
          #   ACH trace numbers are not unique, but are
          #   [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
          sig { returns(String) }
          def trace_number
          end

          sig { params(_: String).returns(String) }
          def trace_number=(_)
          end

          # The Inbound ACH Transfer's identifier.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An Inbound ACH Transfer Intention object. This field will be present in the JSON
          #   response if and only if `category` is equal to `inbound_ach_transfer`. An
          #   Inbound ACH Transfer Intention is created when an ACH transfer is initiated at
          #   another bank and received by Increase.
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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
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
            # The type of addendum.
            sig { returns(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category::TaggedSymbol) }
            def category
            end

            sig do
              params(_: Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category::TaggedSymbol)
                .returns(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category::TaggedSymbol)
            end
            def category=(_)
            end

            # Unstructured `payment_related_information` passed through by the originator.
            sig { returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform)) }
            def freeform
            end

            sig do
              params(_: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform))
                .returns(T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform))
            end
            def freeform=(_)
            end

            # Additional information sent from the originator.
            sig do
              params(
                category: Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category::TaggedSymbol,
                freeform: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform)
              )
                .returns(T.attached_class)
            end
            def self.new(category:, freeform:)
            end

            sig do
              override
                .returns(
                  {
                    category: Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category::TaggedSymbol,
                    freeform: T.nilable(Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform)
                  }
                )
            end
            def to_hash
            end

            # The type of addendum.
            module Category
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category) }
              OrSymbol =
                T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category::TaggedSymbol) }

              # Unstructured addendum.
              FREEFORM =
                T.let(
                  :freeform,
                  Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category::TaggedSymbol
                )
            end

            class Freeform < Increase::BaseModel
              # Each entry represents an addendum received from the originator.
              sig { returns(T::Array[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry]) }
              def entries
              end

              sig do
                params(_: T::Array[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry])
                  .returns(T::Array[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry])
              end
              def entries=(_)
              end

              # Unstructured `payment_related_information` passed through by the originator.
              sig do
                params(
                  entries: T::Array[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry]
                )
                  .returns(T.attached_class)
              end
              def self.new(entries:)
              end

              sig do
                override
                  .returns(
                    {entries: T::Array[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry]}
                  )
              end
              def to_hash
              end

              class Entry < Increase::BaseModel
                # The payment related information passed in the addendum.
                sig { returns(String) }
                def payment_related_information
                end

                sig { params(_: String).returns(String) }
                def payment_related_information=(_)
                end

                sig { params(payment_related_information: String).returns(T.attached_class) }
                def self.new(payment_related_information:)
                end

                sig { override.returns({payment_related_information: String}) }
                def to_hash
                end
              end
            end
          end
        end

        class InboundACHTransferReturnIntention < Increase::BaseModel
          # The ID of the Inbound ACH Transfer that is being returned.
          sig { returns(String) }
          def inbound_ach_transfer_id
          end

          sig { params(_: String).returns(String) }
          def inbound_ach_transfer_id=(_)
          end

          # An Inbound ACH Transfer Return Intention object. This field will be present in
          #   the JSON response if and only if `category` is equal to
          #   `inbound_ach_transfer_return_intention`. An Inbound ACH Transfer Return
          #   Intention is created when an ACH transfer is initiated at another bank and
          #   returned by Increase.
          sig { params(inbound_ach_transfer_id: String).returns(T.attached_class) }
          def self.new(inbound_ach_transfer_id:)
          end

          sig { override.returns({inbound_ach_transfer_id: String}) }
          def to_hash
          end
        end

        class InboundCheckAdjustment < Increase::BaseModel
          # The ID of the transaction that was adjusted.
          sig { returns(String) }
          def adjusted_transaction_id
          end

          sig { params(_: String).returns(String) }
          def adjusted_transaction_id=(_)
          end

          # The amount of the check adjustment.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The reason for the adjustment.
          sig { returns(Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason::TaggedSymbol) }
          def reason
          end

          sig do
            params(_: Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason::TaggedSymbol)
          end
          def reason=(_)
          end

          # An Inbound Check Adjustment object. This field will be present in the JSON
          #   response if and only if `category` is equal to `inbound_check_adjustment`. An
          #   Inbound Check Adjustment is created when Increase receives an adjustment for a
          #   check or return deposited through Check21.
          sig do
            params(
              adjusted_transaction_id: String,
              amount: Integer,
              reason: Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason::TaggedSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(adjusted_transaction_id:, amount:, reason:)
          end

          sig do
            override
              .returns(
                {
                  adjusted_transaction_id: String,
                  amount: Integer,
                  reason: Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          # The reason for the adjustment.
          module Reason
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason::TaggedSymbol) }

            # The return was initiated too late and the receiving institution has responded with a Late Return Claim.
            LATE_RETURN =
              T.let(:late_return, Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason::TaggedSymbol)

            # The check was deposited to the wrong payee and the depositing institution has reimbursed the funds with a Wrong Payee Credit.
            WRONG_PAYEE_CREDIT =
              T.let(
                :wrong_payee_credit,
                Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason::TaggedSymbol
              )

            # The check was deposited with a different amount than what was written on the check.
            ADJUSTED_AMOUNT =
              T.let(
                :adjusted_amount,
                Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason::TaggedSymbol
              )

            # The recipient was not able to process the check. This usually happens for e.g., low quality images.
            NON_CONFORMING_ITEM =
              T.let(
                :non_conforming_item,
                Increase::Models::Transaction::Source::InboundCheckAdjustment::Reason::TaggedSymbol
              )
          end
        end

        class InboundCheckDepositReturnIntention < Increase::BaseModel
          # The ID of the Inbound Check Deposit that is being returned.
          sig { returns(String) }
          def inbound_check_deposit_id
          end

          sig { params(_: String).returns(String) }
          def inbound_check_deposit_id=(_)
          end

          # The identifier of the Check Transfer object that was deposited.
          sig { returns(T.nilable(String)) }
          def transfer_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def transfer_id=(_)
          end

          # An Inbound Check Deposit Return Intention object. This field will be present in
          #   the JSON response if and only if `category` is equal to
          #   `inbound_check_deposit_return_intention`. An Inbound Check Deposit Return
          #   Intention is created when Increase receives an Inbound Check and the User
          #   requests that it be returned.
          sig do
            params(inbound_check_deposit_id: String, transfer_id: T.nilable(String)).returns(T.attached_class)
          end
          def self.new(inbound_check_deposit_id:, transfer_id:)
          end

          sig { override.returns({inbound_check_deposit_id: String, transfer_id: T.nilable(String)}) }
          def to_hash
          end
        end

        class InboundRealTimePaymentsTransferConfirmation < Increase::BaseModel
          # The amount in the minor unit of the transfer's currency. For dollars, for
          #   example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The name the sender of the transfer specified as the recipient of the transfer.
          sig { returns(String) }
          def creditor_name
          end

          sig { params(_: String).returns(String) }
          def creditor_name=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's
          #   currency. This will always be "USD" for a Real-Time Payments transfer.
          sig do
            returns(
              Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol
            )
          end
          def currency
          end

          sig do
            params(
              _: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol
            )
              .returns(
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol
              )
          end
          def currency=(_)
          end

          # The account number of the account that sent the transfer.
          sig { returns(String) }
          def debtor_account_number
          end

          sig { params(_: String).returns(String) }
          def debtor_account_number=(_)
          end

          # The name provided by the sender of the transfer.
          sig { returns(String) }
          def debtor_name
          end

          sig { params(_: String).returns(String) }
          def debtor_name=(_)
          end

          # The routing number of the account that sent the transfer.
          sig { returns(String) }
          def debtor_routing_number
          end

          sig { params(_: String).returns(String) }
          def debtor_routing_number=(_)
          end

          # Additional information included with the transfer.
          sig { returns(T.nilable(String)) }
          def remittance_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def remittance_information=(_)
          end

          # The Real-Time Payments network identification of the transfer.
          sig { returns(String) }
          def transaction_identification
          end

          sig { params(_: String).returns(String) }
          def transaction_identification=(_)
          end

          # The identifier of the Real-Time Payments Transfer that led to this Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An Inbound Real-Time Payments Transfer Confirmation object. This field will be
          #   present in the JSON response if and only if `category` is equal to
          #   `inbound_real_time_payments_transfer_confirmation`. An Inbound Real-Time
          #   Payments Transfer Confirmation is created when a Real-Time Payments transfer is
          #   initiated at another bank and received by Increase.
          sig do
            params(
              amount: Integer,
              creditor_name: String,
              currency: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol,
              debtor_account_number: String,
              debtor_name: String,
              debtor_routing_number: String,
              remittance_information: T.nilable(String),
              transaction_identification: String,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
                {
                  amount: Integer,
                  creditor_name: String,
                  currency: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol,
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

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's
          #   currency. This will always be "USD" for a Real-Time Payments transfer.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol
                )
              end

            # Canadian Dollar (CAD)
            CAD =
              T.let(
                :CAD,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol
              )

            # Swiss Franc (CHF)
            CHF =
              T.let(
                :CHF,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol
              )

            # Euro (EUR)
            EUR =
              T.let(
                :EUR,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol
              )

            # British Pound (GBP)
            GBP =
              T.let(
                :GBP,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol
              )

            # Japanese Yen (JPY)
            JPY =
              T.let(
                :JPY,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol
              )

            # US Dollar (USD)
            USD =
              T.let(
                :USD,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency::TaggedSymbol
              )
          end
        end

        class InboundRealTimePaymentsTransferDecline < Increase::BaseModel
          # The declined amount in the minor unit of the destination account currency. For
          #   dollars, for example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The name the sender of the transfer specified as the recipient of the transfer.
          sig { returns(String) }
          def creditor_name
          end

          sig { params(_: String).returns(String) }
          def creditor_name=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined
          #   transfer's currency. This will always be "USD" for a Real-Time Payments
          #   transfer.
          sig do
            returns(
              Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
            )
          end
          def currency
          end

          sig do
            params(
              _: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
            )
              .returns(
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )
          end
          def currency=(_)
          end

          # The account number of the account that sent the transfer.
          sig { returns(String) }
          def debtor_account_number
          end

          sig { params(_: String).returns(String) }
          def debtor_account_number=(_)
          end

          # The name provided by the sender of the transfer.
          sig { returns(String) }
          def debtor_name
          end

          sig { params(_: String).returns(String) }
          def debtor_name=(_)
          end

          # The routing number of the account that sent the transfer.
          sig { returns(String) }
          def debtor_routing_number
          end

          sig { params(_: String).returns(String) }
          def debtor_routing_number=(_)
          end

          # Why the transfer was declined.
          sig do
            returns(
              Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
            )
          end
          def reason
          end

          sig do
            params(
              _: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
            )
              .returns(
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )
          end
          def reason=(_)
          end

          # Additional information included with the transfer.
          sig { returns(T.nilable(String)) }
          def remittance_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def remittance_information=(_)
          end

          # The Real-Time Payments network identification of the declined transfer.
          sig { returns(String) }
          def transaction_identification
          end

          sig { params(_: String).returns(String) }
          def transaction_identification=(_)
          end

          # The identifier of the Real-Time Payments Transfer that led to this Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An Inbound Real-Time Payments Transfer Decline object. This field will be
          #   present in the JSON response if and only if `category` is equal to
          #   `inbound_real_time_payments_transfer_decline`.
          sig do
            params(
              amount: Integer,
              creditor_name: String,
              currency: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol,
              debtor_account_number: String,
              debtor_name: String,
              debtor_routing_number: String,
              reason: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol,
              remittance_information: T.nilable(String),
              transaction_identification: String,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
                {
                  amount: Integer,
                  creditor_name: String,
                  currency: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol,
                  debtor_account_number: String,
                  debtor_name: String,
                  debtor_routing_number: String,
                  reason: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol,
                  remittance_information: T.nilable(String),
                  transaction_identification: String,
                  transfer_id: String
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined
          #   transfer's currency. This will always be "USD" for a Real-Time Payments
          #   transfer.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
                )
              end

            # Canadian Dollar (CAD)
            CAD =
              T.let(
                :CAD,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            # Swiss Franc (CHF)
            CHF =
              T.let(
                :CHF,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            # Euro (EUR)
            EUR =
              T.let(
                :EUR,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            # British Pound (GBP)
            GBP =
              T.let(
                :GBP,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            # Japanese Yen (JPY)
            JPY =
              T.let(
                :JPY,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            # US Dollar (USD)
            USD =
              T.let(
                :USD,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )
          end

          # Why the transfer was declined.
          module Reason
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
                )
              end

            # The account number is canceled.
            ACCOUNT_NUMBER_CANCELED =
              T.let(
                :account_number_canceled,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            # The account number is disabled.
            ACCOUNT_NUMBER_DISABLED =
              T.let(
                :account_number_disabled,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            # Your account is restricted.
            ACCOUNT_RESTRICTED =
              T.let(
                :account_restricted,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            # Your account is inactive.
            GROUP_LOCKED =
              T.let(
                :group_locked,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE =
              T.let(
                :entity_not_active,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            # Your account is not enabled to receive Real-Time Payments transfers.
            REAL_TIME_PAYMENTS_NOT_ENABLED =
              T.let(
                :real_time_payments_not_enabled,
                Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )
          end
        end

        class InboundWireReversal < Increase::BaseModel
          # The amount that was reversed in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   the reversal was created.
          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          # The description on the reversal message from Fedwire, set by the reversing bank.
          sig { returns(String) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          # Additional financial institution information included in the wire reversal.
          sig { returns(T.nilable(String)) }
          def financial_institution_to_financial_institution_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def financial_institution_to_financial_institution_information=(_)
          end

          # The Fedwire cycle date for the wire reversal. The "Fedwire day" begins at 9:00
          #   PM Eastern Time on the evening before the `cycle date`.
          sig { returns(Date) }
          def input_cycle_date
          end

          sig { params(_: Date).returns(Date) }
          def input_cycle_date=(_)
          end

          # The Fedwire transaction identifier.
          sig { returns(String) }
          def input_message_accountability_data
          end

          sig { params(_: String).returns(String) }
          def input_message_accountability_data=(_)
          end

          # The Fedwire sequence number.
          sig { returns(String) }
          def input_sequence_number
          end

          sig { params(_: String).returns(String) }
          def input_sequence_number=(_)
          end

          # The Fedwire input source identifier.
          sig { returns(String) }
          def input_source
          end

          sig { params(_: String).returns(String) }
          def input_source=(_)
          end

          # The American Banking Association (ABA) routing number of the bank originating
          #   the transfer.
          sig { returns(T.nilable(String)) }
          def originator_routing_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_routing_number=(_)
          end

          # The Fedwire cycle date for the wire transfer that is being reversed by this
          #   message.
          sig { returns(Date) }
          def previous_message_input_cycle_date
          end

          sig { params(_: Date).returns(Date) }
          def previous_message_input_cycle_date=(_)
          end

          # The Fedwire transaction identifier for the wire transfer that was reversed.
          sig { returns(String) }
          def previous_message_input_message_accountability_data
          end

          sig { params(_: String).returns(String) }
          def previous_message_input_message_accountability_data=(_)
          end

          # The Fedwire sequence number for the wire transfer that was reversed.
          sig { returns(String) }
          def previous_message_input_sequence_number
          end

          sig { params(_: String).returns(String) }
          def previous_message_input_sequence_number=(_)
          end

          # The Fedwire input source identifier for the wire transfer that was reversed.
          sig { returns(String) }
          def previous_message_input_source
          end

          sig { params(_: String).returns(String) }
          def previous_message_input_source=(_)
          end

          # Information included in the wire reversal for the receiving financial
          #   institution.
          sig { returns(T.nilable(String)) }
          def receiver_financial_institution_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def receiver_financial_institution_information=(_)
          end

          # The sending bank's reference number for the wire reversal.
          sig { returns(T.nilable(String)) }
          def sender_reference
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def sender_reference=(_)
          end

          # The ID for the Transaction associated with the transfer reversal.
          sig { returns(String) }
          def transaction_id
          end

          sig { params(_: String).returns(String) }
          def transaction_id=(_)
          end

          # The ID for the Wire Transfer that is being reversed.
          sig { returns(String) }
          def wire_transfer_id
          end

          sig { params(_: String).returns(String) }
          def wire_transfer_id=(_)
          end

          # An Inbound Wire Reversal object. This field will be present in the JSON response
          #   if and only if `category` is equal to `inbound_wire_reversal`. An Inbound Wire
          #   Reversal represents a reversal of a wire transfer that was initiated via
          #   Increase. The other bank is sending the money back. This most often happens when
          #   the original destination account details were incorrect.
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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
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
          # The amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # A free-form address field set by the sender.
          sig { returns(T.nilable(String)) }
          def beneficiary_address_line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def beneficiary_address_line1=(_)
          end

          # A free-form address field set by the sender.
          sig { returns(T.nilable(String)) }
          def beneficiary_address_line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def beneficiary_address_line2=(_)
          end

          # A free-form address field set by the sender.
          sig { returns(T.nilable(String)) }
          def beneficiary_address_line3
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def beneficiary_address_line3=(_)
          end

          # A name set by the sender.
          sig { returns(T.nilable(String)) }
          def beneficiary_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def beneficiary_name=(_)
          end

          # A free-form reference string set by the sender, to help identify the transfer.
          sig { returns(T.nilable(String)) }
          def beneficiary_reference
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def beneficiary_reference=(_)
          end

          # An Increase-constructed description of the transfer.
          sig { returns(String) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          # A unique identifier available to the originating and receiving banks, commonly
          #   abbreviated as IMAD. It is created when the wire is submitted to the Fedwire
          #   service and is helpful when debugging wires with the originating bank.
          sig { returns(T.nilable(String)) }
          def input_message_accountability_data
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def input_message_accountability_data=(_)
          end

          # The address of the wire originator, set by the sending bank.
          sig { returns(T.nilable(String)) }
          def originator_address_line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_address_line1=(_)
          end

          # The address of the wire originator, set by the sending bank.
          sig { returns(T.nilable(String)) }
          def originator_address_line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_address_line2=(_)
          end

          # The address of the wire originator, set by the sending bank.
          sig { returns(T.nilable(String)) }
          def originator_address_line3
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_address_line3=(_)
          end

          # The originator of the wire, set by the sending bank.
          sig { returns(T.nilable(String)) }
          def originator_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_name=(_)
          end

          # The American Banking Association (ABA) routing number of the bank originating
          #   the transfer.
          sig { returns(T.nilable(String)) }
          def originator_routing_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_routing_number=(_)
          end

          # An Increase-created concatenation of the Originator-to-Beneficiary lines.
          sig { returns(T.nilable(String)) }
          def originator_to_beneficiary_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_to_beneficiary_information=(_)
          end

          # A free-form message set by the wire originator.
          sig { returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line1
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line1=(_)
          end

          # A free-form message set by the wire originator.
          sig { returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line2
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line2=(_)
          end

          # A free-form message set by the wire originator.
          sig { returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line3
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line3=(_)
          end

          # A free-form message set by the wire originator.
          sig { returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line4
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def originator_to_beneficiary_information_line4=(_)
          end

          # The ID of the Inbound Wire Transfer object that resulted in this Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An Inbound Wire Transfer Intention object. This field will be present in the
          #   JSON response if and only if `category` is equal to `inbound_wire_transfer`. An
          #   Inbound Wire Transfer Intention is created when a wire transfer is initiated at
          #   another bank and received by Increase.
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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
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
          # The ID of the Inbound Wire Transfer that is being reversed.
          sig { returns(String) }
          def inbound_wire_transfer_id
          end

          sig { params(_: String).returns(String) }
          def inbound_wire_transfer_id=(_)
          end

          # An Inbound Wire Transfer Reversal Intention object. This field will be present
          #   in the JSON response if and only if `category` is equal to
          #   `inbound_wire_transfer_reversal`. An Inbound Wire Transfer Reversal Intention is
          #   created when Increase has received a wire and the User requests that it be
          #   reversed.
          sig { params(inbound_wire_transfer_id: String).returns(T.attached_class) }
          def self.new(inbound_wire_transfer_id:)
          end

          sig { override.returns({inbound_wire_transfer_id: String}) }
          def to_hash
          end
        end

        class InterestPayment < Increase::BaseModel
          # The account on which the interest was accrued.
          sig { returns(String) }
          def accrued_on_account_id
          end

          sig { params(_: String).returns(String) }
          def accrued_on_account_id=(_)
          end

          # The amount in the minor unit of the transaction's currency. For dollars, for
          #   example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   currency.
          sig { returns(Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # The end of the period for which this transaction paid interest.
          sig { returns(Time) }
          def period_end
          end

          sig { params(_: Time).returns(Time) }
          def period_end=(_)
          end

          # The start of the period for which this transaction paid interest.
          sig { returns(Time) }
          def period_start
          end

          sig { params(_: Time).returns(Time) }
          def period_start=(_)
          end

          # An Interest Payment object. This field will be present in the JSON response if
          #   and only if `category` is equal to `interest_payment`. An Interest Payment
          #   represents a payment of interest on an account. Interest is usually paid
          #   monthly.
          sig do
            params(
              accrued_on_account_id: String,
              amount: Integer,
              currency: Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol,
              period_end: Time,
              period_start: Time
            )
              .returns(T.attached_class)
          end
          def self.new(accrued_on_account_id:, amount:, currency:, period_end:, period_start:)
          end

          sig do
            override
              .returns(
                {
                  accrued_on_account_id: String,
                  amount: Integer,
                  currency: Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol,
                  period_end: Time,
                  period_start: Time
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::InterestPayment::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::Transaction::Source::InterestPayment::Currency::TaggedSymbol)
          end
        end

        class InternalSource < Increase::BaseModel
          # The amount in the minor unit of the transaction's currency. For dollars, for
          #   example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   currency.
          sig { returns(Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # An Internal Source is a transaction between you and Increase. This describes the
          #   reason for the transaction.
          sig { returns(Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol) }
          def reason
          end

          sig do
            params(_: Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)
              .returns(Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)
          end
          def reason=(_)
          end

          # An Internal Source object. This field will be present in the JSON response if
          #   and only if `category` is equal to `internal_source`. A transaction between the
          #   user and Increase. See the `reason` attribute for more information.
          sig do
            params(
              amount: Integer,
              currency: Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol,
              reason: Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, currency:, reason:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  currency: Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol,
                  reason: Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::InternalSource::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::Transaction::Source::InternalSource::Currency::TaggedSymbol)
          end

          # An Internal Source is a transaction between you and Increase. This describes the
          #   reason for the transaction.
          module Reason
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::Transaction::Source::InternalSource::Reason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol) }

            # Account closure
            ACCOUNT_CLOSURE =
              T.let(:account_closure, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Bank-drawn check
            BANK_DRAWN_CHECK =
              T.let(:bank_drawn_check, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Bank-drawn check credit
            BANK_DRAWN_CHECK_CREDIT =
              T.let(
                :bank_drawn_check_credit,
                Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol
              )

            # Bank migration
            BANK_MIGRATION =
              T.let(:bank_migration, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Check adjustment
            CHECK_ADJUSTMENT =
              T.let(:check_adjustment, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Collection payment
            COLLECTION_PAYMENT =
              T.let(:collection_payment, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Collection receivable
            COLLECTION_RECEIVABLE =
              T.let(:collection_receivable, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Empyreal adjustment
            EMPYREAL_ADJUSTMENT =
              T.let(:empyreal_adjustment, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Error
            ERROR = T.let(:error, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Error correction
            ERROR_CORRECTION =
              T.let(:error_correction, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Fees
            FEES = T.let(:fees, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Interest
            INTEREST = T.let(:interest, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Negative balance forgiveness
            NEGATIVE_BALANCE_FORGIVENESS =
              T.let(
                :negative_balance_forgiveness,
                Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol
              )

            # Sample funds
            SAMPLE_FUNDS =
              T.let(:sample_funds, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)

            # Sample funds return
            SAMPLE_FUNDS_RETURN =
              T.let(:sample_funds_return, Increase::Models::Transaction::Source::InternalSource::Reason::TaggedSymbol)
          end
        end

        class RealTimePaymentsTransferAcknowledgement < Increase::BaseModel
          # The transfer amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The destination account number.
          sig { returns(String) }
          def destination_account_number
          end

          sig { params(_: String).returns(String) }
          def destination_account_number=(_)
          end

          # The American Bankers' Association (ABA) Routing Transit Number (RTN).
          sig { returns(String) }
          def destination_routing_number
          end

          sig { params(_: String).returns(String) }
          def destination_routing_number=(_)
          end

          # Unstructured information that will show on the recipient's bank statement.
          sig { returns(String) }
          def remittance_information
          end

          sig { params(_: String).returns(String) }
          def remittance_information=(_)
          end

          # The identifier of the Real-Time Payments Transfer that led to this Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # A Real-Time Payments Transfer Acknowledgement object. This field will be present
          #   in the JSON response if and only if `category` is equal to
          #   `real_time_payments_transfer_acknowledgement`. A Real-Time Payments Transfer
          #   Acknowledgement is created when a Real-Time Payments Transfer sent from Increase
          #   is acknowledged by the receiving bank.
          sig do
            params(
              amount: Integer,
              destination_account_number: String,
              destination_routing_number: String,
              remittance_information: String,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, destination_account_number:, destination_routing_number:, remittance_information:, transfer_id:)
          end

          sig do
            override
              .returns(
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
          # Where the sample funds came from.
          sig { returns(String) }
          def originator
          end

          sig { params(_: String).returns(String) }
          def originator=(_)
          end

          # A Sample Funds object. This field will be present in the JSON response if and
          #   only if `category` is equal to `sample_funds`. Sample funds for testing
          #   purposes.
          sig { params(originator: String).returns(T.attached_class) }
          def self.new(originator:)
          end

          sig { override.returns({originator: String}) }
          def to_hash
          end
        end

        class WireTransferIntention < Increase::BaseModel
          # The destination account number.
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          # The transfer amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The message that will show on the recipient's bank statement.
          sig { returns(String) }
          def message_to_recipient
          end

          sig { params(_: String).returns(String) }
          def message_to_recipient=(_)
          end

          # The American Bankers' Association (ABA) Routing Transit Number (RTN).
          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          # The identifier of the Wire Transfer that led to this Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # A Wire Transfer Intention object. This field will be present in the JSON
          #   response if and only if `category` is equal to `wire_transfer_intention`. A Wire
          #   Transfer initiated via Increase and sent to a different bank.
          sig do
            params(
              account_number: String,
              amount: Integer,
              message_to_recipient: String,
              routing_number: String,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(account_number:, amount:, message_to_recipient:, routing_number:, transfer_id:)
          end

          sig do
            override
              .returns(
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

      # A constant representing the object's type. For this resource it will always be
      #   `transaction`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Transaction::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Transaction::Type::TaggedSymbol) }

        TRANSACTION = T.let(:transaction, Increase::Models::Transaction::Type::TaggedSymbol)
      end
    end
  end
end
