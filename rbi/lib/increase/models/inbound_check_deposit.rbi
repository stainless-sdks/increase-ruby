# typed: strong

module Increase
  module Models
    class InboundCheckDeposit < Increase::BaseModel
      # The deposit's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # If the Inbound Check Deposit was accepted, the
      #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which this
      #   took place.
      sig { returns(T.nilable(Time)) }
      def accepted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def accepted_at=(_)
      end

      # The Account the check is being deposited against.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The Account Number the check is being deposited against.
      sig { returns(T.nilable(String)) }
      def account_number_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def account_number_id=(_)
      end

      # If the deposit or the return was adjusted by the sending institution, this will
      #   contain details of the adjustments.
      sig { returns(T::Array[Increase::Models::InboundCheckDeposit::Adjustment]) }
      def adjustments
      end

      sig do
        params(_: T::Array[Increase::Models::InboundCheckDeposit::Adjustment])
          .returns(T::Array[Increase::Models::InboundCheckDeposit::Adjustment])
      end
      def adjustments=(_)
      end

      # The deposited amount in USD cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The ID for the File containing the image of the back of the check.
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

      # The check number printed on the check being deposited.
      sig { returns(T.nilable(String)) }
      def check_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def check_number=(_)
      end

      # If this deposit is for an existing Check Transfer, the identifier of that Check
      #   Transfer.
      sig { returns(T.nilable(String)) }
      def check_transfer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def check_transfer_id=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the deposit was attempted.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the deposit.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # If the Inbound Check Deposit was declined, the
      #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which this
      #   took place.
      sig { returns(T.nilable(Time)) }
      def declined_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def declined_at=(_)
      end

      # If the deposit attempt has been rejected, the identifier of the Declined
      #   Transaction object created as a result of the failed deposit.
      sig { returns(T.nilable(String)) }
      def declined_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def declined_transaction_id=(_)
      end

      # If you requested a return of this deposit, this will contain details of the
      #   return.
      sig { returns(T.nilable(Increase::Models::InboundCheckDeposit::DepositReturn)) }
      def deposit_return
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundCheckDeposit::DepositReturn))
          .returns(T.nilable(Increase::Models::InboundCheckDeposit::DepositReturn))
      end
      def deposit_return=(_)
      end

      # The ID for the File containing the image of the front of the check.
      sig { returns(T.nilable(String)) }
      def front_image_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def front_image_file_id=(_)
      end

      # Whether the details on the check match the recipient name of the check transfer.
      #   This is an optional feature, contact sales to enable.
      sig { returns(Symbol) }
      def payee_name_analysis
      end

      sig { params(_: Symbol).returns(Symbol) }
      def payee_name_analysis=(_)
      end

      # The status of the Inbound Check Deposit.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # If the deposit attempt has been accepted, the identifier of the Transaction
      #   object created as a result of the successful deposit.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_check_deposit`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Inbound Check Deposits are records of third-parties attempting to deposit checks
      #   against your account.
      sig do
        params(
          id: String,
          accepted_at: T.nilable(Time),
          account_id: String,
          account_number_id: T.nilable(String),
          adjustments: T::Array[Increase::Models::InboundCheckDeposit::Adjustment],
          amount: Integer,
          back_image_file_id: T.nilable(String),
          bank_of_first_deposit_routing_number: T.nilable(String),
          check_number: T.nilable(String),
          check_transfer_id: T.nilable(String),
          created_at: Time,
          currency: Symbol,
          declined_at: T.nilable(Time),
          declined_transaction_id: T.nilable(String),
          deposit_return: T.nilable(Increase::Models::InboundCheckDeposit::DepositReturn),
          front_image_file_id: T.nilable(String),
          payee_name_analysis: Symbol,
          status: Symbol,
          transaction_id: T.nilable(String),
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        accepted_at:,
        account_id:,
        account_number_id:,
        adjustments:,
        amount:,
        back_image_file_id:,
        bank_of_first_deposit_routing_number:,
        check_number:,
        check_transfer_id:,
        created_at:,
        currency:,
        declined_at:,
        declined_transaction_id:,
        deposit_return:,
        front_image_file_id:,
        payee_name_analysis:,
        status:,
        transaction_id:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              accepted_at: T.nilable(Time),
              account_id: String,
              account_number_id: T.nilable(String),
              adjustments: T::Array[Increase::Models::InboundCheckDeposit::Adjustment],
              amount: Integer,
              back_image_file_id: T.nilable(String),
              bank_of_first_deposit_routing_number: T.nilable(String),
              check_number: T.nilable(String),
              check_transfer_id: T.nilable(String),
              created_at: Time,
              currency: Symbol,
              declined_at: T.nilable(Time),
              declined_transaction_id: T.nilable(String),
              deposit_return: T.nilable(Increase::Models::InboundCheckDeposit::DepositReturn),
              front_image_file_id: T.nilable(String),
              payee_name_analysis: Symbol,
              status: Symbol,
              transaction_id: T.nilable(String),
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Adjustment < Increase::BaseModel
        # The time at which the return adjustment was received.
        sig { returns(Time) }
        def adjusted_at
        end

        sig { params(_: Time).returns(Time) }
        def adjusted_at=(_)
        end

        # The amount of the adjustment.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The reason for the adjustment.
        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

        # The id of the transaction for the adjustment.
        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig do
          params(adjusted_at: Time, amount: Integer, reason: Symbol, transaction_id: String)
            .returns(T.attached_class)
        end
        def self.new(adjusted_at:, amount:, reason:, transaction_id:)
        end

        sig { override.returns({adjusted_at: Time, amount: Integer, reason: Symbol, transaction_id: String}) }
        def to_hash
        end

        # The reason for the adjustment.
        class Reason < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # The return was initiated too late and the receiving institution has responded with a Late Return Claim.
          LATE_RETURN = :late_return

          # The check was deposited to the wrong payee and the depositing institution has reimbursed the funds with a Wrong Payee Credit.
          WRONG_PAYEE_CREDIT = :wrong_payee_credit

          # The check was deposited with a different amount than what was written on the check.
          ADJUSTED_AMOUNT = :adjusted_amount

          # The recipient was not able to process the check. This usually happens for e.g., low quality images.
          NON_CONFORMING_ITEM = :non_conforming_item
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the deposit.
      class Currency < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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

      class DepositReturn < Increase::BaseModel
        # The reason the deposit was returned.
        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

        # The time at which the deposit was returned.
        sig { returns(Time) }
        def returned_at
        end

        sig { params(_: Time).returns(Time) }
        def returned_at=(_)
        end

        # The id of the transaction for the returned deposit.
        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        # If you requested a return of this deposit, this will contain details of the
        #   return.
        sig { params(reason: Symbol, returned_at: Time, transaction_id: String).returns(T.attached_class) }
        def self.new(reason:, returned_at:, transaction_id:)
        end

        sig { override.returns({reason: Symbol, returned_at: Time, transaction_id: String}) }
        def to_hash
        end

        # The reason the deposit was returned.
        class Reason < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

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

      # Whether the details on the check match the recipient name of the check transfer.
      #   This is an optional feature, contact sales to enable.
      class PayeeNameAnalysis < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The details on the check match the recipient name of the check transfer.
        NAME_MATCHES = :name_matches

        # The details on the check do not match the recipient name of the check transfer.
        DOES_NOT_MATCH = :does_not_match

        # The payee name analysis was not evaluated.
        NOT_EVALUATED = :not_evaluated
      end

      # The status of the Inbound Check Deposit.
      class Status < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_check_deposit`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        INBOUND_CHECK_DEPOSIT = :inbound_check_deposit
      end
    end
  end
end
