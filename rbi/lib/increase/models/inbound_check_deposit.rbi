# typed: strong

module Increase
  module Models
    class InboundCheckDeposit < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Time)) }
      attr_accessor :accepted_at

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :account_number_id

      sig { returns(T::Array[Increase::Models::InboundCheckDeposit::Adjustment]) }
      attr_accessor :adjustments

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(String)) }
      attr_accessor :back_image_file_id

      sig { returns(T.nilable(String)) }
      attr_accessor :bank_of_first_deposit_routing_number

      sig { returns(T.nilable(String)) }
      attr_accessor :check_number

      sig { returns(T.nilable(String)) }
      attr_accessor :check_transfer_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(T.nilable(Time)) }
      attr_accessor :declined_at

      sig { returns(T.nilable(String)) }
      attr_accessor :declined_transaction_id

      sig { returns(T.nilable(Increase::Models::InboundCheckDeposit::DepositReturn)) }
      attr_accessor :deposit_return

      sig { returns(T.nilable(String)) }
      attr_accessor :front_image_file_id

      sig { returns(Symbol) }
      attr_accessor :payee_name_analysis

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
      end
      def initialize(
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
        override.returns(
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
        sig { returns(Time) }
        attr_accessor :adjusted_at

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Symbol) }
        attr_accessor :reason

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { params(adjusted_at: Time, amount: Integer, reason: Symbol, transaction_id: String).void }
        def initialize(adjusted_at:, amount:, reason:, transaction_id:)
        end

        sig { override.returns({adjusted_at: Time, amount: Integer, reason: Symbol, transaction_id: String}) }
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

      class DepositReturn < Increase::BaseModel
        sig { returns(Symbol) }
        attr_accessor :reason

        sig { returns(Time) }
        attr_accessor :returned_at

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { params(reason: Symbol, returned_at: Time, transaction_id: String).void }
        def initialize(reason:, returned_at:, transaction_id:)
        end

        sig { override.returns({reason: Symbol, returned_at: Time, transaction_id: String}) }
        def to_hash
        end

        class Reason < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class PayeeNameAnalysis < Increase::Enum
        abstract!

        # The details on the check match the recipient name of the check transfer.
        NAME_MATCHES = :name_matches

        # The details on the check do not match the recipient name of the check transfer.
        DOES_NOT_MATCH = :does_not_match

        # The payee name analysis was not evaluated.
        NOT_EVALUATED = :not_evaluated

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Increase::Enum
        abstract!

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        INBOUND_CHECK_DEPOSIT = :inbound_check_deposit

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
