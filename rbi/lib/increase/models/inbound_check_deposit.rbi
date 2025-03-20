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
      sig { returns(Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol)
          .returns(Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol)
      end
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
        params(_: T.nilable(T.any(Increase::Models::InboundCheckDeposit::DepositReturn, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::InboundCheckDeposit::DepositReturn, Increase::Util::AnyHash)))
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
      sig { returns(Increase::Models::InboundCheckDeposit::PayeeNameAnalysis::TaggedSymbol) }
      def payee_name_analysis
      end

      sig do
        params(_: Increase::Models::InboundCheckDeposit::PayeeNameAnalysis::TaggedSymbol)
          .returns(Increase::Models::InboundCheckDeposit::PayeeNameAnalysis::TaggedSymbol)
      end
      def payee_name_analysis=(_)
      end

      # The status of the Inbound Check Deposit.
      sig { returns(Increase::Models::InboundCheckDeposit::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::InboundCheckDeposit::Status::TaggedSymbol)
          .returns(Increase::Models::InboundCheckDeposit::Status::TaggedSymbol)
      end
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
      sig { returns(Increase::Models::InboundCheckDeposit::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::InboundCheckDeposit::Type::TaggedSymbol)
          .returns(Increase::Models::InboundCheckDeposit::Type::TaggedSymbol)
      end
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
          currency: Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol,
          declined_at: T.nilable(Time),
          declined_transaction_id: T.nilable(String),
          deposit_return: T.nilable(Increase::Models::InboundCheckDeposit::DepositReturn),
          front_image_file_id: T.nilable(String),
          payee_name_analysis: Increase::Models::InboundCheckDeposit::PayeeNameAnalysis::TaggedSymbol,
          status: Increase::Models::InboundCheckDeposit::Status::TaggedSymbol,
          transaction_id: T.nilable(String),
          type: Increase::Models::InboundCheckDeposit::Type::TaggedSymbol
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
              currency: Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol,
              declined_at: T.nilable(Time),
              declined_transaction_id: T.nilable(String),
              deposit_return: T.nilable(Increase::Models::InboundCheckDeposit::DepositReturn),
              front_image_file_id: T.nilable(String),
              payee_name_analysis: Increase::Models::InboundCheckDeposit::PayeeNameAnalysis::TaggedSymbol,
              status: Increase::Models::InboundCheckDeposit::Status::TaggedSymbol,
              transaction_id: T.nilable(String),
              type: Increase::Models::InboundCheckDeposit::Type::TaggedSymbol
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
        sig { returns(Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol) }
        def reason
        end

        sig do
          params(_: Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol)
            .returns(Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol)
        end
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
          params(
            adjusted_at: Time,
            amount: Integer,
            reason: Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol,
            transaction_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(adjusted_at:, amount:, reason:, transaction_id:)
        end

        sig do
          override
            .returns(
              {
                adjusted_at: Time,
                amount: Integer,
                reason: Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol,
                transaction_id: String
              }
            )
        end
        def to_hash
        end

        # The reason for the adjustment.
        module Reason
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundCheckDeposit::Adjustment::Reason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol) }

          # The return was initiated too late and the receiving institution has responded with a Late Return Claim.
          LATE_RETURN =
            T.let(:late_return, Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol)

          # The check was deposited to the wrong payee and the depositing institution has reimbursed the funds with a Wrong Payee Credit.
          WRONG_PAYEE_CREDIT =
            T.let(:wrong_payee_credit, Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol)

          # The check was deposited with a different amount than what was written on the check.
          ADJUSTED_AMOUNT =
            T.let(:adjusted_amount, Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol)

          # The recipient was not able to process the check. This usually happens for e.g., low quality images.
          NON_CONFORMING_ITEM =
            T.let(:non_conforming_item, Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::InboundCheckDeposit::Adjustment::Reason::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the deposit.
      module Currency
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundCheckDeposit::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::InboundCheckDeposit::Currency::TaggedSymbol]) }
          def values
          end
        end
      end

      class DepositReturn < Increase::BaseModel
        # The reason the deposit was returned.
        sig { returns(Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol) }
        def reason
        end

        sig do
          params(_: Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol)
            .returns(Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol)
        end
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
        sig do
          params(
            reason: Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol,
            returned_at: Time,
            transaction_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(reason:, returned_at:, transaction_id:)
        end

        sig do
          override
            .returns(
              {
                reason: Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol,
                returned_at: Time,
                transaction_id: String
              }
            )
        end
        def to_hash
        end

        # The reason the deposit was returned.
        module Reason
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::InboundCheckDeposit::DepositReturn::Reason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol) }

          # The check was altered or fictitious.
          ALTERED_OR_FICTITIOUS =
            T.let(:altered_or_fictitious, Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol)

          # The check was not authorized.
          NOT_AUTHORIZED =
            T.let(:not_authorized, Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol)

          # The check was a duplicate presentment.
          DUPLICATE_PRESENTMENT =
            T.let(:duplicate_presentment, Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol)

          # The check was not endorsed.
          ENDORSEMENT_MISSING =
            T.let(:endorsement_missing, Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol)

          # The check was not endorsed by the payee.
          ENDORSEMENT_IRREGULAR =
            T.let(:endorsement_irregular, Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::InboundCheckDeposit::DepositReturn::Reason::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      # Whether the details on the check match the recipient name of the check transfer.
      #   This is an optional feature, contact sales to enable.
      module PayeeNameAnalysis
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundCheckDeposit::PayeeNameAnalysis) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::InboundCheckDeposit::PayeeNameAnalysis::TaggedSymbol) }

        # The details on the check match the recipient name of the check transfer.
        NAME_MATCHES =
          T.let(:name_matches, Increase::Models::InboundCheckDeposit::PayeeNameAnalysis::TaggedSymbol)

        # The details on the check do not match the recipient name of the check transfer.
        DOES_NOT_MATCH =
          T.let(:does_not_match, Increase::Models::InboundCheckDeposit::PayeeNameAnalysis::TaggedSymbol)

        # The payee name analysis was not evaluated.
        NOT_EVALUATED =
          T.let(:not_evaluated, Increase::Models::InboundCheckDeposit::PayeeNameAnalysis::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::InboundCheckDeposit::PayeeNameAnalysis::TaggedSymbol]) }
          def values
          end
        end
      end

      # The status of the Inbound Check Deposit.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundCheckDeposit::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::InboundCheckDeposit::Status::TaggedSymbol) }

        # The Inbound Check Deposit is pending.
        PENDING = T.let(:pending, Increase::Models::InboundCheckDeposit::Status::TaggedSymbol)

        # The Inbound Check Deposit was accepted.
        ACCEPTED = T.let(:accepted, Increase::Models::InboundCheckDeposit::Status::TaggedSymbol)

        # The Inbound Check Deposit was rejected.
        DECLINED = T.let(:declined, Increase::Models::InboundCheckDeposit::Status::TaggedSymbol)

        # The Inbound Check Deposit was returned.
        RETURNED = T.let(:returned, Increase::Models::InboundCheckDeposit::Status::TaggedSymbol)

        # The Inbound Check Deposit requires attention from an Increase operator.
        REQUIRES_ATTENTION =
          T.let(:requires_attention, Increase::Models::InboundCheckDeposit::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::InboundCheckDeposit::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_check_deposit`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundCheckDeposit::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::InboundCheckDeposit::Type::TaggedSymbol) }

        INBOUND_CHECK_DEPOSIT =
          T.let(:inbound_check_deposit, Increase::Models::InboundCheckDeposit::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::InboundCheckDeposit::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
