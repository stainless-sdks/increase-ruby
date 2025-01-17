# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # transaction => {
    #   id: String,
    #   account_id: String,
    #   amount: Integer,
    #   created_at: Time,
    #   currency: enum: Increase::Models::Transaction::Currency,
    #   **_
    # }
    # ```
    class Transaction < Increase::BaseModel
      # @!attribute id
      #   The Transaction identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The identifier for the Account the Transaction belongs to.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   The Transaction amount in the minor unit of its currency. For dollars, for example, this is cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Transaction occurred.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Transaction's currency. This will match the currency on the Transaction's Account.
      #
      #   @return [Symbol, Increase::Models::Transaction::Currency]
      required :currency, enum: -> { Increase::Models::Transaction::Currency }

      # @!attribute description
      #   An informational message describing this transaction. Use the fields in `source` to get more detailed information. This field appears as the line-item on the statement.
      #
      #   @return [String]
      required :description, String

      # @!attribute route_id
      #   The identifier for the route this Transaction came through. Routes are things like cards and ACH details.
      #
      #   @return [String, nil]
      required :route_id, String

      # @!attribute route_type
      #   The type of the route this Transaction came through.
      #
      #   @return [Symbol, Increase::Models::Transaction::RouteType, nil]
      required :route_type, enum: -> { Increase::Models::Transaction::RouteType }

      # @!attribute source
      #   This is an object giving more details on the network-level event that caused the Transaction. Note that for backwards compatibility reasons, additional undocumented keys may appear in this object. These should be treated as deprecated and will be removed in the future.
      #
      #   @return [Increase::Models::Transaction::Source]
      required :source, -> { Increase::Models::Transaction::Source }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `transaction`.
      #
      #   @return [Symbol, Increase::Models::Transaction::Type]
      required :type, enum: -> { Increase::Models::Transaction::Type }

      # @!parse
      #   # Transactions are the immutable additions and removals of money from your bank
      #   #   account. They're the equivalent of line items on your bank statement.
      #   #
      #   # @param id [String] The Transaction identifier.
      #   #
      #   # @param account_id [String] The identifier for the Account the Transaction belongs to.
      #   #
      #   # @param amount [Integer] The Transaction amount in the minor unit of its currency. For dollars, for
      #   #   example, this is cents.
      #   #
      #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the
      #   #   Transaction occurred.
      #   #
      #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
      #   #   Transaction's currency. This will match the currency on the Transaction's
      #   #   Account.
      #   #
      #   # @param description [String] An informational message describing this transaction. Use the fields in `source`
      #   #   to get more detailed information. This field appears as the line-item on the
      #   #   statement.
      #   #
      #   # @param route_id [String, nil] The identifier for the route this Transaction came through. Routes are things
      #   #   like cards and ACH details.
      #   #
      #   # @param route_type [String, nil] The type of the route this Transaction came through.
      #   #
      #   # @param source [Increase::Models::Transaction::Source] This is an object giving more details on the network-level event that caused the
      #   #   Transaction. Note that for backwards compatibility reasons, additional
      #   #   undocumented keys may appear in this object. These should be treated as
      #   #   deprecated and will be removed in the future.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `transaction`.
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

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Transaction's currency. This will match the currency on the Transaction's Account.
      #
      # @example
      # ```ruby
      # case currency
      # in :CAD
      #   # ...
      # in :CHF
      #   # ...
      # in :EUR
      #   # ...
      # in :GBP
      #   # ...
      # in :JPY
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

        finalize!
      end

      # The type of the route this Transaction came through.
      #
      # @example
      # ```ruby
      # case route_type
      # in :account_number
      #   # ...
      # in :card
      #   # ...
      # in :lockbox
      #   # ...
      # end
      # ```
      class RouteType < Increase::Enum
        # An Account Number.
        ACCOUNT_NUMBER = :account_number

        # A Card.
        CARD = :card

        # A Lockbox.
        LOCKBOX = :lockbox

        finalize!
      end

      # @example
      # ```ruby
      # source => {
      #   account_transfer_intention: Increase::Models::Transaction::Source::AccountTransferIntention,
      #   ach_transfer_intention: Increase::Models::Transaction::Source::ACHTransferIntention,
      #   ach_transfer_rejection: Increase::Models::Transaction::Source::ACHTransferRejection,
      #   ach_transfer_return: Increase::Models::Transaction::Source::ACHTransferReturn,
      #   card_dispute_acceptance: Increase::Models::Transaction::Source::CardDisputeAcceptance,
      #   **_
      # }
      # ```
      class Source < Increase::BaseModel
        # @!attribute account_transfer_intention
        #   An Account Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `account_transfer_intention`.
        #
        #   @return [Increase::Models::Transaction::Source::AccountTransferIntention, nil]
        required :account_transfer_intention,
                 -> { Increase::Models::Transaction::Source::AccountTransferIntention }

        # @!attribute ach_transfer_intention
        #   An ACH Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_intention`.
        #
        #   @return [Increase::Models::Transaction::Source::ACHTransferIntention, nil]
        required :ach_transfer_intention, -> { Increase::Models::Transaction::Source::ACHTransferIntention }

        # @!attribute ach_transfer_rejection
        #   An ACH Transfer Rejection object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_rejection`.
        #
        #   @return [Increase::Models::Transaction::Source::ACHTransferRejection, nil]
        required :ach_transfer_rejection, -> { Increase::Models::Transaction::Source::ACHTransferRejection }

        # @!attribute ach_transfer_return
        #   An ACH Transfer Return object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_return`.
        #
        #   @return [Increase::Models::Transaction::Source::ACHTransferReturn, nil]
        required :ach_transfer_return, -> { Increase::Models::Transaction::Source::ACHTransferReturn }

        # @!attribute card_dispute_acceptance
        #   A Card Dispute Acceptance object. This field will be present in the JSON response if and only if `category` is equal to `card_dispute_acceptance`.
        #
        #   @return [Increase::Models::Transaction::Source::CardDisputeAcceptance, nil]
        required :card_dispute_acceptance, -> { Increase::Models::Transaction::Source::CardDisputeAcceptance }

        # @!attribute card_dispute_loss
        #   A Card Dispute Loss object. This field will be present in the JSON response if and only if `category` is equal to `card_dispute_loss`.
        #
        #   @return [Increase::Models::Transaction::Source::CardDisputeLoss, nil]
        required :card_dispute_loss, -> { Increase::Models::Transaction::Source::CardDisputeLoss }

        # @!attribute card_refund
        #   A Card Refund object. This field will be present in the JSON response if and only if `category` is equal to `card_refund`.
        #
        #   @return [Increase::Models::Transaction::Source::CardRefund, nil]
        required :card_refund, -> { Increase::Models::Transaction::Source::CardRefund }

        # @!attribute card_revenue_payment
        #   A Card Revenue Payment object. This field will be present in the JSON response if and only if `category` is equal to `card_revenue_payment`.
        #
        #   @return [Increase::Models::Transaction::Source::CardRevenuePayment, nil]
        required :card_revenue_payment, -> { Increase::Models::Transaction::Source::CardRevenuePayment }

        # @!attribute card_settlement
        #   A Card Settlement object. This field will be present in the JSON response if and only if `category` is equal to `card_settlement`.
        #
        #   @return [Increase::Models::Transaction::Source::CardSettlement, nil]
        required :card_settlement, -> { Increase::Models::Transaction::Source::CardSettlement }

        # @!attribute cashback_payment
        #   A Cashback Payment object. This field will be present in the JSON response if and only if `category` is equal to `cashback_payment`.
        #
        #   @return [Increase::Models::Transaction::Source::CashbackPayment, nil]
        required :cashback_payment, -> { Increase::Models::Transaction::Source::CashbackPayment }

        # @!attribute category
        #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #
        #   @return [Symbol, Increase::Models::Transaction::Source::Category]
        required :category, enum: -> { Increase::Models::Transaction::Source::Category }

        # @!attribute check_deposit_acceptance
        #   A Check Deposit Acceptance object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_acceptance`.
        #
        #   @return [Increase::Models::Transaction::Source::CheckDepositAcceptance, nil]
        required :check_deposit_acceptance,
                 -> {
                   Increase::Models::Transaction::Source::CheckDepositAcceptance
                 }

        # @!attribute check_deposit_return
        #   A Check Deposit Return object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_return`.
        #
        #   @return [Increase::Models::Transaction::Source::CheckDepositReturn, nil]
        required :check_deposit_return, -> { Increase::Models::Transaction::Source::CheckDepositReturn }

        # @!attribute check_transfer_deposit
        #   A Check Transfer Deposit object. This field will be present in the JSON response if and only if `category` is equal to `check_transfer_deposit`.
        #
        #   @return [Increase::Models::Transaction::Source::CheckTransferDeposit, nil]
        required :check_transfer_deposit, -> { Increase::Models::Transaction::Source::CheckTransferDeposit }

        # @!attribute fee_payment
        #   A Fee Payment object. This field will be present in the JSON response if and only if `category` is equal to `fee_payment`.
        #
        #   @return [Increase::Models::Transaction::Source::FeePayment, nil]
        required :fee_payment, -> { Increase::Models::Transaction::Source::FeePayment }

        # @!attribute inbound_ach_transfer
        #   An Inbound ACH Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `inbound_ach_transfer`.
        #
        #   @return [Increase::Models::Transaction::Source::InboundACHTransfer, nil]
        required :inbound_ach_transfer, -> { Increase::Models::Transaction::Source::InboundACHTransfer }

        # @!attribute inbound_real_time_payments_transfer_confirmation
        #   An Inbound Real-Time Payments Transfer Confirmation object. This field will be present in the JSON response if and only if `category` is equal to `inbound_real_time_payments_transfer_confirmation`.
        #
        #   @return [Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation, nil]
        required :inbound_real_time_payments_transfer_confirmation,
                 -> { Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation }

        # @!attribute inbound_real_time_payments_transfer_decline
        #   An Inbound Real-Time Payments Transfer Decline object. This field will be present in the JSON response if and only if `category` is equal to `inbound_real_time_payments_transfer_decline`.
        #
        #   @return [Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline, nil]
        required :inbound_real_time_payments_transfer_decline,
                 -> { Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline }

        # @!attribute inbound_wire_reversal
        #   An Inbound Wire Reversal object. This field will be present in the JSON response if and only if `category` is equal to `inbound_wire_reversal`.
        #
        #   @return [Increase::Models::Transaction::Source::InboundWireReversal, nil]
        required :inbound_wire_reversal, -> { Increase::Models::Transaction::Source::InboundWireReversal }

        # @!attribute inbound_wire_transfer
        #   An Inbound Wire Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `inbound_wire_transfer`.
        #
        #   @return [Increase::Models::Transaction::Source::InboundWireTransfer, nil]
        required :inbound_wire_transfer, -> { Increase::Models::Transaction::Source::InboundWireTransfer }

        # @!attribute interest_payment
        #   An Interest Payment object. This field will be present in the JSON response if and only if `category` is equal to `interest_payment`.
        #
        #   @return [Increase::Models::Transaction::Source::InterestPayment, nil]
        required :interest_payment, -> { Increase::Models::Transaction::Source::InterestPayment }

        # @!attribute internal_source
        #   An Internal Source object. This field will be present in the JSON response if and only if `category` is equal to `internal_source`.
        #
        #   @return [Increase::Models::Transaction::Source::InternalSource, nil]
        required :internal_source, -> { Increase::Models::Transaction::Source::InternalSource }

        # @!attribute other
        #   If the category of this Transaction source is equal to `other`, this field will contain an empty object, otherwise it will contain null.
        #
        #   @return [Object, nil]
        required :other, Increase::Unknown

        # @!attribute real_time_payments_transfer_acknowledgement
        #   A Real-Time Payments Transfer Acknowledgement object. This field will be present in the JSON response if and only if `category` is equal to `real_time_payments_transfer_acknowledgement`.
        #
        #   @return [Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement, nil]
        required :real_time_payments_transfer_acknowledgement,
                 -> { Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement }

        # @!attribute sample_funds
        #   A Sample Funds object. This field will be present in the JSON response if and only if `category` is equal to `sample_funds`.
        #
        #   @return [Increase::Models::Transaction::Source::SampleFunds, nil]
        required :sample_funds, -> { Increase::Models::Transaction::Source::SampleFunds }

        # @!attribute wire_transfer_intention
        #   A Wire Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `wire_transfer_intention`.
        #
        #   @return [Increase::Models::Transaction::Source::WireTransferIntention, nil]
        required :wire_transfer_intention, -> { Increase::Models::Transaction::Source::WireTransferIntention }

        # @!parse
        #   # This is an object giving more details on the network-level event that caused the
        #   #   Transaction. Note that for backwards compatibility reasons, additional
        #   #   undocumented keys may appear in this object. These should be treated as
        #   #   deprecated and will be removed in the future.
        #   #
        #   # @param account_transfer_intention [Increase::Models::Transaction::Source::AccountTransferIntention, nil] An Account Transfer Intention object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `account_transfer_intention`.
        #   #
        #   # @param ach_transfer_intention [Increase::Models::Transaction::Source::ACHTransferIntention, nil] An ACH Transfer Intention object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `ach_transfer_intention`.
        #   #
        #   # @param ach_transfer_rejection [Increase::Models::Transaction::Source::ACHTransferRejection, nil] An ACH Transfer Rejection object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `ach_transfer_rejection`.
        #   #
        #   # @param ach_transfer_return [Increase::Models::Transaction::Source::ACHTransferReturn, nil] An ACH Transfer Return object. This field will be present in the JSON response
        #   #   if and only if `category` is equal to `ach_transfer_return`.
        #   #
        #   # @param card_dispute_acceptance [Increase::Models::Transaction::Source::CardDisputeAcceptance, nil] A Card Dispute Acceptance object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `card_dispute_acceptance`.
        #   #
        #   # @param card_dispute_loss [Increase::Models::Transaction::Source::CardDisputeLoss, nil] A Card Dispute Loss object. This field will be present in the JSON response if
        #   #   and only if `category` is equal to `card_dispute_loss`.
        #   #
        #   # @param card_refund [Increase::Models::Transaction::Source::CardRefund, nil] A Card Refund object. This field will be present in the JSON response if and
        #   #   only if `category` is equal to `card_refund`.
        #   #
        #   # @param card_revenue_payment [Increase::Models::Transaction::Source::CardRevenuePayment, nil] A Card Revenue Payment object. This field will be present in the JSON response
        #   #   if and only if `category` is equal to `card_revenue_payment`.
        #   #
        #   # @param card_settlement [Increase::Models::Transaction::Source::CardSettlement, nil] A Card Settlement object. This field will be present in the JSON response if and
        #   #   only if `category` is equal to `card_settlement`.
        #   #
        #   # @param cashback_payment [Increase::Models::Transaction::Source::CashbackPayment, nil] A Cashback Payment object. This field will be present in the JSON response if
        #   #   and only if `category` is equal to `cashback_payment`.
        #   #
        #   # @param category [String] The type of the resource. We may add additional possible values for this enum
        #   #   over time; your application should be able to handle such additions gracefully.
        #   #
        #   # @param check_deposit_acceptance [Increase::Models::Transaction::Source::CheckDepositAcceptance, nil] A Check Deposit Acceptance object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `check_deposit_acceptance`.
        #   #
        #   # @param check_deposit_return [Increase::Models::Transaction::Source::CheckDepositReturn, nil] A Check Deposit Return object. This field will be present in the JSON response
        #   #   if and only if `category` is equal to `check_deposit_return`.
        #   #
        #   # @param check_transfer_deposit [Increase::Models::Transaction::Source::CheckTransferDeposit, nil] A Check Transfer Deposit object. This field will be present in the JSON response
        #   #   if and only if `category` is equal to `check_transfer_deposit`.
        #   #
        #   # @param fee_payment [Increase::Models::Transaction::Source::FeePayment, nil] A Fee Payment object. This field will be present in the JSON response if and
        #   #   only if `category` is equal to `fee_payment`.
        #   #
        #   # @param inbound_ach_transfer [Increase::Models::Transaction::Source::InboundACHTransfer, nil] An Inbound ACH Transfer Intention object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `inbound_ach_transfer`.
        #   #
        #   # @param inbound_real_time_payments_transfer_confirmation [Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation, nil] An Inbound Real-Time Payments Transfer Confirmation object. This field will be
        #   #   present in the JSON response if and only if `category` is equal to
        #   #   `inbound_real_time_payments_transfer_confirmation`.
        #   #
        #   # @param inbound_real_time_payments_transfer_decline [Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline, nil] An Inbound Real-Time Payments Transfer Decline object. This field will be
        #   #   present in the JSON response if and only if `category` is equal to
        #   #   `inbound_real_time_payments_transfer_decline`.
        #   #
        #   # @param inbound_wire_reversal [Increase::Models::Transaction::Source::InboundWireReversal, nil] An Inbound Wire Reversal object. This field will be present in the JSON response
        #   #   if and only if `category` is equal to `inbound_wire_reversal`.
        #   #
        #   # @param inbound_wire_transfer [Increase::Models::Transaction::Source::InboundWireTransfer, nil] An Inbound Wire Transfer Intention object. This field will be present in the
        #   #   JSON response if and only if `category` is equal to `inbound_wire_transfer`.
        #   #
        #   # @param interest_payment [Increase::Models::Transaction::Source::InterestPayment, nil] An Interest Payment object. This field will be present in the JSON response if
        #   #   and only if `category` is equal to `interest_payment`.
        #   #
        #   # @param internal_source [Increase::Models::Transaction::Source::InternalSource, nil] An Internal Source object. This field will be present in the JSON response if
        #   #   and only if `category` is equal to `internal_source`.
        #   #
        #   # @param other [Object, nil] If the category of this Transaction source is equal to `other`, this field will
        #   #   contain an empty object, otherwise it will contain null.
        #   #
        #   # @param real_time_payments_transfer_acknowledgement [Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement, nil] A Real-Time Payments Transfer Acknowledgement object. This field will be present
        #   #   in the JSON response if and only if `category` is equal to
        #   #   `real_time_payments_transfer_acknowledgement`.
        #   #
        #   # @param sample_funds [Increase::Models::Transaction::Source::SampleFunds, nil] A Sample Funds object. This field will be present in the JSON response if and
        #   #   only if `category` is equal to `sample_funds`.
        #   #
        #   # @param wire_transfer_intention [Increase::Models::Transaction::Source::WireTransferIntention, nil] A Wire Transfer Intention object. This field will be present in the JSON
        #   #   response if and only if `category` is equal to `wire_transfer_intention`.
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
        #     inbound_real_time_payments_transfer_confirmation:,
        #     inbound_real_time_payments_transfer_decline:,
        #     inbound_wire_reversal:,
        #     inbound_wire_transfer:,
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

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # account_transfer_intention => {
        #   amount: Integer,
        #   currency: enum: Increase::Models::Transaction::Source::AccountTransferIntention::Currency,
        #   description: String,
        #   destination_account_id: String,
        #   source_account_id: String
        # }
        # ```
        class AccountTransferIntention < Increase::BaseModel
          # @!attribute amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::AccountTransferIntention::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::Transaction::Source::AccountTransferIntention::Currency
                   }

          # @!attribute description
          #   The description you chose to give the transfer.
          #
          #   @return [String]
          required :description, String

          # @!attribute destination_account_id
          #   The identifier of the Account to where the Account Transfer was sent.
          #
          #   @return [String]
          required :destination_account_id, String

          # @!attribute source_account_id
          #   The identifier of the Account from where the Account Transfer was sent.
          #
          #   @return [String]
          required :source_account_id, String

          # @!attribute transfer_id
          #   The identifier of the Account Transfer that led to this Pending Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # An Account Transfer Intention object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `account_transfer_intention`.
          #   #
          #   # @param amount [Integer] The pending amount in the minor unit of the transaction's currency. For dollars,
          #   #   for example, this is cents.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
          #   #   account currency.
          #   #
          #   # @param description [String] The description you chose to give the transfer.
          #   #
          #   # @param destination_account_id [String] The identifier of the Account to where the Account Transfer was sent.
          #   #
          #   # @param source_account_id [String] The identifier of the Account from where the Account Transfer was sent.
          #   #
          #   # @param transfer_id [String] The identifier of the Account Transfer that led to this Pending Transaction.
          #   #
          #   def initialize(amount:, currency:, description:, destination_account_id:, source_account_id:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end
        end

        # @example
        # ```ruby
        # ach_transfer_intention => {
        #   account_number: String,
        #   amount: Integer,
        #   routing_number: String,
        #   statement_descriptor: String,
        #   transfer_id: String
        # }
        # ```
        class ACHTransferIntention < Increase::BaseModel
          # @!attribute account_number
          #   The account number for the destination account.
          #
          #   @return [String]
          required :account_number, String

          # @!attribute amount
          #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute routing_number
          #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the destination account.
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute statement_descriptor
          #   A description set when the ACH Transfer was created.
          #
          #   @return [String]
          required :statement_descriptor, String

          # @!attribute transfer_id
          #   The identifier of the ACH Transfer that led to this Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # An ACH Transfer Intention object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `ach_transfer_intention`.
          #   #
          #   # @param account_number [String] The account number for the destination account.
          #   #
          #   # @param amount [Integer] The amount in the minor unit of the transaction's currency. For dollars, for
          #   #   example, this is cents.
          #   #
          #   # @param routing_number [String] The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
          #   #   destination account.
          #   #
          #   # @param statement_descriptor [String] A description set when the ACH Transfer was created.
          #   #
          #   # @param transfer_id [String] The identifier of the ACH Transfer that led to this Transaction.
          #   #
          #   def initialize(account_number:, amount:, routing_number:, statement_descriptor:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # ach_transfer_rejection => {
        #   transfer_id: String
        # }
        # ```
        class ACHTransferRejection < Increase::BaseModel
          # @!attribute transfer_id
          #   The identifier of the ACH Transfer that led to this Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # An ACH Transfer Rejection object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `ach_transfer_rejection`.
          #   #
          #   # @param transfer_id [String] The identifier of the ACH Transfer that led to this Transaction.
          #   #
          #   def initialize(transfer_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # ach_transfer_return => {
        #   created_at: Time,
        #   raw_return_reason_code: String,
        #   return_reason_code: enum: Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode,
        #   trace_number: String,
        #   transaction_id: String
        # }
        # ```
        class ACHTransferReturn < Increase::BaseModel
          # @!attribute created_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute raw_return_reason_code
          #   The three character ACH return code, in the range R01 to R85.
          #
          #   @return [String]
          required :raw_return_reason_code, String

          # @!attribute return_reason_code
          #   Why the ACH Transfer was returned. This reason code is sent by the receiving bank back to Increase.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode]
          required :return_reason_code,
                   enum: -> { Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode }

          # @!attribute trace_number
          #   A 15 digit number that was generated by the bank that initiated the return. The trace number of the return is different than that of the original transfer. ACH trace numbers are not unique, but along with the amount and date this number can be used to identify the ACH return at the bank that initiated it.
          #
          #   @return [String]
          required :trace_number, String

          # @!attribute transaction_id
          #   The identifier of the Transaction associated with this return.
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute transfer_id
          #   The identifier of the ACH Transfer associated with this return.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # An ACH Transfer Return object. This field will be present in the JSON response
          #   #   if and only if `category` is equal to `ach_transfer_return`.
          #   #
          #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   #   the transfer was created.
          #   #
          #   # @param raw_return_reason_code [String] The three character ACH return code, in the range R01 to R85.
          #   #
          #   # @param return_reason_code [String] Why the ACH Transfer was returned. This reason code is sent by the receiving
          #   #   bank back to Increase.
          #   #
          #   # @param trace_number [String] A 15 digit number that was generated by the bank that initiated the return. The
          #   #   trace number of the return is different than that of the original transfer. ACH
          #   #   trace numbers are not unique, but along with the amount and date this number can
          #   #   be used to identify the ACH return at the bank that initiated it.
          #   #
          #   # @param transaction_id [String] The identifier of the Transaction associated with this return.
          #   #
          #   # @param transfer_id [String] The identifier of the ACH Transfer associated with this return.
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

          # def initialize: (Hash | Increase::BaseModel) -> void

          # Why the ACH Transfer was returned. This reason code is sent by the receiving bank back to Increase.
          #
          # @example
          # ```ruby
          # case return_reason_code
          # in :insufficient_fund
          #   # ...
          # in :no_account
          #   # ...
          # in :account_closed
          #   # ...
          # in :invalid_account_number_structure
          #   # ...
          # in :account_frozen_entry_returned_per_ofac_instruction
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class ReturnReasonCode < Increase::Enum
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

            finalize!
          end
        end

        # @example
        # ```ruby
        # card_dispute_acceptance => {
        #   accepted_at: Time,
        #   card_dispute_id: String,
        #   transaction_id: String
        # }
        # ```
        class CardDisputeAcceptance < Increase::BaseModel
          # @!attribute accepted_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was accepted.
          #
          #   @return [Time]
          required :accepted_at, Time

          # @!attribute card_dispute_id
          #   The identifier of the Card Dispute that was accepted.
          #
          #   @return [String]
          required :card_dispute_id, String

          # @!attribute transaction_id
          #   The identifier of the Transaction that was created to return the disputed funds to your account.
          #
          #   @return [String]
          required :transaction_id, String

          # @!parse
          #   # A Card Dispute Acceptance object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `card_dispute_acceptance`.
          #   #
          #   # @param accepted_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   #   the Card Dispute was accepted.
          #   #
          #   # @param card_dispute_id [String] The identifier of the Card Dispute that was accepted.
          #   #
          #   # @param transaction_id [String] The identifier of the Transaction that was created to return the disputed funds
          #   #   to your account.
          #   #
          #   def initialize(accepted_at:, card_dispute_id:, transaction_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # card_dispute_loss => {
        #   card_dispute_id: String,
        #   explanation: String,
        #   lost_at: Time,
        #   transaction_id: String
        # }
        # ```
        class CardDisputeLoss < Increase::BaseModel
          # @!attribute card_dispute_id
          #   The identifier of the Card Dispute that was lost.
          #
          #   @return [String]
          required :card_dispute_id, String

          # @!attribute explanation
          #   Why the Card Dispute was lost.
          #
          #   @return [String]
          required :explanation, String

          # @!attribute lost_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was lost.
          #
          #   @return [Time]
          required :lost_at, Time

          # @!attribute transaction_id
          #   The identifier of the Transaction that was created to debit the disputed funds from your account.
          #
          #   @return [String]
          required :transaction_id, String

          # @!parse
          #   # A Card Dispute Loss object. This field will be present in the JSON response if
          #   #   and only if `category` is equal to `card_dispute_loss`.
          #   #
          #   # @param card_dispute_id [String] The identifier of the Card Dispute that was lost.
          #   #
          #   # @param explanation [String] Why the Card Dispute was lost.
          #   #
          #   # @param lost_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   #   the Card Dispute was lost.
          #   #
          #   # @param transaction_id [String] The identifier of the Transaction that was created to debit the disputed funds
          #   #   from your account.
          #   #
          #   def initialize(card_dispute_id:, explanation:, lost_at:, transaction_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # card_refund => {
        #   id: String,
        #   amount: Integer,
        #   card_payment_id: String,
        #   cashback: Increase::Models::Transaction::Source::CardRefund::Cashback,
        #   currency: enum: Increase::Models::Transaction::Source::CardRefund::Currency,
        #   **_
        # }
        # ```
        class CardRefund < Increase::BaseModel
          # @!attribute id
          #   The Card Refund identifier.
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   The amount in the minor unit of the transaction's settlement currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute cashback
          #   Cashback debited for this transaction, if eligible. Cashback is paid out in aggregate, monthly.
          #
          #   @return [Increase::Models::Transaction::Source::CardRefund::Cashback, nil]
          required :cashback, -> { Increase::Models::Transaction::Source::CardRefund::Cashback }

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CardRefund::Currency }

          # @!attribute interchange
          #   Interchange assessed as a part of this transaciton.
          #
          #   @return [Increase::Models::Transaction::Source::CardRefund::Interchange, nil]
          required :interchange, -> { Increase::Models::Transaction::Source::CardRefund::Interchange }

          # @!attribute merchant_acceptor_id
          #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   The 4-digit MCC describing the merchant's business.
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   The city the merchant resides in.
          #
          #   @return [String]
          required :merchant_city, String

          # @!attribute merchant_country
          #   The country the merchant resides in.
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_name
          #   The name of the merchant.
          #
          #   @return [String]
          required :merchant_name, String

          # @!attribute merchant_postal_code
          #   The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          #
          #   @return [String, nil]
          required :merchant_postal_code, String

          # @!attribute merchant_state
          #   The state the merchant resides in.
          #
          #   @return [String, nil]
          required :merchant_state, String

          # @!attribute network_identifiers
          #   Network-specific identifiers for this refund.
          #
          #   @return [Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers }

          # @!attribute presentment_amount
          #   The amount in the minor unit of the transaction's presentment currency.
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's presentment currency.
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute purchase_details
          #   Additional details about the card purchase, such as tax and industry-specific fields.
          #
          #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails, nil]
          required :purchase_details,
                   -> {
                     Increase::Models::Transaction::Source::CardRefund::PurchaseDetails
                   }

          # @!attribute transaction_id
          #   The identifier of the Transaction associated with this Transaction.
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute type
          #   A constant representing the object's type. For this resource it will always be `card_refund`.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Type]
          required :type, enum: -> { Increase::Models::Transaction::Source::CardRefund::Type }

          # @!parse
          #   # A Card Refund object. This field will be present in the JSON response if and
          #   #   only if `category` is equal to `card_refund`.
          #   #
          #   # @param id [String] The Card Refund identifier.
          #   #
          #   # @param amount [Integer] The amount in the minor unit of the transaction's settlement currency. For
          #   #   dollars, for example, this is cents.
          #   #
          #   # @param card_payment_id [String] The ID of the Card Payment this transaction belongs to.
          #   #
          #   # @param cashback [Increase::Models::Transaction::Source::CardRefund::Cashback, nil] Cashback debited for this transaction, if eligible. Cashback is paid out in
          #   #   aggregate, monthly.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #   transaction's settlement currency.
          #   #
          #   # @param interchange [Increase::Models::Transaction::Source::CardRefund::Interchange, nil] Interchange assessed as a part of this transaciton.
          #   #
          #   # @param merchant_acceptor_id [String] The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   #   is transacting with.
          #   #
          #   # @param merchant_category_code [String] The 4-digit MCC describing the merchant's business.
          #   #
          #   # @param merchant_city [String] The city the merchant resides in.
          #   #
          #   # @param merchant_country [String] The country the merchant resides in.
          #   #
          #   # @param merchant_name [String] The name of the merchant.
          #   #
          #   # @param merchant_postal_code [String, nil] The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          #   #
          #   # @param merchant_state [String, nil] The state the merchant resides in.
          #   #
          #   # @param network_identifiers [Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers] Network-specific identifiers for this refund.
          #   #
          #   # @param presentment_amount [Integer] The amount in the minor unit of the transaction's presentment currency.
          #   #
          #   # @param presentment_currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #   transaction's presentment currency.
          #   #
          #   # @param purchase_details [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails, nil] Additional details about the card purchase, such as tax and industry-specific
          #   #   fields.
          #   #
          #   # @param transaction_id [String] The identifier of the Transaction associated with this Transaction.
          #   #
          #   # @param type [String] A constant representing the object's type. For this resource it will always be
          #   #   `card_refund`.
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

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # cashback => {
          #   amount: String,
          #   currency: enum: Increase::Models::Transaction::Source::CardRefund::Cashback::Currency
          # }
          # ```
          class Cashback < Increase::BaseModel
            # @!attribute amount
            #   The cashback amount given as a string containing a decimal number. The amount is a positive number if it will be credited to you (e.g., settlements) and a negative number if it will be debited (e.g., refunds).
            #
            #   @return [String]
            required :amount, String

            # @!attribute currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Cashback::Currency]
            required :currency,
                     enum: -> {
                       Increase::Models::Transaction::Source::CardRefund::Cashback::Currency
                     }

            # @!parse
            #   # Cashback debited for this transaction, if eligible. Cashback is paid out in
            #   #   aggregate, monthly.
            #   #
            #   # @param amount [String] The cashback amount given as a string containing a decimal number. The amount is
            #   #   a positive number if it will be credited to you (e.g., settlements) and a
            #   #   negative number if it will be debited (e.g., refunds).
            #   #
            #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            #   #
            #   def initialize(amount:, currency:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            #
            # @example
            # ```ruby
            # case currency
            # in :CAD
            #   # ...
            # in :CHF
            #   # ...
            # in :EUR
            #   # ...
            # in :GBP
            #   # ...
            # in :JPY
            #   # ...
            # in ...
            #   #...
            # end
            # ```
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

              finalize!
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end

          # @example
          # ```ruby
          # interchange => {
          #   amount: String,
          #   code: String,
          #   currency: enum: Increase::Models::Transaction::Source::CardRefund::Interchange::Currency
          # }
          # ```
          class Interchange < Increase::BaseModel
            # @!attribute amount
            #   The interchange amount given as a string containing a decimal number. The amount is a positive number if it is credited to Increase (e.g., settlements) and a negative number if it is debited (e.g., refunds).
            #
            #   @return [String]
            required :amount, String

            # @!attribute code
            #   The card network specific interchange code.
            #
            #   @return [String, nil]
            required :code, String

            # @!attribute currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency]
            required :currency,
                     enum: -> {
                       Increase::Models::Transaction::Source::CardRefund::Interchange::Currency
                     }

            # @!parse
            #   # Interchange assessed as a part of this transaciton.
            #   #
            #   # @param amount [String] The interchange amount given as a string containing a decimal number. The amount
            #   #   is a positive number if it is credited to Increase (e.g., settlements) and a
            #   #   negative number if it is debited (e.g., refunds).
            #   #
            #   # @param code [String, nil] The card network specific interchange code.
            #   #
            #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   #   reimbursement.
            #   #
            #   def initialize(amount:, code:, currency:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            #
            # @example
            # ```ruby
            # case currency
            # in :CAD
            #   # ...
            # in :CHF
            #   # ...
            # in :EUR
            #   # ...
            # in :GBP
            #   # ...
            # in :JPY
            #   # ...
            # in ...
            #   #...
            # end
            # ```
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

              finalize!
            end
          end

          # @example
          # ```ruby
          # network_identifiers => {
          #   acquirer_business_id: String,
          #   acquirer_reference_number: String,
          #   transaction_id: String
          # }
          # ```
          class NetworkIdentifiers < Increase::BaseModel
            # @!attribute acquirer_business_id
            #   A network assigned business ID that identifies the acquirer that processed this transaction.
            #
            #   @return [String]
            required :acquirer_business_id, String

            # @!attribute acquirer_reference_number
            #   A globally unique identifier for this settlement.
            #
            #   @return [String]
            required :acquirer_reference_number, String

            # @!attribute transaction_id
            #   A globally unique transaction identifier provided by the card network, used across multiple life-cycle requests.
            #
            #   @return [String, nil]
            required :transaction_id, String

            # @!parse
            #   # Network-specific identifiers for this refund.
            #   #
            #   # @param acquirer_business_id [String] A network assigned business ID that identifies the acquirer that processed this
            #   #   transaction.
            #   #
            #   # @param acquirer_reference_number [String] A globally unique identifier for this settlement.
            #   #
            #   # @param transaction_id [String, nil] A globally unique transaction identifier provided by the card network, used
            #   #   across multiple life-cycle requests.
            #   #
            #   def initialize(acquirer_business_id:, acquirer_reference_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end

          # @example
          # ```ruby
          # purchase_details => {
          #   car_rental: Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental,
          #   customer_reference_identifier: String,
          #   local_tax_amount: Integer,
          #   local_tax_currency: String,
          #   lodging: Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging,
          #   **_
          # }
          # ```
          class PurchaseDetails < Increase::BaseModel
            # @!attribute car_rental
            #   Fields specific to car rentals.
            #
            #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental, nil]
            required :car_rental,
                     -> {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental
                     }

            # @!attribute customer_reference_identifier
            #   An identifier from the merchant for the customer or consumer.
            #
            #   @return [String, nil]
            required :customer_reference_identifier, String

            # @!attribute local_tax_amount
            #   The state or provincial tax amount in minor units.
            #
            #   @return [Integer, nil]
            required :local_tax_amount, Integer

            # @!attribute local_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #
            #   @return [String, nil]
            required :local_tax_currency, String

            # @!attribute lodging
            #   Fields specific to lodging.
            #
            #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging, nil]
            required :lodging,
                     -> {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging
                     }

            # @!attribute national_tax_amount
            #   The national tax amount in minor units.
            #
            #   @return [Integer, nil]
            required :national_tax_amount, Integer

            # @!attribute national_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #
            #   @return [String, nil]
            required :national_tax_currency, String

            # @!attribute purchase_identifier
            #   An identifier from the merchant for the purchase to the issuer and cardholder.
            #
            #   @return [String, nil]
            required :purchase_identifier, String

            # @!attribute purchase_identifier_format
            #   The format of the purchase identifier.
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat, nil]
            required :purchase_identifier_format,
                     enum: -> {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat
                     }

            # @!attribute travel
            #   Fields specific to travel.
            #
            #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel, nil]
            required :travel,
                     -> {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel
                     }

            # @!parse
            #   # Additional details about the card purchase, such as tax and industry-specific
            #   #   fields.
            #   #
            #   # @param car_rental [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental, nil] Fields specific to car rentals.
            #   #
            #   # @param customer_reference_identifier [String, nil] An identifier from the merchant for the customer or consumer.
            #   #
            #   # @param local_tax_amount [Integer, nil] The state or provincial tax amount in minor units.
            #   #
            #   # @param local_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   #   assessed.
            #   #
            #   # @param lodging [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging, nil] Fields specific to lodging.
            #   #
            #   # @param national_tax_amount [Integer, nil] The national tax amount in minor units.
            #   #
            #   # @param national_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   #   assessed.
            #   #
            #   # @param purchase_identifier [String, nil] An identifier from the merchant for the purchase to the issuer and cardholder.
            #   #
            #   # @param purchase_identifier_format [String, nil] The format of the purchase identifier.
            #   #
            #   # @param travel [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel, nil] Fields specific to travel.
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

            # def initialize: (Hash | Increase::BaseModel) -> void

            # @example
            # ```ruby
            # car_rental => {
            #   car_class_code: String,
            #   checkout_date: Date,
            #   daily_rental_rate_amount: Integer,
            #   daily_rental_rate_currency: String,
            #   days_rented: Integer,
            #   **_
            # }
            # ```
            class CarRental < Increase::BaseModel
              # @!attribute car_class_code
              #   Code indicating the vehicle's class.
              #
              #   @return [String, nil]
              required :car_class_code, String

              # @!attribute checkout_date
              #   Date the customer picked up the car or, in the case of a no-show or pre-pay transaction, the scheduled pick up date.
              #
              #   @return [Date, nil]
              required :checkout_date, Date

              # @!attribute daily_rental_rate_amount
              #   Daily rate being charged for the vehicle.
              #
              #   @return [Integer, nil]
              required :daily_rental_rate_amount, Integer

              # @!attribute daily_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental rate.
              #
              #   @return [String, nil]
              required :daily_rental_rate_currency, String

              # @!attribute days_rented
              #   Number of days the vehicle was rented.
              #
              #   @return [Integer, nil]
              required :days_rented, Integer

              # @!attribute extra_charges
              #   Additional charges (gas, late fee, etc.) being billed.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges
                       }

              # @!attribute fuel_charges_amount
              #   Fuel charges for the vehicle.
              #
              #   @return [Integer, nil]
              required :fuel_charges_amount, Integer

              # @!attribute fuel_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges assessed.
              #
              #   @return [String, nil]
              required :fuel_charges_currency, String

              # @!attribute insurance_charges_amount
              #   Any insurance being charged for the vehicle.
              #
              #   @return [Integer, nil]
              required :insurance_charges_amount, Integer

              # @!attribute insurance_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance charges assessed.
              #
              #   @return [String, nil]
              required :insurance_charges_currency, String

              # @!attribute no_show_indicator
              #   An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator
                       }

              # @!attribute one_way_drop_off_charges_amount
              #   Charges for returning the vehicle at a different location than where it was picked up.
              #
              #   @return [Integer, nil]
              required :one_way_drop_off_charges_amount, Integer

              # @!attribute one_way_drop_off_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way drop-off charges assessed.
              #
              #   @return [String, nil]
              required :one_way_drop_off_charges_currency, String

              # @!attribute renter_name
              #   Name of the person renting the vehicle.
              #
              #   @return [String, nil]
              required :renter_name, String

              # @!attribute weekly_rental_rate_amount
              #   Weekly rate being charged for the vehicle.
              #
              #   @return [Integer, nil]
              required :weekly_rental_rate_amount, Integer

              # @!attribute weekly_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly rental rate.
              #
              #   @return [String, nil]
              required :weekly_rental_rate_currency, String

              # @!parse
              #   # Fields specific to car rentals.
              #   #
              #   # @param car_class_code [String, nil] Code indicating the vehicle's class.
              #   #
              #   # @param checkout_date [String, nil] Date the customer picked up the car or, in the case of a no-show or pre-pay
              #   #   transaction, the scheduled pick up date.
              #   #
              #   # @param daily_rental_rate_amount [Integer, nil] Daily rate being charged for the vehicle.
              #   #
              #   # @param daily_rental_rate_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental
              #   #   rate.
              #   #
              #   # @param days_rented [Integer, nil] Number of days the vehicle was rented.
              #   #
              #   # @param extra_charges [String, nil] Additional charges (gas, late fee, etc.) being billed.
              #   #
              #   # @param fuel_charges_amount [Integer, nil] Fuel charges for the vehicle.
              #   #
              #   # @param fuel_charges_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges
              #   #   assessed.
              #   #
              #   # @param insurance_charges_amount [Integer, nil] Any insurance being charged for the vehicle.
              #   #
              #   # @param insurance_charges_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance
              #   #   charges assessed.
              #   #
              #   # @param no_show_indicator [String, nil] An indicator that the cardholder is being billed for a reserved vehicle that was
              #   #   not actually rented (that is, a "no-show" charge).
              #   #
              #   # @param one_way_drop_off_charges_amount [Integer, nil] Charges for returning the vehicle at a different location than where it was
              #   #   picked up.
              #   #
              #   # @param one_way_drop_off_charges_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way
              #   #   drop-off charges assessed.
              #   #
              #   # @param renter_name [String, nil] Name of the person renting the vehicle.
              #   #
              #   # @param weekly_rental_rate_amount [Integer, nil] Weekly rate being charged for the vehicle.
              #   #
              #   # @param weekly_rental_rate_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly
              #   #   rental rate.
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

              # def initialize: (Hash | Increase::BaseModel) -> void

              # Additional charges (gas, late fee, etc.) being billed.
              #
              # @example
              # ```ruby
              # case extra_charges
              # in :no_extra_charge
              #   # ...
              # in :gas
              #   # ...
              # in :extra_mileage
              #   # ...
              # in :late_return
              #   # ...
              # in :one_way_service_fee
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class ExtraCharges < Increase::Enum
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
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              #
              # @example
              # ```ruby
              # case no_show_indicator
              # in :not_applicable
              #   # ...
              # in :no_show_for_specialized_vehicle
              #   # ...
              # end
              # ```
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = :no_show_for_specialized_vehicle

                finalize!
              end
            end

            # @example
            # ```ruby
            # lodging => {
            #   check_in_date: Date,
            #   daily_room_rate_amount: Integer,
            #   daily_room_rate_currency: String,
            #   extra_charges: enum: Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges,
            #   folio_cash_advances_amount: Integer,
            #   **_
            # }
            # ```
            class Lodging < Increase::BaseModel
              # @!attribute check_in_date
              #   Date the customer checked in.
              #
              #   @return [Date, nil]
              required :check_in_date, Date

              # @!attribute daily_room_rate_amount
              #   Daily rate being charged for the room.
              #
              #   @return [Integer, nil]
              required :daily_room_rate_amount, Integer

              # @!attribute daily_room_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room rate.
              #
              #   @return [String, nil]
              required :daily_room_rate_currency, String

              # @!attribute extra_charges
              #   Additional charges (phone, late check-out, etc.) being billed.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges
                       }

              # @!attribute folio_cash_advances_amount
              #   Folio cash advances for the room.
              #
              #   @return [Integer, nil]
              required :folio_cash_advances_amount, Integer

              # @!attribute folio_cash_advances_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash advances.
              #
              #   @return [String, nil]
              required :folio_cash_advances_currency, String

              # @!attribute food_beverage_charges_amount
              #   Food and beverage charges for the room.
              #
              #   @return [Integer, nil]
              required :food_beverage_charges_amount, Integer

              # @!attribute food_beverage_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and beverage charges.
              #
              #   @return [String, nil]
              required :food_beverage_charges_currency, String

              # @!attribute no_show_indicator
              #   Indicator that the cardholder is being billed for a reserved room that was not actually used.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator
                       }

              # @!attribute prepaid_expenses_amount
              #   Prepaid expenses being charged for the room.
              #
              #   @return [Integer, nil]
              required :prepaid_expenses_amount, Integer

              # @!attribute prepaid_expenses_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid expenses.
              #
              #   @return [String, nil]
              required :prepaid_expenses_currency, String

              # @!attribute room_nights
              #   Number of nights the room was rented.
              #
              #   @return [Integer, nil]
              required :room_nights, Integer

              # @!attribute total_room_tax_amount
              #   Total room tax being charged.
              #
              #   @return [Integer, nil]
              required :total_room_tax_amount, Integer

              # @!attribute total_room_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room tax.
              #
              #   @return [String, nil]
              required :total_room_tax_currency, String

              # @!attribute total_tax_amount
              #   Total tax being charged for the room.
              #
              #   @return [Integer, nil]
              required :total_tax_amount, Integer

              # @!attribute total_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax assessed.
              #
              #   @return [String, nil]
              required :total_tax_currency, String

              # @!parse
              #   # Fields specific to lodging.
              #   #
              #   # @param check_in_date [String, nil] Date the customer checked in.
              #   #
              #   # @param daily_room_rate_amount [Integer, nil] Daily rate being charged for the room.
              #   #
              #   # @param daily_room_rate_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room
              #   #   rate.
              #   #
              #   # @param extra_charges [String, nil] Additional charges (phone, late check-out, etc.) being billed.
              #   #
              #   # @param folio_cash_advances_amount [Integer, nil] Folio cash advances for the room.
              #   #
              #   # @param folio_cash_advances_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash
              #   #   advances.
              #   #
              #   # @param food_beverage_charges_amount [Integer, nil] Food and beverage charges for the room.
              #   #
              #   # @param food_beverage_charges_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and
              #   #   beverage charges.
              #   #
              #   # @param no_show_indicator [String, nil] Indicator that the cardholder is being billed for a reserved room that was not
              #   #   actually used.
              #   #
              #   # @param prepaid_expenses_amount [Integer, nil] Prepaid expenses being charged for the room.
              #   #
              #   # @param prepaid_expenses_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid
              #   #   expenses.
              #   #
              #   # @param room_nights [Integer, nil] Number of nights the room was rented.
              #   #
              #   # @param total_room_tax_amount [Integer, nil] Total room tax being charged.
              #   #
              #   # @param total_room_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room
              #   #   tax.
              #   #
              #   # @param total_tax_amount [Integer, nil] Total tax being charged for the room.
              #   #
              #   # @param total_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax
              #   #   assessed.
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

              # def initialize: (Hash | Increase::BaseModel) -> void

              # Additional charges (phone, late check-out, etc.) being billed.
              #
              # @example
              # ```ruby
              # case extra_charges
              # in :no_extra_charge
              #   # ...
              # in :restaurant
              #   # ...
              # in :gift_shop
              #   # ...
              # in :mini_bar
              #   # ...
              # in :telephone
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class ExtraCharges < Increase::Enum
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
              end

              # Indicator that the cardholder is being billed for a reserved room that was not actually used.
              #
              # @example
              # ```ruby
              # case no_show_indicator
              # in :not_applicable
              #   # ...
              # in :no_show
              #   # ...
              # end
              # ```
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show
                NO_SHOW = :no_show

                finalize!
              end
            end

            # The format of the purchase identifier.
            #
            # @example
            # ```ruby
            # case purchase_identifier_format
            # in :free_text
            #   # ...
            # in :order_number
            #   # ...
            # in :rental_agreement_number
            #   # ...
            # in :hotel_folio_number
            #   # ...
            # in :invoice_number
            #   # ...
            # end
            # ```
            class PurchaseIdentifierFormat < Increase::Enum
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
            end

            # @example
            # ```ruby
            # travel => {
            #   ancillary: Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary,
            #   computerized_reservation_system: String,
            #   credit_reason_indicator: enum: Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator,
            #   departure_date: Date,
            #   origination_city_airport_code: String,
            #   **_
            # }
            # ```
            class Travel < Increase::BaseModel
              # @!attribute ancillary
              #   Ancillary purchases in addition to the airfare.
              #
              #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary, nil]
              required :ancillary,
                       -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary }

              # @!attribute computerized_reservation_system
              #   Indicates the computerized reservation system used to book the ticket.
              #
              #   @return [String, nil]
              required :computerized_reservation_system, String

              # @!attribute credit_reason_indicator
              #   Indicates the reason for a credit to the cardholder.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator, nil]
              required :credit_reason_indicator,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator
                       }

              # @!attribute departure_date
              #   Date of departure.
              #
              #   @return [Date, nil]
              required :departure_date, Date

              # @!attribute origination_city_airport_code
              #   Code for the originating city or airport.
              #
              #   @return [String, nil]
              required :origination_city_airport_code, String

              # @!attribute passenger_name
              #   Name of the passenger.
              #
              #   @return [String, nil]
              required :passenger_name, String

              # @!attribute restricted_ticket_indicator
              #   Indicates whether this ticket is non-refundable.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator, nil]
              required :restricted_ticket_indicator,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator
                       }

              # @!attribute ticket_change_indicator
              #   Indicates why a ticket was changed.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator, nil]
              required :ticket_change_indicator,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator
                       }

              # @!attribute ticket_number
              #   Ticket number.
              #
              #   @return [String, nil]
              required :ticket_number, String

              # @!attribute travel_agency_code
              #   Code for the travel agency if the ticket was issued by a travel agency.
              #
              #   @return [String, nil]
              required :travel_agency_code, String

              # @!attribute travel_agency_name
              #   Name of the travel agency if the ticket was issued by a travel agency.
              #
              #   @return [String, nil]
              required :travel_agency_name, String

              # @!attribute trip_legs
              #   Fields specific to each leg of the journey.
              #
              #   @return [Array<Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg>, nil]
              required :trip_legs,
                       -> {
                         Increase::ArrayOf[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg]
                       }

              # @!parse
              #   # Fields specific to travel.
              #   #
              #   # @param ancillary [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary, nil] Ancillary purchases in addition to the airfare.
              #   #
              #   # @param computerized_reservation_system [String, nil] Indicates the computerized reservation system used to book the ticket.
              #   #
              #   # @param credit_reason_indicator [String, nil] Indicates the reason for a credit to the cardholder.
              #   #
              #   # @param departure_date [String, nil] Date of departure.
              #   #
              #   # @param origination_city_airport_code [String, nil] Code for the originating city or airport.
              #   #
              #   # @param passenger_name [String, nil] Name of the passenger.
              #   #
              #   # @param restricted_ticket_indicator [String, nil] Indicates whether this ticket is non-refundable.
              #   #
              #   # @param ticket_change_indicator [String, nil] Indicates why a ticket was changed.
              #   #
              #   # @param ticket_number [String, nil] Ticket number.
              #   #
              #   # @param travel_agency_code [String, nil] Code for the travel agency if the ticket was issued by a travel agency.
              #   #
              #   # @param travel_agency_name [String, nil] Name of the travel agency if the ticket was issued by a travel agency.
              #   #
              #   # @param trip_legs [Array<Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg>, nil] Fields specific to each leg of the journey.
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

              # def initialize: (Hash | Increase::BaseModel) -> void

              # @example
              # ```ruby
              # ancillary => {
              #   connected_ticket_document_number: String,
              #   credit_reason_indicator: enum: Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator,
              #   passenger_name_or_description: String,
              #   services: -> { Increase::ArrayOf[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service] === _1 },
              #   ticket_document_number: String
              # }
              # ```
              class Ancillary < Increase::BaseModel
                # @!attribute connected_ticket_document_number
                #   If this purchase has a connection or relationship to another purchase, such as a baggage fee for a passenger transport ticket, this field should contain the ticket document number for the other purchase.
                #
                #   @return [String, nil]
                required :connected_ticket_document_number, String

                # @!attribute credit_reason_indicator
                #   Indicates the reason for a credit to the cardholder.
                #
                #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator, nil]
                required :credit_reason_indicator,
                         enum: -> {
                           Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator
                         }

                # @!attribute passenger_name_or_description
                #   Name of the passenger or description of the ancillary purchase.
                #
                #   @return [String, nil]
                required :passenger_name_or_description, String

                # @!attribute services
                #   Additional travel charges, such as baggage fees.
                #
                #   @return [Array<Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         -> {
                           Increase::ArrayOf[Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service]
                         }

                # @!attribute ticket_document_number
                #   Ticket document number.
                #
                #   @return [String, nil]
                required :ticket_document_number, String

                # @!parse
                #   # Ancillary purchases in addition to the airfare.
                #   #
                #   # @param connected_ticket_document_number [String, nil] If this purchase has a connection or relationship to another purchase, such as a
                #   #   baggage fee for a passenger transport ticket, this field should contain the
                #   #   ticket document number for the other purchase.
                #   #
                #   # @param credit_reason_indicator [String, nil] Indicates the reason for a credit to the cardholder.
                #   #
                #   # @param passenger_name_or_description [String, nil] Name of the passenger or description of the ancillary purchase.
                #   #
                #   # @param services [Array<Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service>] Additional travel charges, such as baggage fees.
                #   #
                #   # @param ticket_document_number [String, nil] Ticket document number.
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

                # def initialize: (Hash | Increase::BaseModel) -> void

                # Indicates the reason for a credit to the cardholder.
                #
                # @example
                # ```ruby
                # case credit_reason_indicator
                # in :no_credit
                #   # ...
                # in :passenger_transport_ancillary_purchase_cancellation
                #   # ...
                # in :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation
                #   # ...
                # in :other
                #   # ...
                # end
                # ```
                class CreditReasonIndicator < Increase::Enum
                  # No credit
                  NO_CREDIT = :no_credit

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                  # Other
                  OTHER = :other

                  finalize!
                end

                # @example
                # ```ruby
                # service => {
                #   category: enum: Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category,
                #   sub_category: String
                # }
                # ```
                class Service < Increase::BaseModel
                  # @!attribute category
                  #   Category of the ancillary service.
                  #
                  #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category, nil]
                  required :category,
                           enum: -> {
                             Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category
                           }

                  # @!attribute sub_category
                  #   Sub-category of the ancillary service, free-form.
                  #
                  #   @return [String, nil]
                  required :sub_category, String

                  # @!parse
                  #   # @param category [String, nil] Category of the ancillary service.
                  #   #
                  #   # @param sub_category [String, nil] Sub-category of the ancillary service, free-form.
                  #   #
                  #   def initialize(category:, sub_category:, **) = super

                  # def initialize: (Hash | Increase::BaseModel) -> void

                  # Category of the ancillary service.
                  #
                  # @example
                  # ```ruby
                  # case category
                  # in :none
                  #   # ...
                  # in :bundled_service
                  #   # ...
                  # in :baggage_fee
                  #   # ...
                  # in :change_fee
                  #   # ...
                  # in :cargo
                  #   # ...
                  # in ...
                  #   #...
                  # end
                  # ```
                  class Category < Increase::Enum
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
                  end
                end
              end

              # Indicates the reason for a credit to the cardholder.
              #
              # @example
              # ```ruby
              # case credit_reason_indicator
              # in :no_credit
              #   # ...
              # in :passenger_transport_ancillary_purchase_cancellation
              #   # ...
              # in :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation
              #   # ...
              # in :airline_ticket_cancellation
              #   # ...
              # in :other
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class CreditReasonIndicator < Increase::Enum
                # No credit
                NO_CREDIT = :no_credit

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = :airline_ticket_cancellation

                # Other
                OTHER = :other

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = :partial_refund_of_airline_ticket

                finalize!
              end

              # Indicates whether this ticket is non-refundable.
              #
              # @example
              # ```ruby
              # case restricted_ticket_indicator
              # in :no_restrictions
              #   # ...
              # in :restricted_non_refundable_ticket
              #   # ...
              # end
              # ```
              class RestrictedTicketIndicator < Increase::Enum
                # No restrictions
                NO_RESTRICTIONS = :no_restrictions

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = :restricted_non_refundable_ticket

                finalize!
              end

              # Indicates why a ticket was changed.
              #
              # @example
              # ```ruby
              # case ticket_change_indicator
              # in :none
              #   # ...
              # in :change_to_existing_ticket
              #   # ...
              # in :new_ticket
              #   # ...
              # end
              # ```
              class TicketChangeIndicator < Increase::Enum
                # None
                NONE = :none

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = :change_to_existing_ticket

                # New ticket
                NEW_TICKET = :new_ticket

                finalize!
              end

              # @example
              # ```ruby
              # trip_leg => {
              #   carrier_code: String,
              #   destination_city_airport_code: String,
              #   fare_basis_code: String,
              #   flight_number: String,
              #   service_class: String
              # }
              # ```
              class TripLeg < Increase::BaseModel
                # @!attribute carrier_code
                #   Carrier code (e.g., United Airlines, Jet Blue, etc.).
                #
                #   @return [String, nil]
                required :carrier_code, String

                # @!attribute destination_city_airport_code
                #   Code for the destination city or airport.
                #
                #   @return [String, nil]
                required :destination_city_airport_code, String

                # @!attribute fare_basis_code
                #   Fare basis code.
                #
                #   @return [String, nil]
                required :fare_basis_code, String

                # @!attribute flight_number
                #   Flight number.
                #
                #   @return [String, nil]
                required :flight_number, String

                # @!attribute service_class
                #   Service class (e.g., first class, business class, etc.).
                #
                #   @return [String, nil]
                required :service_class, String

                # @!attribute stop_over_code
                #   Indicates whether a stopover is allowed on this ticket.
                #
                #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode, nil]
                required :stop_over_code,
                         enum: -> {
                           Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode
                         }

                # @!parse
                #   # @param carrier_code [String, nil] Carrier code (e.g., United Airlines, Jet Blue, etc.).
                #   #
                #   # @param destination_city_airport_code [String, nil] Code for the destination city or airport.
                #   #
                #   # @param fare_basis_code [String, nil] Fare basis code.
                #   #
                #   # @param flight_number [String, nil] Flight number.
                #   #
                #   # @param service_class [String, nil] Service class (e.g., first class, business class, etc.).
                #   #
                #   # @param stop_over_code [String, nil] Indicates whether a stopover is allowed on this ticket.
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

                # def initialize: (Hash | Increase::BaseModel) -> void

                # Indicates whether a stopover is allowed on this ticket.
                #
                # @example
                # ```ruby
                # case stop_over_code
                # in :none
                #   # ...
                # in :stop_over_allowed
                #   # ...
                # in :stop_over_not_allowed
                #   # ...
                # end
                # ```
                class StopOverCode < Increase::Enum
                  # None
                  NONE = :none

                  # Stop over allowed
                  STOP_OVER_ALLOWED = :stop_over_allowed

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = :stop_over_not_allowed

                  finalize!
                end
              end
            end
          end

          # A constant representing the object's type. For this resource it will always be `card_refund`.
          #
          # @example
          # ```ruby
          # case type
          # in :card_refund
          #   # ...
          # end
          # ```
          class Type < Increase::Enum
            CARD_REFUND = :card_refund

            finalize!
          end
        end

        # @example
        # ```ruby
        # card_revenue_payment => {
        #   amount: Integer,
        #   currency: enum: Increase::Models::Transaction::Source::CardRevenuePayment::Currency,
        #   period_end: Time,
        #   period_start: Time,
        #   transacted_on_account_id: String
        # }
        # ```
        class CardRevenuePayment < Increase::BaseModel
          # @!attribute amount
          #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CardRevenuePayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CardRevenuePayment::Currency }

          # @!attribute period_end
          #   The end of the period for which this transaction paid interest.
          #
          #   @return [Time]
          required :period_end, Time

          # @!attribute period_start
          #   The start of the period for which this transaction paid interest.
          #
          #   @return [Time]
          required :period_start, Time

          # @!attribute transacted_on_account_id
          #   The account the card belonged to.
          #
          #   @return [String, nil]
          required :transacted_on_account_id, String

          # @!parse
          #   # A Card Revenue Payment object. This field will be present in the JSON response
          #   #   if and only if `category` is equal to `card_revenue_payment`.
          #   #
          #   # @param amount [Integer] The amount in the minor unit of the transaction's currency. For dollars, for
          #   #   example, this is cents.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   #   currency.
          #   #
          #   # @param period_end [String] The end of the period for which this transaction paid interest.
          #   #
          #   # @param period_start [String] The start of the period for which this transaction paid interest.
          #   #
          #   # @param transacted_on_account_id [String, nil] The account the card belonged to.
          #   #
          #   def initialize(amount:, currency:, period_end:, period_start:, transacted_on_account_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end
        end

        # @example
        # ```ruby
        # card_settlement => {
        #   id: String,
        #   amount: Integer,
        #   card_authorization: String,
        #   card_payment_id: String,
        #   cashback: Increase::Models::Transaction::Source::CardSettlement::Cashback,
        #   **_
        # }
        # ```
        class CardSettlement < Increase::BaseModel
          # @!attribute id
          #   The Card Settlement identifier.
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   The amount in the minor unit of the transaction's settlement currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_authorization
          #   The Card Authorization that was created prior to this Card Settlement, if one exists.
          #
          #   @return [String, nil]
          required :card_authorization, String

          # @!attribute card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute cashback
          #   Cashback earned on this transaction, if eligible. Cashback is paid out in aggregate, monthly.
          #
          #   @return [Increase::Models::Transaction::Source::CardSettlement::Cashback, nil]
          required :cashback, -> { Increase::Models::Transaction::Source::CardSettlement::Cashback }

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CardSettlement::Currency }

          # @!attribute interchange
          #   Interchange assessed as a part of this transaction.
          #
          #   @return [Increase::Models::Transaction::Source::CardSettlement::Interchange, nil]
          required :interchange, -> { Increase::Models::Transaction::Source::CardSettlement::Interchange }

          # @!attribute merchant_acceptor_id
          #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   The 4-digit MCC describing the merchant's business.
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   The city the merchant resides in.
          #
          #   @return [String]
          required :merchant_city, String

          # @!attribute merchant_country
          #   The country the merchant resides in.
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_name
          #   The name of the merchant.
          #
          #   @return [String]
          required :merchant_name, String

          # @!attribute merchant_postal_code
          #   The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          #
          #   @return [String, nil]
          required :merchant_postal_code, String

          # @!attribute merchant_state
          #   The state the merchant resides in.
          #
          #   @return [String, nil]
          required :merchant_state, String

          # @!attribute network_identifiers
          #   Network-specific identifiers for this refund.
          #
          #   @return [Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers }

          # @!attribute pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Transaction.
          #
          #   @return [String, nil]
          required :pending_transaction_id, String

          # @!attribute presentment_amount
          #   The amount in the minor unit of the transaction's presentment currency.
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's presentment currency.
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute purchase_details
          #   Additional details about the card purchase, such as tax and industry-specific fields.
          #
          #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails, nil]
          required :purchase_details,
                   -> {
                     Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails
                   }

          # @!attribute transaction_id
          #   The identifier of the Transaction associated with this Transaction.
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute type
          #   A constant representing the object's type. For this resource it will always be `card_settlement`.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Type]
          required :type, enum: -> { Increase::Models::Transaction::Source::CardSettlement::Type }

          # @!parse
          #   # A Card Settlement object. This field will be present in the JSON response if and
          #   #   only if `category` is equal to `card_settlement`.
          #   #
          #   # @param id [String] The Card Settlement identifier.
          #   #
          #   # @param amount [Integer] The amount in the minor unit of the transaction's settlement currency. For
          #   #   dollars, for example, this is cents.
          #   #
          #   # @param card_authorization [String, nil] The Card Authorization that was created prior to this Card Settlement, if one
          #   #   exists.
          #   #
          #   # @param card_payment_id [String] The ID of the Card Payment this transaction belongs to.
          #   #
          #   # @param cashback [Increase::Models::Transaction::Source::CardSettlement::Cashback, nil] Cashback earned on this transaction, if eligible. Cashback is paid out in
          #   #   aggregate, monthly.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #   transaction's settlement currency.
          #   #
          #   # @param interchange [Increase::Models::Transaction::Source::CardSettlement::Interchange, nil] Interchange assessed as a part of this transaction.
          #   #
          #   # @param merchant_acceptor_id [String] The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   #   is transacting with.
          #   #
          #   # @param merchant_category_code [String] The 4-digit MCC describing the merchant's business.
          #   #
          #   # @param merchant_city [String] The city the merchant resides in.
          #   #
          #   # @param merchant_country [String] The country the merchant resides in.
          #   #
          #   # @param merchant_name [String] The name of the merchant.
          #   #
          #   # @param merchant_postal_code [String, nil] The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          #   #
          #   # @param merchant_state [String, nil] The state the merchant resides in.
          #   #
          #   # @param network_identifiers [Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers] Network-specific identifiers for this refund.
          #   #
          #   # @param pending_transaction_id [String, nil] The identifier of the Pending Transaction associated with this Transaction.
          #   #
          #   # @param presentment_amount [Integer] The amount in the minor unit of the transaction's presentment currency.
          #   #
          #   # @param presentment_currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #   transaction's presentment currency.
          #   #
          #   # @param purchase_details [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails, nil] Additional details about the card purchase, such as tax and industry-specific
          #   #   fields.
          #   #
          #   # @param transaction_id [String] The identifier of the Transaction associated with this Transaction.
          #   #
          #   # @param type [String] A constant representing the object's type. For this resource it will always be
          #   #   `card_settlement`.
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

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # cashback => {
          #   amount: String,
          #   currency: enum: Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency
          # }
          # ```
          class Cashback < Increase::BaseModel
            # @!attribute amount
            #   The cashback amount given as a string containing a decimal number. The amount is a positive number if it will be credited to you (e.g., settlements) and a negative number if it will be debited (e.g., refunds).
            #
            #   @return [String]
            required :amount, String

            # @!attribute currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency]
            required :currency,
                     enum: -> {
                       Increase::Models::Transaction::Source::CardSettlement::Cashback::Currency
                     }

            # @!parse
            #   # Cashback earned on this transaction, if eligible. Cashback is paid out in
            #   #   aggregate, monthly.
            #   #
            #   # @param amount [String] The cashback amount given as a string containing a decimal number. The amount is
            #   #   a positive number if it will be credited to you (e.g., settlements) and a
            #   #   negative number if it will be debited (e.g., refunds).
            #   #
            #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            #   #
            #   def initialize(amount:, currency:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the cashback.
            #
            # @example
            # ```ruby
            # case currency
            # in :CAD
            #   # ...
            # in :CHF
            #   # ...
            # in :EUR
            #   # ...
            # in :GBP
            #   # ...
            # in :JPY
            #   # ...
            # in ...
            #   #...
            # end
            # ```
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

              finalize!
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end

          # @example
          # ```ruby
          # interchange => {
          #   amount: String,
          #   code: String,
          #   currency: enum: Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency
          # }
          # ```
          class Interchange < Increase::BaseModel
            # @!attribute amount
            #   The interchange amount given as a string containing a decimal number. The amount is a positive number if it is credited to Increase (e.g., settlements) and a negative number if it is debited (e.g., refunds).
            #
            #   @return [String]
            required :amount, String

            # @!attribute code
            #   The card network specific interchange code.
            #
            #   @return [String, nil]
            required :code, String

            # @!attribute currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency]
            required :currency,
                     enum: -> { Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency }

            # @!parse
            #   # Interchange assessed as a part of this transaction.
            #   #
            #   # @param amount [String] The interchange amount given as a string containing a decimal number. The amount
            #   #   is a positive number if it is credited to Increase (e.g., settlements) and a
            #   #   negative number if it is debited (e.g., refunds).
            #   #
            #   # @param code [String, nil] The card network specific interchange code.
            #   #
            #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   #   reimbursement.
            #   #
            #   def initialize(amount:, code:, currency:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            #
            # @example
            # ```ruby
            # case currency
            # in :CAD
            #   # ...
            # in :CHF
            #   # ...
            # in :EUR
            #   # ...
            # in :GBP
            #   # ...
            # in :JPY
            #   # ...
            # in ...
            #   #...
            # end
            # ```
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

              finalize!
            end
          end

          # @example
          # ```ruby
          # network_identifiers => {
          #   acquirer_business_id: String,
          #   acquirer_reference_number: String,
          #   transaction_id: String
          # }
          # ```
          class NetworkIdentifiers < Increase::BaseModel
            # @!attribute acquirer_business_id
            #   A network assigned business ID that identifies the acquirer that processed this transaction.
            #
            #   @return [String]
            required :acquirer_business_id, String

            # @!attribute acquirer_reference_number
            #   A globally unique identifier for this settlement.
            #
            #   @return [String]
            required :acquirer_reference_number, String

            # @!attribute transaction_id
            #   A globally unique transaction identifier provided by the card network, used across multiple life-cycle requests.
            #
            #   @return [String, nil]
            required :transaction_id, String

            # @!parse
            #   # Network-specific identifiers for this refund.
            #   #
            #   # @param acquirer_business_id [String] A network assigned business ID that identifies the acquirer that processed this
            #   #   transaction.
            #   #
            #   # @param acquirer_reference_number [String] A globally unique identifier for this settlement.
            #   #
            #   # @param transaction_id [String, nil] A globally unique transaction identifier provided by the card network, used
            #   #   across multiple life-cycle requests.
            #   #
            #   def initialize(acquirer_business_id:, acquirer_reference_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void
          end

          # @example
          # ```ruby
          # purchase_details => {
          #   car_rental: Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental,
          #   customer_reference_identifier: String,
          #   local_tax_amount: Integer,
          #   local_tax_currency: String,
          #   lodging: Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging,
          #   **_
          # }
          # ```
          class PurchaseDetails < Increase::BaseModel
            # @!attribute car_rental
            #   Fields specific to car rentals.
            #
            #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental, nil]
            required :car_rental,
                     -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental }

            # @!attribute customer_reference_identifier
            #   An identifier from the merchant for the customer or consumer.
            #
            #   @return [String, nil]
            required :customer_reference_identifier, String

            # @!attribute local_tax_amount
            #   The state or provincial tax amount in minor units.
            #
            #   @return [Integer, nil]
            required :local_tax_amount, Integer

            # @!attribute local_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #
            #   @return [String, nil]
            required :local_tax_currency, String

            # @!attribute lodging
            #   Fields specific to lodging.
            #
            #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging, nil]
            required :lodging,
                     -> {
                       Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging
                     }

            # @!attribute national_tax_amount
            #   The national tax amount in minor units.
            #
            #   @return [Integer, nil]
            required :national_tax_amount, Integer

            # @!attribute national_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #
            #   @return [String, nil]
            required :national_tax_currency, String

            # @!attribute purchase_identifier
            #   An identifier from the merchant for the purchase to the issuer and cardholder.
            #
            #   @return [String, nil]
            required :purchase_identifier, String

            # @!attribute purchase_identifier_format
            #   The format of the purchase identifier.
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat, nil]
            required :purchase_identifier_format,
                     enum: -> {
                       Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat
                     }

            # @!attribute travel
            #   Fields specific to travel.
            #
            #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel, nil]
            required :travel,
                     -> {
                       Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel
                     }

            # @!parse
            #   # Additional details about the card purchase, such as tax and industry-specific
            #   #   fields.
            #   #
            #   # @param car_rental [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental, nil] Fields specific to car rentals.
            #   #
            #   # @param customer_reference_identifier [String, nil] An identifier from the merchant for the customer or consumer.
            #   #
            #   # @param local_tax_amount [Integer, nil] The state or provincial tax amount in minor units.
            #   #
            #   # @param local_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   #   assessed.
            #   #
            #   # @param lodging [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging, nil] Fields specific to lodging.
            #   #
            #   # @param national_tax_amount [Integer, nil] The national tax amount in minor units.
            #   #
            #   # @param national_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   #   assessed.
            #   #
            #   # @param purchase_identifier [String, nil] An identifier from the merchant for the purchase to the issuer and cardholder.
            #   #
            #   # @param purchase_identifier_format [String, nil] The format of the purchase identifier.
            #   #
            #   # @param travel [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel, nil] Fields specific to travel.
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

            # def initialize: (Hash | Increase::BaseModel) -> void

            # @example
            # ```ruby
            # car_rental => {
            #   car_class_code: String,
            #   checkout_date: Date,
            #   daily_rental_rate_amount: Integer,
            #   daily_rental_rate_currency: String,
            #   days_rented: Integer,
            #   **_
            # }
            # ```
            class CarRental < Increase::BaseModel
              # @!attribute car_class_code
              #   Code indicating the vehicle's class.
              #
              #   @return [String, nil]
              required :car_class_code, String

              # @!attribute checkout_date
              #   Date the customer picked up the car or, in the case of a no-show or pre-pay transaction, the scheduled pick up date.
              #
              #   @return [Date, nil]
              required :checkout_date, Date

              # @!attribute daily_rental_rate_amount
              #   Daily rate being charged for the vehicle.
              #
              #   @return [Integer, nil]
              required :daily_rental_rate_amount, Integer

              # @!attribute daily_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental rate.
              #
              #   @return [String, nil]
              required :daily_rental_rate_currency, String

              # @!attribute days_rented
              #   Number of days the vehicle was rented.
              #
              #   @return [Integer, nil]
              required :days_rented, Integer

              # @!attribute extra_charges
              #   Additional charges (gas, late fee, etc.) being billed.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges
                       }

              # @!attribute fuel_charges_amount
              #   Fuel charges for the vehicle.
              #
              #   @return [Integer, nil]
              required :fuel_charges_amount, Integer

              # @!attribute fuel_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges assessed.
              #
              #   @return [String, nil]
              required :fuel_charges_currency, String

              # @!attribute insurance_charges_amount
              #   Any insurance being charged for the vehicle.
              #
              #   @return [Integer, nil]
              required :insurance_charges_amount, Integer

              # @!attribute insurance_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance charges assessed.
              #
              #   @return [String, nil]
              required :insurance_charges_currency, String

              # @!attribute no_show_indicator
              #   An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator
                       }

              # @!attribute one_way_drop_off_charges_amount
              #   Charges for returning the vehicle at a different location than where it was picked up.
              #
              #   @return [Integer, nil]
              required :one_way_drop_off_charges_amount, Integer

              # @!attribute one_way_drop_off_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way drop-off charges assessed.
              #
              #   @return [String, nil]
              required :one_way_drop_off_charges_currency, String

              # @!attribute renter_name
              #   Name of the person renting the vehicle.
              #
              #   @return [String, nil]
              required :renter_name, String

              # @!attribute weekly_rental_rate_amount
              #   Weekly rate being charged for the vehicle.
              #
              #   @return [Integer, nil]
              required :weekly_rental_rate_amount, Integer

              # @!attribute weekly_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly rental rate.
              #
              #   @return [String, nil]
              required :weekly_rental_rate_currency, String

              # @!parse
              #   # Fields specific to car rentals.
              #   #
              #   # @param car_class_code [String, nil] Code indicating the vehicle's class.
              #   #
              #   # @param checkout_date [String, nil] Date the customer picked up the car or, in the case of a no-show or pre-pay
              #   #   transaction, the scheduled pick up date.
              #   #
              #   # @param daily_rental_rate_amount [Integer, nil] Daily rate being charged for the vehicle.
              #   #
              #   # @param daily_rental_rate_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental
              #   #   rate.
              #   #
              #   # @param days_rented [Integer, nil] Number of days the vehicle was rented.
              #   #
              #   # @param extra_charges [String, nil] Additional charges (gas, late fee, etc.) being billed.
              #   #
              #   # @param fuel_charges_amount [Integer, nil] Fuel charges for the vehicle.
              #   #
              #   # @param fuel_charges_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges
              #   #   assessed.
              #   #
              #   # @param insurance_charges_amount [Integer, nil] Any insurance being charged for the vehicle.
              #   #
              #   # @param insurance_charges_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance
              #   #   charges assessed.
              #   #
              #   # @param no_show_indicator [String, nil] An indicator that the cardholder is being billed for a reserved vehicle that was
              #   #   not actually rented (that is, a "no-show" charge).
              #   #
              #   # @param one_way_drop_off_charges_amount [Integer, nil] Charges for returning the vehicle at a different location than where it was
              #   #   picked up.
              #   #
              #   # @param one_way_drop_off_charges_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way
              #   #   drop-off charges assessed.
              #   #
              #   # @param renter_name [String, nil] Name of the person renting the vehicle.
              #   #
              #   # @param weekly_rental_rate_amount [Integer, nil] Weekly rate being charged for the vehicle.
              #   #
              #   # @param weekly_rental_rate_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly
              #   #   rental rate.
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

              # def initialize: (Hash | Increase::BaseModel) -> void

              # Additional charges (gas, late fee, etc.) being billed.
              #
              # @example
              # ```ruby
              # case extra_charges
              # in :no_extra_charge
              #   # ...
              # in :gas
              #   # ...
              # in :extra_mileage
              #   # ...
              # in :late_return
              #   # ...
              # in :one_way_service_fee
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class ExtraCharges < Increase::Enum
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
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              #
              # @example
              # ```ruby
              # case no_show_indicator
              # in :not_applicable
              #   # ...
              # in :no_show_for_specialized_vehicle
              #   # ...
              # end
              # ```
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = :no_show_for_specialized_vehicle

                finalize!
              end
            end

            # @example
            # ```ruby
            # lodging => {
            #   check_in_date: Date,
            #   daily_room_rate_amount: Integer,
            #   daily_room_rate_currency: String,
            #   extra_charges: enum: Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges,
            #   folio_cash_advances_amount: Integer,
            #   **_
            # }
            # ```
            class Lodging < Increase::BaseModel
              # @!attribute check_in_date
              #   Date the customer checked in.
              #
              #   @return [Date, nil]
              required :check_in_date, Date

              # @!attribute daily_room_rate_amount
              #   Daily rate being charged for the room.
              #
              #   @return [Integer, nil]
              required :daily_room_rate_amount, Integer

              # @!attribute daily_room_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room rate.
              #
              #   @return [String, nil]
              required :daily_room_rate_currency, String

              # @!attribute extra_charges
              #   Additional charges (phone, late check-out, etc.) being billed.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges, nil]
              required :extra_charges,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges
                       }

              # @!attribute folio_cash_advances_amount
              #   Folio cash advances for the room.
              #
              #   @return [Integer, nil]
              required :folio_cash_advances_amount, Integer

              # @!attribute folio_cash_advances_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash advances.
              #
              #   @return [String, nil]
              required :folio_cash_advances_currency, String

              # @!attribute food_beverage_charges_amount
              #   Food and beverage charges for the room.
              #
              #   @return [Integer, nil]
              required :food_beverage_charges_amount, Integer

              # @!attribute food_beverage_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and beverage charges.
              #
              #   @return [String, nil]
              required :food_beverage_charges_currency, String

              # @!attribute no_show_indicator
              #   Indicator that the cardholder is being billed for a reserved room that was not actually used.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator, nil]
              required :no_show_indicator,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator
                       }

              # @!attribute prepaid_expenses_amount
              #   Prepaid expenses being charged for the room.
              #
              #   @return [Integer, nil]
              required :prepaid_expenses_amount, Integer

              # @!attribute prepaid_expenses_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid expenses.
              #
              #   @return [String, nil]
              required :prepaid_expenses_currency, String

              # @!attribute room_nights
              #   Number of nights the room was rented.
              #
              #   @return [Integer, nil]
              required :room_nights, Integer

              # @!attribute total_room_tax_amount
              #   Total room tax being charged.
              #
              #   @return [Integer, nil]
              required :total_room_tax_amount, Integer

              # @!attribute total_room_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room tax.
              #
              #   @return [String, nil]
              required :total_room_tax_currency, String

              # @!attribute total_tax_amount
              #   Total tax being charged for the room.
              #
              #   @return [Integer, nil]
              required :total_tax_amount, Integer

              # @!attribute total_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax assessed.
              #
              #   @return [String, nil]
              required :total_tax_currency, String

              # @!parse
              #   # Fields specific to lodging.
              #   #
              #   # @param check_in_date [String, nil] Date the customer checked in.
              #   #
              #   # @param daily_room_rate_amount [Integer, nil] Daily rate being charged for the room.
              #   #
              #   # @param daily_room_rate_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room
              #   #   rate.
              #   #
              #   # @param extra_charges [String, nil] Additional charges (phone, late check-out, etc.) being billed.
              #   #
              #   # @param folio_cash_advances_amount [Integer, nil] Folio cash advances for the room.
              #   #
              #   # @param folio_cash_advances_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash
              #   #   advances.
              #   #
              #   # @param food_beverage_charges_amount [Integer, nil] Food and beverage charges for the room.
              #   #
              #   # @param food_beverage_charges_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and
              #   #   beverage charges.
              #   #
              #   # @param no_show_indicator [String, nil] Indicator that the cardholder is being billed for a reserved room that was not
              #   #   actually used.
              #   #
              #   # @param prepaid_expenses_amount [Integer, nil] Prepaid expenses being charged for the room.
              #   #
              #   # @param prepaid_expenses_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid
              #   #   expenses.
              #   #
              #   # @param room_nights [Integer, nil] Number of nights the room was rented.
              #   #
              #   # @param total_room_tax_amount [Integer, nil] Total room tax being charged.
              #   #
              #   # @param total_room_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room
              #   #   tax.
              #   #
              #   # @param total_tax_amount [Integer, nil] Total tax being charged for the room.
              #   #
              #   # @param total_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax
              #   #   assessed.
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

              # def initialize: (Hash | Increase::BaseModel) -> void

              # Additional charges (phone, late check-out, etc.) being billed.
              #
              # @example
              # ```ruby
              # case extra_charges
              # in :no_extra_charge
              #   # ...
              # in :restaurant
              #   # ...
              # in :gift_shop
              #   # ...
              # in :mini_bar
              #   # ...
              # in :telephone
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class ExtraCharges < Increase::Enum
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
              end

              # Indicator that the cardholder is being billed for a reserved room that was not actually used.
              #
              # @example
              # ```ruby
              # case no_show_indicator
              # in :not_applicable
              #   # ...
              # in :no_show
              #   # ...
              # end
              # ```
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show
                NO_SHOW = :no_show

                finalize!
              end
            end

            # The format of the purchase identifier.
            #
            # @example
            # ```ruby
            # case purchase_identifier_format
            # in :free_text
            #   # ...
            # in :order_number
            #   # ...
            # in :rental_agreement_number
            #   # ...
            # in :hotel_folio_number
            #   # ...
            # in :invoice_number
            #   # ...
            # end
            # ```
            class PurchaseIdentifierFormat < Increase::Enum
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
            end

            # @example
            # ```ruby
            # travel => {
            #   ancillary: Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary,
            #   computerized_reservation_system: String,
            #   credit_reason_indicator: enum: Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator,
            #   departure_date: Date,
            #   origination_city_airport_code: String,
            #   **_
            # }
            # ```
            class Travel < Increase::BaseModel
              # @!attribute ancillary
              #   Ancillary purchases in addition to the airfare.
              #
              #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary, nil]
              required :ancillary,
                       -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary }

              # @!attribute computerized_reservation_system
              #   Indicates the computerized reservation system used to book the ticket.
              #
              #   @return [String, nil]
              required :computerized_reservation_system, String

              # @!attribute credit_reason_indicator
              #   Indicates the reason for a credit to the cardholder.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator, nil]
              required :credit_reason_indicator,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator
                       }

              # @!attribute departure_date
              #   Date of departure.
              #
              #   @return [Date, nil]
              required :departure_date, Date

              # @!attribute origination_city_airport_code
              #   Code for the originating city or airport.
              #
              #   @return [String, nil]
              required :origination_city_airport_code, String

              # @!attribute passenger_name
              #   Name of the passenger.
              #
              #   @return [String, nil]
              required :passenger_name, String

              # @!attribute restricted_ticket_indicator
              #   Indicates whether this ticket is non-refundable.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator, nil]
              required :restricted_ticket_indicator,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator
                       }

              # @!attribute ticket_change_indicator
              #   Indicates why a ticket was changed.
              #
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator, nil]
              required :ticket_change_indicator,
                       enum: -> {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator
                       }

              # @!attribute ticket_number
              #   Ticket number.
              #
              #   @return [String, nil]
              required :ticket_number, String

              # @!attribute travel_agency_code
              #   Code for the travel agency if the ticket was issued by a travel agency.
              #
              #   @return [String, nil]
              required :travel_agency_code, String

              # @!attribute travel_agency_name
              #   Name of the travel agency if the ticket was issued by a travel agency.
              #
              #   @return [String, nil]
              required :travel_agency_name, String

              # @!attribute trip_legs
              #   Fields specific to each leg of the journey.
              #
              #   @return [Array<Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg>, nil]
              required :trip_legs,
                       -> {
                         Increase::ArrayOf[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg]
                       }

              # @!parse
              #   # Fields specific to travel.
              #   #
              #   # @param ancillary [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary, nil] Ancillary purchases in addition to the airfare.
              #   #
              #   # @param computerized_reservation_system [String, nil] Indicates the computerized reservation system used to book the ticket.
              #   #
              #   # @param credit_reason_indicator [String, nil] Indicates the reason for a credit to the cardholder.
              #   #
              #   # @param departure_date [String, nil] Date of departure.
              #   #
              #   # @param origination_city_airport_code [String, nil] Code for the originating city or airport.
              #   #
              #   # @param passenger_name [String, nil] Name of the passenger.
              #   #
              #   # @param restricted_ticket_indicator [String, nil] Indicates whether this ticket is non-refundable.
              #   #
              #   # @param ticket_change_indicator [String, nil] Indicates why a ticket was changed.
              #   #
              #   # @param ticket_number [String, nil] Ticket number.
              #   #
              #   # @param travel_agency_code [String, nil] Code for the travel agency if the ticket was issued by a travel agency.
              #   #
              #   # @param travel_agency_name [String, nil] Name of the travel agency if the ticket was issued by a travel agency.
              #   #
              #   # @param trip_legs [Array<Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg>, nil] Fields specific to each leg of the journey.
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

              # def initialize: (Hash | Increase::BaseModel) -> void

              # @example
              # ```ruby
              # ancillary => {
              #   connected_ticket_document_number: String,
              #   credit_reason_indicator: enum: Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator,
              #   passenger_name_or_description: String,
              #   services: -> { Increase::ArrayOf[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service] === _1 },
              #   ticket_document_number: String
              # }
              # ```
              class Ancillary < Increase::BaseModel
                # @!attribute connected_ticket_document_number
                #   If this purchase has a connection or relationship to another purchase, such as a baggage fee for a passenger transport ticket, this field should contain the ticket document number for the other purchase.
                #
                #   @return [String, nil]
                required :connected_ticket_document_number, String

                # @!attribute credit_reason_indicator
                #   Indicates the reason for a credit to the cardholder.
                #
                #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator, nil]
                required :credit_reason_indicator,
                         enum: -> {
                           Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator
                         }

                # @!attribute passenger_name_or_description
                #   Name of the passenger or description of the ancillary purchase.
                #
                #   @return [String, nil]
                required :passenger_name_or_description, String

                # @!attribute services
                #   Additional travel charges, such as baggage fees.
                #
                #   @return [Array<Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         -> {
                           Increase::ArrayOf[Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service]
                         }

                # @!attribute ticket_document_number
                #   Ticket document number.
                #
                #   @return [String, nil]
                required :ticket_document_number, String

                # @!parse
                #   # Ancillary purchases in addition to the airfare.
                #   #
                #   # @param connected_ticket_document_number [String, nil] If this purchase has a connection or relationship to another purchase, such as a
                #   #   baggage fee for a passenger transport ticket, this field should contain the
                #   #   ticket document number for the other purchase.
                #   #
                #   # @param credit_reason_indicator [String, nil] Indicates the reason for a credit to the cardholder.
                #   #
                #   # @param passenger_name_or_description [String, nil] Name of the passenger or description of the ancillary purchase.
                #   #
                #   # @param services [Array<Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service>] Additional travel charges, such as baggage fees.
                #   #
                #   # @param ticket_document_number [String, nil] Ticket document number.
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

                # def initialize: (Hash | Increase::BaseModel) -> void

                # Indicates the reason for a credit to the cardholder.
                #
                # @example
                # ```ruby
                # case credit_reason_indicator
                # in :no_credit
                #   # ...
                # in :passenger_transport_ancillary_purchase_cancellation
                #   # ...
                # in :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation
                #   # ...
                # in :other
                #   # ...
                # end
                # ```
                class CreditReasonIndicator < Increase::Enum
                  # No credit
                  NO_CREDIT = :no_credit

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                  # Other
                  OTHER = :other

                  finalize!
                end

                # @example
                # ```ruby
                # service => {
                #   category: enum: Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category,
                #   sub_category: String
                # }
                # ```
                class Service < Increase::BaseModel
                  # @!attribute category
                  #   Category of the ancillary service.
                  #
                  #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category, nil]
                  required :category,
                           enum: -> {
                             Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category
                           }

                  # @!attribute sub_category
                  #   Sub-category of the ancillary service, free-form.
                  #
                  #   @return [String, nil]
                  required :sub_category, String

                  # @!parse
                  #   # @param category [String, nil] Category of the ancillary service.
                  #   #
                  #   # @param sub_category [String, nil] Sub-category of the ancillary service, free-form.
                  #   #
                  #   def initialize(category:, sub_category:, **) = super

                  # def initialize: (Hash | Increase::BaseModel) -> void

                  # Category of the ancillary service.
                  #
                  # @example
                  # ```ruby
                  # case category
                  # in :none
                  #   # ...
                  # in :bundled_service
                  #   # ...
                  # in :baggage_fee
                  #   # ...
                  # in :change_fee
                  #   # ...
                  # in :cargo
                  #   # ...
                  # in ...
                  #   #...
                  # end
                  # ```
                  class Category < Increase::Enum
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
                  end
                end
              end

              # Indicates the reason for a credit to the cardholder.
              #
              # @example
              # ```ruby
              # case credit_reason_indicator
              # in :no_credit
              #   # ...
              # in :passenger_transport_ancillary_purchase_cancellation
              #   # ...
              # in :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation
              #   # ...
              # in :airline_ticket_cancellation
              #   # ...
              # in :other
              #   # ...
              # in ...
              #   #...
              # end
              # ```
              class CreditReasonIndicator < Increase::Enum
                # No credit
                NO_CREDIT = :no_credit

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = :airline_ticket_cancellation

                # Other
                OTHER = :other

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = :partial_refund_of_airline_ticket

                finalize!
              end

              # Indicates whether this ticket is non-refundable.
              #
              # @example
              # ```ruby
              # case restricted_ticket_indicator
              # in :no_restrictions
              #   # ...
              # in :restricted_non_refundable_ticket
              #   # ...
              # end
              # ```
              class RestrictedTicketIndicator < Increase::Enum
                # No restrictions
                NO_RESTRICTIONS = :no_restrictions

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = :restricted_non_refundable_ticket

                finalize!
              end

              # Indicates why a ticket was changed.
              #
              # @example
              # ```ruby
              # case ticket_change_indicator
              # in :none
              #   # ...
              # in :change_to_existing_ticket
              #   # ...
              # in :new_ticket
              #   # ...
              # end
              # ```
              class TicketChangeIndicator < Increase::Enum
                # None
                NONE = :none

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = :change_to_existing_ticket

                # New ticket
                NEW_TICKET = :new_ticket

                finalize!
              end

              # @example
              # ```ruby
              # trip_leg => {
              #   carrier_code: String,
              #   destination_city_airport_code: String,
              #   fare_basis_code: String,
              #   flight_number: String,
              #   service_class: String
              # }
              # ```
              class TripLeg < Increase::BaseModel
                # @!attribute carrier_code
                #   Carrier code (e.g., United Airlines, Jet Blue, etc.).
                #
                #   @return [String, nil]
                required :carrier_code, String

                # @!attribute destination_city_airport_code
                #   Code for the destination city or airport.
                #
                #   @return [String, nil]
                required :destination_city_airport_code, String

                # @!attribute fare_basis_code
                #   Fare basis code.
                #
                #   @return [String, nil]
                required :fare_basis_code, String

                # @!attribute flight_number
                #   Flight number.
                #
                #   @return [String, nil]
                required :flight_number, String

                # @!attribute service_class
                #   Service class (e.g., first class, business class, etc.).
                #
                #   @return [String, nil]
                required :service_class, String

                # @!attribute stop_over_code
                #   Indicates whether a stopover is allowed on this ticket.
                #
                #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode, nil]
                required :stop_over_code,
                         enum: -> {
                           Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode
                         }

                # @!parse
                #   # @param carrier_code [String, nil] Carrier code (e.g., United Airlines, Jet Blue, etc.).
                #   #
                #   # @param destination_city_airport_code [String, nil] Code for the destination city or airport.
                #   #
                #   # @param fare_basis_code [String, nil] Fare basis code.
                #   #
                #   # @param flight_number [String, nil] Flight number.
                #   #
                #   # @param service_class [String, nil] Service class (e.g., first class, business class, etc.).
                #   #
                #   # @param stop_over_code [String, nil] Indicates whether a stopover is allowed on this ticket.
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

                # def initialize: (Hash | Increase::BaseModel) -> void

                # Indicates whether a stopover is allowed on this ticket.
                #
                # @example
                # ```ruby
                # case stop_over_code
                # in :none
                #   # ...
                # in :stop_over_allowed
                #   # ...
                # in :stop_over_not_allowed
                #   # ...
                # end
                # ```
                class StopOverCode < Increase::Enum
                  # None
                  NONE = :none

                  # Stop over allowed
                  STOP_OVER_ALLOWED = :stop_over_allowed

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = :stop_over_not_allowed

                  finalize!
                end
              end
            end
          end

          # A constant representing the object's type. For this resource it will always be `card_settlement`.
          #
          # @example
          # ```ruby
          # case type
          # in :card_settlement
          #   # ...
          # end
          # ```
          class Type < Increase::Enum
            CARD_SETTLEMENT = :card_settlement

            finalize!
          end
        end

        # @example
        # ```ruby
        # cashback_payment => {
        #   accrued_on_card_id: String,
        #   amount: Integer,
        #   currency: enum: Increase::Models::Transaction::Source::CashbackPayment::Currency,
        #   period_end: Time,
        #   period_start: Time
        # }
        # ```
        class CashbackPayment < Increase::BaseModel
          # @!attribute accrued_on_card_id
          #   The card on which the cashback was accrued.
          #
          #   @return [String, nil]
          required :accrued_on_card_id, String

          # @!attribute amount
          #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CashbackPayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CashbackPayment::Currency }

          # @!attribute period_end
          #   The end of the period for which this transaction paid cashback.
          #
          #   @return [Time]
          required :period_end, Time

          # @!attribute period_start
          #   The start of the period for which this transaction paid cashback.
          #
          #   @return [Time]
          required :period_start, Time

          # @!parse
          #   # A Cashback Payment object. This field will be present in the JSON response if
          #   #   and only if `category` is equal to `cashback_payment`.
          #   #
          #   # @param accrued_on_card_id [String, nil] The card on which the cashback was accrued.
          #   #
          #   # @param amount [Integer] The amount in the minor unit of the transaction's currency. For dollars, for
          #   #   example, this is cents.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   #   currency.
          #   #
          #   # @param period_end [String] The end of the period for which this transaction paid cashback.
          #   #
          #   # @param period_start [String] The start of the period for which this transaction paid cashback.
          #   #
          #   def initialize(accrued_on_card_id:, amount:, currency:, period_end:, period_start:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end
        end

        # The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #
        # @example
        # ```ruby
        # case category
        # in :account_transfer_intention
        #   # ...
        # in :ach_transfer_intention
        #   # ...
        # in :ach_transfer_rejection
        #   # ...
        # in :ach_transfer_return
        #   # ...
        # in :cashback_payment
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Category < Increase::Enum
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
        end

        # @example
        # ```ruby
        # check_deposit_acceptance => {
        #   account_number: String,
        #   amount: Integer,
        #   auxiliary_on_us: String,
        #   check_deposit_id: String,
        #   currency: enum: Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency,
        #   **_
        # }
        # ```
        class CheckDepositAcceptance < Increase::BaseModel
          # @!attribute account_number
          #   The account number printed on the check.
          #
          #   @return [String]
          required :account_number, String

          # @!attribute amount
          #   The amount to be deposited in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute auxiliary_on_us
          #   An additional line of metadata printed on the check. This typically includes the check number for business checks.
          #
          #   @return [String, nil]
          required :auxiliary_on_us, String

          # @!attribute check_deposit_id
          #   The ID of the Check Deposit that was accepted.
          #
          #   @return [String]
          required :check_deposit_id, String

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency
                   }

          # @!attribute routing_number
          #   The routing number printed on the check.
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute serial_number
          #   The check serial number, if present, for consumer checks. For business checks, the serial number is usually in the `auxiliary_on_us` field.
          #
          #   @return [String, nil]
          required :serial_number, String

          # @!parse
          #   # A Check Deposit Acceptance object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `check_deposit_acceptance`.
          #   #
          #   # @param account_number [String] The account number printed on the check.
          #   #
          #   # @param amount [Integer] The amount to be deposited in the minor unit of the transaction's currency. For
          #   #   dollars, for example, this is cents.
          #   #
          #   # @param auxiliary_on_us [String, nil] An additional line of metadata printed on the check. This typically includes the
          #   #   check number for business checks.
          #   #
          #   # @param check_deposit_id [String] The ID of the Check Deposit that was accepted.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #   transaction's currency.
          #   #
          #   # @param routing_number [String] The routing number printed on the check.
          #   #
          #   # @param serial_number [String, nil] The check serial number, if present, for consumer checks. For business checks,
          #   #   the serial number is usually in the `auxiliary_on_us` field.
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

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end
        end

        # @example
        # ```ruby
        # check_deposit_return => {
        #   amount: Integer,
        #   check_deposit_id: String,
        #   currency: enum: Increase::Models::Transaction::Source::CheckDepositReturn::Currency,
        #   return_reason: enum: Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason,
        #   returned_at: Time
        # }
        # ```
        class CheckDepositReturn < Increase::BaseModel
          # @!attribute amount
          #   The returned amount in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute check_deposit_id
          #   The identifier of the Check Deposit that was returned.
          #
          #   @return [String]
          required :check_deposit_id, String

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CheckDepositReturn::Currency }

          # @!attribute return_reason
          #   Why this check was returned by the bank holding the account it was drawn against.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason]
          required :return_reason,
                   enum: -> { Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason }

          # @!attribute returned_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check deposit was returned.
          #
          #   @return [Time]
          required :returned_at, Time

          # @!attribute transaction_id
          #   The identifier of the transaction that reversed the original check deposit transaction.
          #
          #   @return [String]
          required :transaction_id, String

          # @!parse
          #   # A Check Deposit Return object. This field will be present in the JSON response
          #   #   if and only if `category` is equal to `check_deposit_return`.
          #   #
          #   # @param amount [Integer] The returned amount in USD cents.
          #   #
          #   # @param check_deposit_id [String] The identifier of the Check Deposit that was returned.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #   transaction's currency.
          #   #
          #   # @param return_reason [String] Why this check was returned by the bank holding the account it was drawn
          #   #   against.
          #   #
          #   # @param returned_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   #   the check deposit was returned.
          #   #
          #   # @param transaction_id [String] The identifier of the transaction that reversed the original check deposit
          #   #   transaction.
          #   #
          #   def initialize(amount:, check_deposit_id:, currency:, return_reason:, returned_at:, transaction_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end

          # Why this check was returned by the bank holding the account it was drawn against.
          #
          # @example
          # ```ruby
          # case return_reason
          # in :ach_conversion_not_supported
          #   # ...
          # in :closed_account
          #   # ...
          # in :duplicate_submission
          #   # ...
          # in :insufficient_funds
          #   # ...
          # in :no_account
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class ReturnReason < Increase::Enum
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
          end
        end

        # @example
        # ```ruby
        # check_transfer_deposit => {
        #   back_image_file_id: String,
        #   bank_of_first_deposit_routing_number: String,
        #   deposited_at: Time,
        #   front_image_file_id: String,
        #   inbound_check_deposit_id: String,
        #   **_
        # }
        # ```
        class CheckTransferDeposit < Increase::BaseModel
          # @!attribute back_image_file_id
          #   The identifier of the API File object containing an image of the back of the deposited check.
          #
          #   @return [String, nil]
          required :back_image_file_id, String

          # @!attribute bank_of_first_deposit_routing_number
          #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the bank depositing this check. In some rare cases, this is not transmitted via Check21 and the value will be null.
          #
          #   @return [String, nil]
          required :bank_of_first_deposit_routing_number, String

          # @!attribute deposited_at
          #   When the check was deposited.
          #
          #   @return [Time]
          required :deposited_at, Time

          # @!attribute front_image_file_id
          #   The identifier of the API File object containing an image of the front of the deposited check.
          #
          #   @return [String, nil]
          required :front_image_file_id, String

          # @!attribute inbound_check_deposit_id
          #   The identifier of the Inbound Check Deposit object associated with this transaction.
          #
          #   @return [String, nil]
          required :inbound_check_deposit_id, String

          # @!attribute transaction_id
          #   The identifier of the Transaction object created when the check was deposited.
          #
          #   @return [String, nil]
          required :transaction_id, String

          # @!attribute transfer_id
          #   The identifier of the Check Transfer object that was deposited.
          #
          #   @return [String, nil]
          required :transfer_id, String

          # @!attribute type
          #   A constant representing the object's type. For this resource it will always be `check_transfer_deposit`.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckTransferDeposit::Type]
          required :type, enum: -> { Increase::Models::Transaction::Source::CheckTransferDeposit::Type }

          # @!parse
          #   # A Check Transfer Deposit object. This field will be present in the JSON response
          #   #   if and only if `category` is equal to `check_transfer_deposit`.
          #   #
          #   # @param back_image_file_id [String, nil] The identifier of the API File object containing an image of the back of the
          #   #   deposited check.
          #   #
          #   # @param bank_of_first_deposit_routing_number [String, nil] The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
          #   #   bank depositing this check. In some rare cases, this is not transmitted via
          #   #   Check21 and the value will be null.
          #   #
          #   # @param deposited_at [String] When the check was deposited.
          #   #
          #   # @param front_image_file_id [String, nil] The identifier of the API File object containing an image of the front of the
          #   #   deposited check.
          #   #
          #   # @param inbound_check_deposit_id [String, nil] The identifier of the Inbound Check Deposit object associated with this
          #   #   transaction.
          #   #
          #   # @param transaction_id [String, nil] The identifier of the Transaction object created when the check was deposited.
          #   #
          #   # @param transfer_id [String, nil] The identifier of the Check Transfer object that was deposited.
          #   #
          #   # @param type [String] A constant representing the object's type. For this resource it will always be
          #   #   `check_transfer_deposit`.
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

          # def initialize: (Hash | Increase::BaseModel) -> void

          # A constant representing the object's type. For this resource it will always be `check_transfer_deposit`.
          #
          # @example
          # ```ruby
          # case type
          # in :check_transfer_deposit
          #   # ...
          # end
          # ```
          class Type < Increase::Enum
            CHECK_TRANSFER_DEPOSIT = :check_transfer_deposit

            finalize!
          end
        end

        # @example
        # ```ruby
        # fee_payment => {
        #   amount: Integer,
        #   currency: enum: Increase::Models::Transaction::Source::FeePayment::Currency,
        #   fee_period_start: Date,
        #   program_id: String
        # }
        # ```
        class FeePayment < Increase::BaseModel
          # @!attribute amount
          #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::FeePayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::FeePayment::Currency }

          # @!attribute fee_period_start
          #   The start of this payment's fee period, usually the first day of a month.
          #
          #   @return [Date]
          required :fee_period_start, Date

          # @!attribute program_id
          #   The Program for which this fee was incurred.
          #
          #   @return [String, nil]
          required :program_id, String

          # @!parse
          #   # A Fee Payment object. This field will be present in the JSON response if and
          #   #   only if `category` is equal to `fee_payment`.
          #   #
          #   # @param amount [Integer] The amount in the minor unit of the transaction's currency. For dollars, for
          #   #   example, this is cents.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   #   currency.
          #   #
          #   # @param fee_period_start [String] The start of this payment's fee period, usually the first day of a month.
          #   #
          #   # @param program_id [String, nil] The Program for which this fee was incurred.
          #   #
          #   def initialize(amount:, currency:, fee_period_start:, program_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end
        end

        # @example
        # ```ruby
        # inbound_ach_transfer => {
        #   addenda: Increase::Models::Transaction::Source::InboundACHTransfer::Addenda,
        #   amount: Integer,
        #   originator_company_descriptive_date: String,
        #   originator_company_discretionary_data: String,
        #   originator_company_entry_description: String,
        #   **_
        # }
        # ```
        class InboundACHTransfer < Increase::BaseModel
          # @!attribute addenda
          #   Additional information sent from the originator.
          #
          #   @return [Increase::Models::Transaction::Source::InboundACHTransfer::Addenda, nil]
          required :addenda, -> { Increase::Models::Transaction::Source::InboundACHTransfer::Addenda }

          # @!attribute amount
          #   The transfer amount in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute originator_company_descriptive_date
          #   The description of the date of the transfer, usually in the format `YYMMDD`.
          #
          #   @return [String, nil]
          required :originator_company_descriptive_date, String

          # @!attribute originator_company_discretionary_data
          #   Data set by the originator.
          #
          #   @return [String, nil]
          required :originator_company_discretionary_data, String

          # @!attribute originator_company_entry_description
          #   An informational description of the transfer.
          #
          #   @return [String]
          required :originator_company_entry_description, String

          # @!attribute originator_company_id
          #   An identifier for the originating company. This is generally, but not always, a stable identifier across multiple transfers.
          #
          #   @return [String]
          required :originator_company_id, String

          # @!attribute originator_company_name
          #   A name set by the originator to identify themselves.
          #
          #   @return [String]
          required :originator_company_name, String

          # @!attribute receiver_id_number
          #   The originator's identifier for the transfer recipient.
          #
          #   @return [String, nil]
          required :receiver_id_number, String

          # @!attribute receiver_name
          #   The name of the transfer recipient. This value is informational and not verified by Increase.
          #
          #   @return [String, nil]
          required :receiver_name, String

          # @!attribute trace_number
          #   A 15 digit number recorded in the Nacha file and available to both the originating and receiving bank. Along with the amount, date, and originating routing number, this can be used to identify the ACH transfer at either bank. ACH trace numbers are not unique, but are [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
          #
          #   @return [String]
          required :trace_number, String

          # @!attribute transfer_id
          #   The Inbound ACH Transfer's identifier.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # An Inbound ACH Transfer Intention object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `inbound_ach_transfer`.
          #   #
          #   # @param addenda [Increase::Models::Transaction::Source::InboundACHTransfer::Addenda, nil] Additional information sent from the originator.
          #   #
          #   # @param amount [Integer] The transfer amount in USD cents.
          #   #
          #   # @param originator_company_descriptive_date [String, nil] The description of the date of the transfer, usually in the format `YYMMDD`.
          #   #
          #   # @param originator_company_discretionary_data [String, nil] Data set by the originator.
          #   #
          #   # @param originator_company_entry_description [String] An informational description of the transfer.
          #   #
          #   # @param originator_company_id [String] An identifier for the originating company. This is generally, but not always, a
          #   #   stable identifier across multiple transfers.
          #   #
          #   # @param originator_company_name [String] A name set by the originator to identify themselves.
          #   #
          #   # @param receiver_id_number [String, nil] The originator's identifier for the transfer recipient.
          #   #
          #   # @param receiver_name [String, nil] The name of the transfer recipient. This value is informational and not verified
          #   #   by Increase.
          #   #
          #   # @param trace_number [String] A 15 digit number recorded in the Nacha file and available to both the
          #   #   originating and receiving bank. Along with the amount, date, and originating
          #   #   routing number, this can be used to identify the ACH transfer at either bank.
          #   #   ACH trace numbers are not unique, but are
          #   #   [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
          #   #
          #   # @param transfer_id [String] The Inbound ACH Transfer's identifier.
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

          # def initialize: (Hash | Increase::BaseModel) -> void

          # @example
          # ```ruby
          # addenda => {
          #   category: enum: Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category,
          #   freeform: Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform
          # }
          # ```
          class Addenda < Increase::BaseModel
            # @!attribute category
            #   The type of addendum.
            #
            #   @return [Symbol, Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category]
            required :category,
                     enum: -> { Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category }

            # @!attribute freeform
            #   Unstructured `payment_related_information` passed through by the originator.
            #
            #   @return [Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform, nil]
            required :freeform,
                     -> {
                       Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform
                     }

            # @!parse
            #   # Additional information sent from the originator.
            #   #
            #   # @param category [String] The type of addendum.
            #   #
            #   # @param freeform [Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform, nil] Unstructured `payment_related_information` passed through by the originator.
            #   #
            #   def initialize(category:, freeform:, **) = super

            # def initialize: (Hash | Increase::BaseModel) -> void

            # The type of addendum.
            #
            # @example
            # ```ruby
            # case category
            # in :freeform
            #   # ...
            # end
            # ```
            class Category < Increase::Enum
              # Unstructured addendum.
              FREEFORM = :freeform

              finalize!
            end

            # @example
            # ```ruby
            # freeform => {
            #   entries: -> { Increase::ArrayOf[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry] === _1 }
            # }
            # ```
            class Freeform < Increase::BaseModel
              # @!attribute entries
              #   Each entry represents an addendum received from the originator.
              #
              #   @return [Array<Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry>]
              required :entries,
                       -> {
                         Increase::ArrayOf[Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry]
                       }

              # @!parse
              #   # Unstructured `payment_related_information` passed through by the originator.
              #   #
              #   # @param entries [Array<Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry>] Each entry represents an addendum received from the originator.
              #   #
              #   def initialize(entries:, **) = super

              # def initialize: (Hash | Increase::BaseModel) -> void

              # @example
              # ```ruby
              # entry => {
              #   payment_related_information: String
              # }
              # ```
              class Entry < Increase::BaseModel
                # @!attribute payment_related_information
                #   The payment related information passed in the addendum.
                #
                #   @return [String]
                required :payment_related_information, String

                # @!parse
                #   # @param payment_related_information [String] The payment related information passed in the addendum.
                #   #
                #   def initialize(payment_related_information:, **) = super

                # def initialize: (Hash | Increase::BaseModel) -> void
              end
            end
          end
        end

        # @example
        # ```ruby
        # inbound_real_time_payments_transfer_confirmation => {
        #   amount: Integer,
        #   creditor_name: String,
        #   currency: enum: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency,
        #   debtor_account_number: String,
        #   debtor_name: String,
        #   **_
        # }
        # ```
        class InboundRealTimePaymentsTransferConfirmation < Increase::BaseModel
          # @!attribute amount
          #   The amount in the minor unit of the transfer's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute creditor_name
          #   The name the sender of the transfer specified as the recipient of the transfer.
          #
          #   @return [String]
          required :creditor_name, String

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency
                   }

          # @!attribute debtor_account_number
          #   The account number of the account that sent the transfer.
          #
          #   @return [String]
          required :debtor_account_number, String

          # @!attribute debtor_name
          #   The name provided by the sender of the transfer.
          #
          #   @return [String]
          required :debtor_name, String

          # @!attribute debtor_routing_number
          #   The routing number of the account that sent the transfer.
          #
          #   @return [String]
          required :debtor_routing_number, String

          # @!attribute remittance_information
          #   Additional information included with the transfer.
          #
          #   @return [String, nil]
          required :remittance_information, String

          # @!attribute transaction_identification
          #   The Real-Time Payments network identification of the transfer.
          #
          #   @return [String]
          required :transaction_identification, String

          # @!attribute transfer_id
          #   The identifier of the Real-Time Payments Transfer that led to this Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # An Inbound Real-Time Payments Transfer Confirmation object. This field will be
          #   #   present in the JSON response if and only if `category` is equal to
          #   #   `inbound_real_time_payments_transfer_confirmation`.
          #   #
          #   # @param amount [Integer] The amount in the minor unit of the transfer's currency. For dollars, for
          #   #   example, this is cents.
          #   #
          #   # @param creditor_name [String] The name the sender of the transfer specified as the recipient of the transfer.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's
          #   #   currency. This will always be "USD" for a Real-Time Payments transfer.
          #   #
          #   # @param debtor_account_number [String] The account number of the account that sent the transfer.
          #   #
          #   # @param debtor_name [String] The name provided by the sender of the transfer.
          #   #
          #   # @param debtor_routing_number [String] The routing number of the account that sent the transfer.
          #   #
          #   # @param remittance_information [String, nil] Additional information included with the transfer.
          #   #
          #   # @param transaction_identification [String] The Real-Time Payments network identification of the transfer.
          #   #
          #   # @param transfer_id [String] The identifier of the Real-Time Payments Transfer that led to this Transaction.
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

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end
        end

        # @example
        # ```ruby
        # inbound_real_time_payments_transfer_decline => {
        #   amount: Integer,
        #   creditor_name: String,
        #   currency: enum: Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency,
        #   debtor_account_number: String,
        #   debtor_name: String,
        #   **_
        # }
        # ```
        class InboundRealTimePaymentsTransferDecline < Increase::BaseModel
          # @!attribute amount
          #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute creditor_name
          #   The name the sender of the transfer specified as the recipient of the transfer.
          #
          #   @return [String]
          required :creditor_name, String

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency
                   }

          # @!attribute debtor_account_number
          #   The account number of the account that sent the transfer.
          #
          #   @return [String]
          required :debtor_account_number, String

          # @!attribute debtor_name
          #   The name provided by the sender of the transfer.
          #
          #   @return [String]
          required :debtor_name, String

          # @!attribute debtor_routing_number
          #   The routing number of the account that sent the transfer.
          #
          #   @return [String]
          required :debtor_routing_number, String

          # @!attribute reason
          #   Why the transfer was declined.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason]
          required :reason,
                   enum: -> {
                     Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason
                   }

          # @!attribute remittance_information
          #   Additional information included with the transfer.
          #
          #   @return [String, nil]
          required :remittance_information, String

          # @!attribute transaction_identification
          #   The Real-Time Payments network identification of the declined transfer.
          #
          #   @return [String]
          required :transaction_identification, String

          # @!attribute transfer_id
          #   The identifier of the Real-Time Payments Transfer that led to this Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # An Inbound Real-Time Payments Transfer Decline object. This field will be
          #   #   present in the JSON response if and only if `category` is equal to
          #   #   `inbound_real_time_payments_transfer_decline`.
          #   #
          #   # @param amount [Integer] The declined amount in the minor unit of the destination account currency. For
          #   #   dollars, for example, this is cents.
          #   #
          #   # @param creditor_name [String] The name the sender of the transfer specified as the recipient of the transfer.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined
          #   #   transfer's currency. This will always be "USD" for a Real-Time Payments
          #   #   transfer.
          #   #
          #   # @param debtor_account_number [String] The account number of the account that sent the transfer.
          #   #
          #   # @param debtor_name [String] The name provided by the sender of the transfer.
          #   #
          #   # @param debtor_routing_number [String] The routing number of the account that sent the transfer.
          #   #
          #   # @param reason [String] Why the transfer was declined.
          #   #
          #   # @param remittance_information [String, nil] Additional information included with the transfer.
          #   #
          #   # @param transaction_identification [String] The Real-Time Payments network identification of the declined transfer.
          #   #
          #   # @param transfer_id [String] The identifier of the Real-Time Payments Transfer that led to this Transaction.
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

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end

          # Why the transfer was declined.
          #
          # @example
          # ```ruby
          # case reason
          # in :account_number_canceled
          #   # ...
          # in :account_number_disabled
          #   # ...
          # in :account_restricted
          #   # ...
          # in :group_locked
          #   # ...
          # in :entity_not_active
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Reason < Increase::Enum
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
          end
        end

        # @example
        # ```ruby
        # inbound_wire_reversal => {
        #   amount: Integer,
        #   created_at: Time,
        #   description: String,
        #   financial_institution_to_financial_institution_information: String,
        #   input_cycle_date: Date,
        #   **_
        # }
        # ```
        class InboundWireReversal < Increase::BaseModel
          # @!attribute amount
          #   The amount that was reversed in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute created_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the reversal was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute description
          #   The description on the reversal message from Fedwire, set by the reversing bank.
          #
          #   @return [String]
          required :description, String

          # @!attribute financial_institution_to_financial_institution_information
          #   Additional financial institution information included in the wire reversal.
          #
          #   @return [String, nil]
          required :financial_institution_to_financial_institution_information, String

          # @!attribute input_cycle_date
          #   The Fedwire cycle date for the wire reversal. The "Fedwire day" begins at 9:00 PM Eastern Time on the evening before the `cycle date`.
          #
          #   @return [Date]
          required :input_cycle_date, Date

          # @!attribute input_message_accountability_data
          #   The Fedwire transaction identifier.
          #
          #   @return [String]
          required :input_message_accountability_data, String

          # @!attribute input_sequence_number
          #   The Fedwire sequence number.
          #
          #   @return [String]
          required :input_sequence_number, String

          # @!attribute input_source
          #   The Fedwire input source identifier.
          #
          #   @return [String]
          required :input_source, String

          # @!attribute originator_routing_number
          #   The American Banking Association (ABA) routing number of the bank originating the transfer.
          #
          #   @return [String, nil]
          required :originator_routing_number, String

          # @!attribute previous_message_input_cycle_date
          #   The Fedwire cycle date for the wire transfer that is being reversed by this message.
          #
          #   @return [Date]
          required :previous_message_input_cycle_date, Date

          # @!attribute previous_message_input_message_accountability_data
          #   The Fedwire transaction identifier for the wire transfer that was reversed.
          #
          #   @return [String]
          required :previous_message_input_message_accountability_data, String

          # @!attribute previous_message_input_sequence_number
          #   The Fedwire sequence number for the wire transfer that was reversed.
          #
          #   @return [String]
          required :previous_message_input_sequence_number, String

          # @!attribute previous_message_input_source
          #   The Fedwire input source identifier for the wire transfer that was reversed.
          #
          #   @return [String]
          required :previous_message_input_source, String

          # @!attribute receiver_financial_institution_information
          #   Information included in the wire reversal for the receiving financial institution.
          #
          #   @return [String, nil]
          required :receiver_financial_institution_information, String

          # @!attribute sender_reference
          #   The sending bank's reference number for the wire reversal.
          #
          #   @return [String, nil]
          required :sender_reference, String

          # @!attribute transaction_id
          #   The ID for the Transaction associated with the transfer reversal.
          #
          #   @return [String]
          required :transaction_id, String

          # @!attribute wire_transfer_id
          #   The ID for the Wire Transfer that is being reversed.
          #
          #   @return [String]
          required :wire_transfer_id, String

          # @!parse
          #   # An Inbound Wire Reversal object. This field will be present in the JSON response
          #   #   if and only if `category` is equal to `inbound_wire_reversal`.
          #   #
          #   # @param amount [Integer] The amount that was reversed in USD cents.
          #   #
          #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          #   #   the reversal was created.
          #   #
          #   # @param description [String] The description on the reversal message from Fedwire, set by the reversing bank.
          #   #
          #   # @param financial_institution_to_financial_institution_information [String, nil] Additional financial institution information included in the wire reversal.
          #   #
          #   # @param input_cycle_date [String] The Fedwire cycle date for the wire reversal. The "Fedwire day" begins at 9:00
          #   #   PM Eastern Time on the evening before the `cycle date`.
          #   #
          #   # @param input_message_accountability_data [String] The Fedwire transaction identifier.
          #   #
          #   # @param input_sequence_number [String] The Fedwire sequence number.
          #   #
          #   # @param input_source [String] The Fedwire input source identifier.
          #   #
          #   # @param originator_routing_number [String, nil] The American Banking Association (ABA) routing number of the bank originating
          #   #   the transfer.
          #   #
          #   # @param previous_message_input_cycle_date [String] The Fedwire cycle date for the wire transfer that is being reversed by this
          #   #   message.
          #   #
          #   # @param previous_message_input_message_accountability_data [String] The Fedwire transaction identifier for the wire transfer that was reversed.
          #   #
          #   # @param previous_message_input_sequence_number [String] The Fedwire sequence number for the wire transfer that was reversed.
          #   #
          #   # @param previous_message_input_source [String] The Fedwire input source identifier for the wire transfer that was reversed.
          #   #
          #   # @param receiver_financial_institution_information [String, nil] Information included in the wire reversal for the receiving financial
          #   #   institution.
          #   #
          #   # @param sender_reference [String, nil] The sending bank's reference number for the wire reversal.
          #   #
          #   # @param transaction_id [String] The ID for the Transaction associated with the transfer reversal.
          #   #
          #   # @param wire_transfer_id [String] The ID for the Wire Transfer that is being reversed.
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

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # inbound_wire_transfer => {
        #   amount: Integer,
        #   beneficiary_address_line1: String,
        #   beneficiary_address_line2: String,
        #   beneficiary_address_line3: String,
        #   beneficiary_name: String,
        #   **_
        # }
        # ```
        class InboundWireTransfer < Increase::BaseModel
          # @!attribute amount
          #   The amount in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute beneficiary_address_line1
          #   A free-form address field set by the sender.
          #
          #   @return [String, nil]
          required :beneficiary_address_line1, String

          # @!attribute beneficiary_address_line2
          #   A free-form address field set by the sender.
          #
          #   @return [String, nil]
          required :beneficiary_address_line2, String

          # @!attribute beneficiary_address_line3
          #   A free-form address field set by the sender.
          #
          #   @return [String, nil]
          required :beneficiary_address_line3, String

          # @!attribute beneficiary_name
          #   A name set by the sender.
          #
          #   @return [String, nil]
          required :beneficiary_name, String

          # @!attribute beneficiary_reference
          #   A free-form reference string set by the sender, to help identify the transfer.
          #
          #   @return [String, nil]
          required :beneficiary_reference, String

          # @!attribute description
          #   An Increase-constructed description of the transfer.
          #
          #   @return [String]
          required :description, String

          # @!attribute input_message_accountability_data
          #   A unique identifier available to the originating and receiving banks, commonly abbreviated as IMAD. It is created when the wire is submitted to the Fedwire service and is helpful when debugging wires with the originating bank.
          #
          #   @return [String, nil]
          required :input_message_accountability_data, String

          # @!attribute originator_address_line1
          #   The address of the wire originator, set by the sending bank.
          #
          #   @return [String, nil]
          required :originator_address_line1, String

          # @!attribute originator_address_line2
          #   The address of the wire originator, set by the sending bank.
          #
          #   @return [String, nil]
          required :originator_address_line2, String

          # @!attribute originator_address_line3
          #   The address of the wire originator, set by the sending bank.
          #
          #   @return [String, nil]
          required :originator_address_line3, String

          # @!attribute originator_name
          #   The originator of the wire, set by the sending bank.
          #
          #   @return [String, nil]
          required :originator_name, String

          # @!attribute originator_routing_number
          #   The American Banking Association (ABA) routing number of the bank originating the transfer.
          #
          #   @return [String, nil]
          required :originator_routing_number, String

          # @!attribute originator_to_beneficiary_information
          #   An Increase-created concatenation of the Originator-to-Beneficiary lines.
          #
          #   @return [String, nil]
          required :originator_to_beneficiary_information, String

          # @!attribute originator_to_beneficiary_information_line1
          #   A free-form message set by the wire originator.
          #
          #   @return [String, nil]
          required :originator_to_beneficiary_information_line1, String

          # @!attribute originator_to_beneficiary_information_line2
          #   A free-form message set by the wire originator.
          #
          #   @return [String, nil]
          required :originator_to_beneficiary_information_line2, String

          # @!attribute originator_to_beneficiary_information_line3
          #   A free-form message set by the wire originator.
          #
          #   @return [String, nil]
          required :originator_to_beneficiary_information_line3, String

          # @!attribute originator_to_beneficiary_information_line4
          #   A free-form message set by the wire originator.
          #
          #   @return [String, nil]
          required :originator_to_beneficiary_information_line4, String

          # @!attribute transfer_id
          #   The ID of the Inbound Wire Transfer object that resulted in this Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # An Inbound Wire Transfer Intention object. This field will be present in the
          #   #   JSON response if and only if `category` is equal to `inbound_wire_transfer`.
          #   #
          #   # @param amount [Integer] The amount in USD cents.
          #   #
          #   # @param beneficiary_address_line1 [String, nil] A free-form address field set by the sender.
          #   #
          #   # @param beneficiary_address_line2 [String, nil] A free-form address field set by the sender.
          #   #
          #   # @param beneficiary_address_line3 [String, nil] A free-form address field set by the sender.
          #   #
          #   # @param beneficiary_name [String, nil] A name set by the sender.
          #   #
          #   # @param beneficiary_reference [String, nil] A free-form reference string set by the sender, to help identify the transfer.
          #   #
          #   # @param description [String] An Increase-constructed description of the transfer.
          #   #
          #   # @param input_message_accountability_data [String, nil] A unique identifier available to the originating and receiving banks, commonly
          #   #   abbreviated as IMAD. It is created when the wire is submitted to the Fedwire
          #   #   service and is helpful when debugging wires with the originating bank.
          #   #
          #   # @param originator_address_line1 [String, nil] The address of the wire originator, set by the sending bank.
          #   #
          #   # @param originator_address_line2 [String, nil] The address of the wire originator, set by the sending bank.
          #   #
          #   # @param originator_address_line3 [String, nil] The address of the wire originator, set by the sending bank.
          #   #
          #   # @param originator_name [String, nil] The originator of the wire, set by the sending bank.
          #   #
          #   # @param originator_routing_number [String, nil] The American Banking Association (ABA) routing number of the bank originating
          #   #   the transfer.
          #   #
          #   # @param originator_to_beneficiary_information [String, nil] An Increase-created concatenation of the Originator-to-Beneficiary lines.
          #   #
          #   # @param originator_to_beneficiary_information_line1 [String, nil] A free-form message set by the wire originator.
          #   #
          #   # @param originator_to_beneficiary_information_line2 [String, nil] A free-form message set by the wire originator.
          #   #
          #   # @param originator_to_beneficiary_information_line3 [String, nil] A free-form message set by the wire originator.
          #   #
          #   # @param originator_to_beneficiary_information_line4 [String, nil] A free-form message set by the wire originator.
          #   #
          #   # @param transfer_id [String] The ID of the Inbound Wire Transfer object that resulted in this Transaction.
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

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # interest_payment => {
        #   accrued_on_account_id: String,
        #   amount: Integer,
        #   currency: enum: Increase::Models::Transaction::Source::InterestPayment::Currency,
        #   period_end: Time,
        #   period_start: Time
        # }
        # ```
        class InterestPayment < Increase::BaseModel
          # @!attribute accrued_on_account_id
          #   The account on which the interest was accrued.
          #
          #   @return [String]
          required :accrued_on_account_id, String

          # @!attribute amount
          #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InterestPayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::InterestPayment::Currency }

          # @!attribute period_end
          #   The end of the period for which this transaction paid interest.
          #
          #   @return [Time]
          required :period_end, Time

          # @!attribute period_start
          #   The start of the period for which this transaction paid interest.
          #
          #   @return [Time]
          required :period_start, Time

          # @!parse
          #   # An Interest Payment object. This field will be present in the JSON response if
          #   #   and only if `category` is equal to `interest_payment`.
          #   #
          #   # @param accrued_on_account_id [String] The account on which the interest was accrued.
          #   #
          #   # @param amount [Integer] The amount in the minor unit of the transaction's currency. For dollars, for
          #   #   example, this is cents.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   #   currency.
          #   #
          #   # @param period_end [String] The end of the period for which this transaction paid interest.
          #   #
          #   # @param period_start [String] The start of the period for which this transaction paid interest.
          #   #
          #   def initialize(accrued_on_account_id:, amount:, currency:, period_end:, period_start:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end
        end

        # @example
        # ```ruby
        # internal_source => {
        #   amount: Integer,
        #   currency: enum: Increase::Models::Transaction::Source::InternalSource::Currency,
        #   reason: enum: Increase::Models::Transaction::Source::InternalSource::Reason
        # }
        # ```
        class InternalSource < Increase::BaseModel
          # @!attribute amount
          #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InternalSource::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::InternalSource::Currency }

          # @!attribute reason
          #   An Internal Source is a transaction between you and Increase. This describes the reason for the transaction.
          #
          #   @return [Symbol, Increase::Models::Transaction::Source::InternalSource::Reason]
          required :reason, enum: -> { Increase::Models::Transaction::Source::InternalSource::Reason }

          # @!parse
          #   # An Internal Source object. This field will be present in the JSON response if
          #   #   and only if `category` is equal to `internal_source`.
          #   #
          #   # @param amount [Integer] The amount in the minor unit of the transaction's currency. For dollars, for
          #   #   example, this is cents.
          #   #
          #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction
          #   #   currency.
          #   #
          #   # @param reason [String] An Internal Source is a transaction between you and Increase. This describes the
          #   #   reason for the transaction.
          #   #
          #   def initialize(amount:, currency:, reason:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #
          # @example
          # ```ruby
          # case currency
          # in :CAD
          #   # ...
          # in :CHF
          #   # ...
          # in :EUR
          #   # ...
          # in :GBP
          #   # ...
          # in :JPY
          #   # ...
          # in ...
          #   #...
          # end
          # ```
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

            finalize!
          end

          # An Internal Source is a transaction between you and Increase. This describes the reason for the transaction.
          #
          # @example
          # ```ruby
          # case reason
          # in :account_closure
          #   # ...
          # in :bank_drawn_check
          #   # ...
          # in :bank_drawn_check_credit
          #   # ...
          # in :bank_migration
          #   # ...
          # in :check_adjustment
          #   # ...
          # in ...
          #   #...
          # end
          # ```
          class Reason < Increase::Enum
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
          end
        end

        # @example
        # ```ruby
        # real_time_payments_transfer_acknowledgement => {
        #   amount: Integer,
        #   destination_account_number: String,
        #   destination_routing_number: String,
        #   remittance_information: String,
        #   transfer_id: String
        # }
        # ```
        class RealTimePaymentsTransferAcknowledgement < Increase::BaseModel
          # @!attribute amount
          #   The transfer amount in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute destination_account_number
          #   The destination account number.
          #
          #   @return [String]
          required :destination_account_number, String

          # @!attribute destination_routing_number
          #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
          #
          #   @return [String]
          required :destination_routing_number, String

          # @!attribute remittance_information
          #   Unstructured information that will show on the recipient's bank statement.
          #
          #   @return [String]
          required :remittance_information, String

          # @!attribute transfer_id
          #   The identifier of the Real-Time Payments Transfer that led to this Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # A Real-Time Payments Transfer Acknowledgement object. This field will be present
          #   #   in the JSON response if and only if `category` is equal to
          #   #   `real_time_payments_transfer_acknowledgement`.
          #   #
          #   # @param amount [Integer] The transfer amount in USD cents.
          #   #
          #   # @param destination_account_number [String] The destination account number.
          #   #
          #   # @param destination_routing_number [String] The American Bankers' Association (ABA) Routing Transit Number (RTN).
          #   #
          #   # @param remittance_information [String] Unstructured information that will show on the recipient's bank statement.
          #   #
          #   # @param transfer_id [String] The identifier of the Real-Time Payments Transfer that led to this Transaction.
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

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # sample_funds => {
        #   originator: String
        # }
        # ```
        class SampleFunds < Increase::BaseModel
          # @!attribute originator
          #   Where the sample funds came from.
          #
          #   @return [String]
          required :originator, String

          # @!parse
          #   # A Sample Funds object. This field will be present in the JSON response if and
          #   #   only if `category` is equal to `sample_funds`.
          #   #
          #   # @param originator [String] Where the sample funds came from.
          #   #
          #   def initialize(originator:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        # ```ruby
        # wire_transfer_intention => {
        #   account_number: String,
        #   amount: Integer,
        #   message_to_recipient: String,
        #   routing_number: String,
        #   transfer_id: String
        # }
        # ```
        class WireTransferIntention < Increase::BaseModel
          # @!attribute account_number
          #   The destination account number.
          #
          #   @return [String]
          required :account_number, String

          # @!attribute amount
          #   The transfer amount in USD cents.
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute message_to_recipient
          #   The message that will show on the recipient's bank statement.
          #
          #   @return [String]
          required :message_to_recipient, String

          # @!attribute routing_number
          #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
          #
          #   @return [String]
          required :routing_number, String

          # @!attribute transfer_id
          #   The identifier of the Wire Transfer that led to this Transaction.
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # A Wire Transfer Intention object. This field will be present in the JSON
          #   #   response if and only if `category` is equal to `wire_transfer_intention`.
          #   #
          #   # @param account_number [String] The destination account number.
          #   #
          #   # @param amount [Integer] The transfer amount in USD cents.
          #   #
          #   # @param message_to_recipient [String] The message that will show on the recipient's bank statement.
          #   #
          #   # @param routing_number [String] The American Bankers' Association (ABA) Routing Transit Number (RTN).
          #   #
          #   # @param transfer_id [String] The identifier of the Wire Transfer that led to this Transaction.
          #   #
          #   def initialize(account_number:, amount:, message_to_recipient:, routing_number:, transfer_id:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # A constant representing the object's type. For this resource it will always be `transaction`.
      #
      # @example
      # ```ruby
      # case type
      # in :transaction
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        TRANSACTION = :transaction

        finalize!
      end
    end
  end
end
