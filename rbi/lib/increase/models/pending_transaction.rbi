# typed: strong

module Increase
  module Models
    class PendingTransaction < Increase::BaseModel
      # The Pending Transaction identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the account this Pending Transaction belongs to.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The Pending Transaction amount in the minor unit of its currency. For dollars,
      #   for example, this is cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending
      #   Transaction was completed.
      sig { returns(T.nilable(Time)) }
      def completed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def completed_at=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending
      #   Transaction occurred.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Pending
      #   Transaction's currency. This will match the currency on the Pending
      #   Transaction's Account.
      sig { returns(Increase::Models::PendingTransaction::Currency::TaggedSymbol) }
      def currency
      end

      sig do
        params(_: Increase::Models::PendingTransaction::Currency::TaggedSymbol)
          .returns(Increase::Models::PendingTransaction::Currency::TaggedSymbol)
      end
      def currency=(_)
      end

      # For a Pending Transaction related to a transfer, this is the description you
      #   provide. For a Pending Transaction related to a payment, this is the description
      #   the vendor provides.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The identifier for the route this Pending Transaction came through. Routes are
      #   things like cards and ACH details.
      sig { returns(T.nilable(String)) }
      def route_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def route_id=(_)
      end

      # The type of the route this Pending Transaction came through.
      sig { returns(T.nilable(Increase::Models::PendingTransaction::RouteType::TaggedSymbol)) }
      def route_type
      end

      sig do
        params(_: T.nilable(Increase::Models::PendingTransaction::RouteType::TaggedSymbol))
          .returns(T.nilable(Increase::Models::PendingTransaction::RouteType::TaggedSymbol))
      end
      def route_type=(_)
      end

      # This is an object giving more details on the network-level event that caused the
      #   Pending Transaction. For example, for a card transaction this lists the
      #   merchant's industry and location.
      sig { returns(Increase::Models::PendingTransaction::Source) }
      def source
      end

      sig do
        params(_: T.any(Increase::Models::PendingTransaction::Source, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::PendingTransaction::Source, Increase::Util::AnyHash))
      end
      def source=(_)
      end

      # Whether the Pending Transaction has been confirmed and has an associated
      #   Transaction.
      sig { returns(Increase::Models::PendingTransaction::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::PendingTransaction::Status::TaggedSymbol)
          .returns(Increase::Models::PendingTransaction::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `pending_transaction`.
      sig { returns(Increase::Models::PendingTransaction::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::PendingTransaction::Type::TaggedSymbol)
          .returns(Increase::Models::PendingTransaction::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Pending Transactions are potential future additions and removals of money from
      #   your bank account.
      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          completed_at: T.nilable(Time),
          created_at: Time,
          currency: Increase::Models::PendingTransaction::Currency::OrSymbol,
          description: String,
          route_id: T.nilable(String),
          route_type: T.nilable(Increase::Models::PendingTransaction::RouteType::OrSymbol),
          source: T.any(Increase::Models::PendingTransaction::Source, Increase::Util::AnyHash),
          status: Increase::Models::PendingTransaction::Status::OrSymbol,
          type: Increase::Models::PendingTransaction::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        amount:,
        completed_at:,
        created_at:,
        currency:,
        description:,
        route_id:,
        route_type:,
        source:,
        status:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              amount: Integer,
              completed_at: T.nilable(Time),
              created_at: Time,
              currency: Increase::Models::PendingTransaction::Currency::TaggedSymbol,
              description: String,
              route_id: T.nilable(String),
              route_type: T.nilable(Increase::Models::PendingTransaction::RouteType::TaggedSymbol),
              source: Increase::Models::PendingTransaction::Source,
              status: Increase::Models::PendingTransaction::Status::TaggedSymbol,
              type: Increase::Models::PendingTransaction::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Pending
      #   Transaction's currency. This will match the currency on the Pending
      #   Transaction's Account.
      module Currency
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::PendingTransaction::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::PendingTransaction::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::PendingTransaction::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::PendingTransaction::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::PendingTransaction::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::PendingTransaction::Currency::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::PendingTransaction::Currency::TaggedSymbol]) }
          def values
          end
        end
      end

      # The type of the route this Pending Transaction came through.
      module RouteType
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::RouteType) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::RouteType::TaggedSymbol) }

        # An Account Number.
        ACCOUNT_NUMBER = T.let(:account_number, Increase::Models::PendingTransaction::RouteType::TaggedSymbol)

        # A Card.
        CARD = T.let(:card, Increase::Models::PendingTransaction::RouteType::TaggedSymbol)

        # A Lockbox.
        LOCKBOX = T.let(:lockbox, Increase::Models::PendingTransaction::RouteType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::PendingTransaction::RouteType::TaggedSymbol]) }
          def values
          end
        end
      end

      class Source < Increase::BaseModel
        # An Account Transfer Instruction object. This field will be present in the JSON
        #   response if and only if `category` is equal to `account_transfer_instruction`.
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::AccountTransferInstruction)) }
        def account_transfer_instruction
        end

        sig do
          params(
            _: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::AccountTransferInstruction, Increase::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(Increase::Models::PendingTransaction::Source::AccountTransferInstruction, Increase::Util::AnyHash)
              )
            )
        end
        def account_transfer_instruction=(_)
        end

        # An ACH Transfer Instruction object. This field will be present in the JSON
        #   response if and only if `category` is equal to `ach_transfer_instruction`.
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::ACHTransferInstruction)) }
        def ach_transfer_instruction
        end

        sig do
          params(
            _: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::ACHTransferInstruction, Increase::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(Increase::Models::PendingTransaction::Source::ACHTransferInstruction, Increase::Util::AnyHash)
              )
            )
        end
        def ach_transfer_instruction=(_)
        end

        # A Card Authorization object. This field will be present in the JSON response if
        #   and only if `category` is equal to `card_authorization`. Card Authorizations are
        #   temporary holds placed on a customers funds with the intent to later clear a
        #   transaction.
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization)) }
        def card_authorization
        end

        sig do
          params(
            _: T.nilable(T.any(Increase::Models::PendingTransaction::Source::CardAuthorization, Increase::Util::AnyHash))
          )
            .returns(
              T.nilable(T.any(Increase::Models::PendingTransaction::Source::CardAuthorization, Increase::Util::AnyHash))
            )
        end
        def card_authorization=(_)
        end

        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        sig { returns(Increase::Models::PendingTransaction::Source::Category::TaggedSymbol) }
        def category
        end

        sig do
          params(_: Increase::Models::PendingTransaction::Source::Category::TaggedSymbol)
            .returns(Increase::Models::PendingTransaction::Source::Category::TaggedSymbol)
        end
        def category=(_)
        end

        # A Check Deposit Instruction object. This field will be present in the JSON
        #   response if and only if `category` is equal to `check_deposit_instruction`.
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CheckDepositInstruction)) }
        def check_deposit_instruction
        end

        sig do
          params(
            _: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::CheckDepositInstruction, Increase::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(Increase::Models::PendingTransaction::Source::CheckDepositInstruction, Increase::Util::AnyHash)
              )
            )
        end
        def check_deposit_instruction=(_)
        end

        # A Check Transfer Instruction object. This field will be present in the JSON
        #   response if and only if `category` is equal to `check_transfer_instruction`.
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CheckTransferInstruction)) }
        def check_transfer_instruction
        end

        sig do
          params(
            _: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::CheckTransferInstruction, Increase::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(Increase::Models::PendingTransaction::Source::CheckTransferInstruction, Increase::Util::AnyHash)
              )
            )
        end
        def check_transfer_instruction=(_)
        end

        # An Inbound Funds Hold object. This field will be present in the JSON response if
        #   and only if `category` is equal to `inbound_funds_hold`. We hold funds for
        #   certain transaction types to account for return windows where funds might still
        #   be clawed back by the sending institution.
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::InboundFundsHold)) }
        def inbound_funds_hold
        end

        sig do
          params(
            _: T.nilable(T.any(Increase::Models::PendingTransaction::Source::InboundFundsHold, Increase::Util::AnyHash))
          )
            .returns(
              T.nilable(T.any(Increase::Models::PendingTransaction::Source::InboundFundsHold, Increase::Util::AnyHash))
            )
        end
        def inbound_funds_hold=(_)
        end

        # An Inbound Wire Transfer Reversal object. This field will be present in the JSON
        #   response if and only if `category` is equal to `inbound_wire_transfer_reversal`.
        #   An Inbound Wire Transfer Reversal is created when Increase has received a wire
        #   and the User requests that it be reversed.
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal)) }
        def inbound_wire_transfer_reversal
        end

        sig do
          params(
            _: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal, Increase::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal, Increase::Util::AnyHash)
              )
            )
        end
        def inbound_wire_transfer_reversal=(_)
        end

        # If the category of this Transaction source is equal to `other`, this field will
        #   contain an empty object, otherwise it will contain null.
        sig { returns(T.nilable(T.anything)) }
        def other
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def other=(_)
        end

        # A Real-Time Payments Transfer Instruction object. This field will be present in
        #   the JSON response if and only if `category` is equal to
        #   `real_time_payments_transfer_instruction`.
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction)) }
        def real_time_payments_transfer_instruction
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction,
                Increase::Util::AnyHash
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction,
                  Increase::Util::AnyHash
                )
              )
            )
        end
        def real_time_payments_transfer_instruction=(_)
        end

        # A Wire Transfer Instruction object. This field will be present in the JSON
        #   response if and only if `category` is equal to `wire_transfer_instruction`.
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::WireTransferInstruction)) }
        def wire_transfer_instruction
        end

        sig do
          params(
            _: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::WireTransferInstruction, Increase::Util::AnyHash)
            )
          )
            .returns(
              T.nilable(
                T.any(Increase::Models::PendingTransaction::Source::WireTransferInstruction, Increase::Util::AnyHash)
              )
            )
        end
        def wire_transfer_instruction=(_)
        end

        # This is an object giving more details on the network-level event that caused the
        #   Pending Transaction. For example, for a card transaction this lists the
        #   merchant's industry and location.
        sig do
          params(
            account_transfer_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::AccountTransferInstruction, Increase::Util::AnyHash)
            ),
            ach_transfer_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::ACHTransferInstruction, Increase::Util::AnyHash)
            ),
            card_authorization: T.nilable(T.any(Increase::Models::PendingTransaction::Source::CardAuthorization, Increase::Util::AnyHash)),
            category: Increase::Models::PendingTransaction::Source::Category::OrSymbol,
            check_deposit_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::CheckDepositInstruction, Increase::Util::AnyHash)
            ),
            check_transfer_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::CheckTransferInstruction, Increase::Util::AnyHash)
            ),
            inbound_funds_hold: T.nilable(T.any(Increase::Models::PendingTransaction::Source::InboundFundsHold, Increase::Util::AnyHash)),
            inbound_wire_transfer_reversal: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal, Increase::Util::AnyHash)
            ),
            other: T.nilable(T.anything),
            real_time_payments_transfer_instruction: T.nilable(
              T.any(
                Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction,
                Increase::Util::AnyHash
              )
            ),
            wire_transfer_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::WireTransferInstruction, Increase::Util::AnyHash)
            )
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_transfer_instruction:,
          ach_transfer_instruction:,
          card_authorization:,
          category:,
          check_deposit_instruction:,
          check_transfer_instruction:,
          inbound_funds_hold:,
          inbound_wire_transfer_reversal:,
          other:,
          real_time_payments_transfer_instruction:,
          wire_transfer_instruction:
        )
        end

        sig do
          override
            .returns(
              {
                account_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::AccountTransferInstruction),
                ach_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::ACHTransferInstruction),
                card_authorization: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization),
                category: Increase::Models::PendingTransaction::Source::Category::TaggedSymbol,
                check_deposit_instruction: T.nilable(Increase::Models::PendingTransaction::Source::CheckDepositInstruction),
                check_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::CheckTransferInstruction),
                inbound_funds_hold: T.nilable(Increase::Models::PendingTransaction::Source::InboundFundsHold),
                inbound_wire_transfer_reversal: T.nilable(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal),
                other: T.nilable(T.anything),
                real_time_payments_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction),
                wire_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::WireTransferInstruction)
              }
            )
        end
        def to_hash
        end

        class AccountTransferInstruction < Increase::BaseModel
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
          sig { returns(Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(
              _: Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol
            )
              .returns(Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # The identifier of the Account Transfer that led to this Pending Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An Account Transfer Instruction object. This field will be present in the JSON
          #   response if and only if `category` is equal to `account_transfer_instruction`.
          sig do
            params(
              amount: Integer,
              currency: Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::OrSymbol,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, currency:, transfer_id:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  currency: Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol,
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
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol
                )
              end

            # Canadian Dollar (CAD)
            CAD =
              T.let(
                :CAD,
                Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol
              )

            # Swiss Franc (CHF)
            CHF =
              T.let(
                :CHF,
                Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol
              )

            # Euro (EUR)
            EUR =
              T.let(
                :EUR,
                Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol
              )

            # British Pound (GBP)
            GBP =
              T.let(
                :GBP,
                Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol
              )

            # Japanese Yen (JPY)
            JPY =
              T.let(
                :JPY,
                Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol
              )

            # US Dollar (USD)
            USD =
              T.let(
                :USD,
                Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end

        class ACHTransferInstruction < Increase::BaseModel
          # The pending amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The identifier of the ACH Transfer that led to this Pending Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # An ACH Transfer Instruction object. This field will be present in the JSON
          #   response if and only if `category` is equal to `ach_transfer_instruction`.
          sig { params(amount: Integer, transfer_id: String).returns(T.attached_class) }
          def self.new(amount:, transfer_id:)
          end

          sig { override.returns({amount: Integer, transfer_id: String}) }
          def to_hash
          end
        end

        class CardAuthorization < Increase::BaseModel
          # The Card Authorization identifier.
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol) }
          def actioner
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol)
              .returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol)
          end
          def actioner=(_)
          end

          # The pending amount in the minor unit of the transaction's currency. For dollars,
          #   for example, this is cents.
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

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol)
              .returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # If the authorization was made via a Digital Wallet Token (such as an Apple Pay
          #   purchase), the identifier of the token that was used.
          sig { returns(T.nilable(String)) }
          def digital_wallet_token_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def digital_wallet_token_id=(_)
          end

          # The direction describes the direction the funds will move, either from the
          #   cardholder to the merchant or from the merchant to the cardholder.
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol) }
          def direction
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol)
              .returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol)
          end
          def direction=(_)
          end

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) when this authorization
          #   will expire and the pending transaction will be released.
          sig { returns(Time) }
          def expires_at
          end

          sig { params(_: Time).returns(Time) }
          def expires_at=(_)
          end

          # The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   is transacting with.
          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          # The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   card is transacting with.
          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          # The city the merchant resides in.
          sig { returns(T.nilable(String)) }
          def merchant_city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_city=(_)
          end

          # The country the merchant resides in.
          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          # The merchant descriptor of the merchant the card is transacting with.
          sig { returns(String) }
          def merchant_descriptor
          end

          sig { params(_: String).returns(String) }
          def merchant_descriptor=(_)
          end

          # The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   ZIP code, where the first 5 and last 4 are separated by a dash.
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

          # Fields specific to the `network`.
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails) }
          def network_details
          end

          sig do
            params(
              _: T.any(
                Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails,
                Increase::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails,
                  Increase::Util::AnyHash
                )
              )
          end
          def network_details=(_)
          end

          # Network-specific identifiers for a specific request or transaction.
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(
              _: T.any(
                Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers,
                Increase::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers,
                  Increase::Util::AnyHash
                )
              )
          end
          def network_identifiers=(_)
          end

          # The risk score generated by the card network. For Visa this is the Visa Advanced
          #   Authorization risk score, from 0 to 99, where 99 is the riskiest.
          sig { returns(T.nilable(Integer)) }
          def network_risk_score
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def network_risk_score=(_)
          end

          # The identifier of the Pending Transaction associated with this Transaction.
          sig { returns(T.nilable(String)) }
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
          end

          # If the authorization was made in-person with a physical card, the Physical Card
          #   that was used.
          sig { returns(T.nilable(String)) }
          def physical_card_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def physical_card_id=(_)
          end

          # The pending amount in the minor unit of the transaction's presentment currency.
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

          # The processing category describes the intent behind the authorization, such as
          #   whether it was used for bill payments or an automatic fuel dispenser.
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol) }
          def processing_category
          end

          sig do
            params(
              _: Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol
            )
              .returns(Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol)
          end
          def processing_category=(_)
          end

          # The identifier of the Real-Time Decision sent to approve or decline this
          #   transaction.
          sig { returns(T.nilable(String)) }
          def real_time_decision_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def real_time_decision_id=(_)
          end

          # The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   is transacting with.
          sig { returns(T.nilable(String)) }
          def terminal_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_)
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_authorization`.
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol) }
          def type
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol)
              .returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol)
          end
          def type=(_)
          end

          # Fields related to verification of cardholder-provided values.
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification) }
          def verification
          end

          sig do
            params(
              _: T.any(
                Increase::Models::PendingTransaction::Source::CardAuthorization::Verification,
                Increase::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification,
                  Increase::Util::AnyHash
                )
              )
          end
          def verification=(_)
          end

          # A Card Authorization object. This field will be present in the JSON response if
          #   and only if `category` is equal to `card_authorization`. Card Authorizations are
          #   temporary holds placed on a customers funds with the intent to later clear a
          #   transaction.
          sig do
            params(
              id: String,
              actioner: Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::OrSymbol,
              amount: Integer,
              card_payment_id: String,
              currency: Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::OrSymbol,
              digital_wallet_token_id: T.nilable(String),
              direction: Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::OrSymbol,
              expires_at: Time,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: String,
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_details: T.any(
                Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails,
                Increase::Util::AnyHash
              ),
              network_identifiers: T.any(
                Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers,
                Increase::Util::AnyHash
              ),
              network_risk_score: T.nilable(Integer),
              pending_transaction_id: T.nilable(String),
              physical_card_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              processing_category: Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::OrSymbol,
              real_time_decision_id: T.nilable(String),
              terminal_id: T.nilable(String),
              type: Increase::Models::PendingTransaction::Source::CardAuthorization::Type::OrSymbol,
              verification: T.any(
                Increase::Models::PendingTransaction::Source::CardAuthorization::Verification,
                Increase::Util::AnyHash
              )
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            actioner:,
            amount:,
            card_payment_id:,
            currency:,
            digital_wallet_token_id:,
            direction:,
            expires_at:,
            merchant_acceptor_id:,
            merchant_category_code:,
            merchant_city:,
            merchant_country:,
            merchant_descriptor:,
            merchant_postal_code:,
            merchant_state:,
            network_details:,
            network_identifiers:,
            network_risk_score:,
            pending_transaction_id:,
            physical_card_id:,
            presentment_amount:,
            presentment_currency:,
            processing_category:,
            real_time_decision_id:,
            terminal_id:,
            type:,
            verification:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  actioner: Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol,
                  amount: Integer,
                  card_payment_id: String,
                  currency: Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol,
                  digital_wallet_token_id: T.nilable(String),
                  direction: Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol,
                  expires_at: Time,
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_city: T.nilable(String),
                  merchant_country: String,
                  merchant_descriptor: String,
                  merchant_postal_code: T.nilable(String),
                  merchant_state: T.nilable(String),
                  network_details: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails,
                  network_identifiers: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers,
                  network_risk_score: T.nilable(Integer),
                  pending_transaction_id: T.nilable(String),
                  physical_card_id: T.nilable(String),
                  presentment_amount: Integer,
                  presentment_currency: String,
                  processing_category: Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol,
                  real_time_decision_id: T.nilable(String),
                  terminal_id: T.nilable(String),
                  type: Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol,
                  verification: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification
                }
              )
          end
          def to_hash
          end

          # Whether this authorization was approved by Increase, the card network through
          #   stand-in processing, or the user through a real-time decision.
          module Actioner
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol) }

            # This object was actioned by the user through a real-time decision.
            USER =
              T.let(:user, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol)

            # This object was actioned by Increase without user intervention.
            INCREASE =
              T.let(:increase, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol)

            # This object was actioned by the network, through stand-in processing.
            NETWORK =
              T.let(:network, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol)

            class << self
              sig do
                override
                  .returns(T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol])
              end
              def values
              end
            end
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD =
              T.let(:CAD, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF =
              T.let(:CHF, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR =
              T.let(:EUR, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP =
              T.let(:GBP, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY =
              T.let(:JPY, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD =
              T.let(:USD, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol)

            class << self
              sig do
                override
                  .returns(T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol])
              end
              def values
              end
            end
          end

          # The direction describes the direction the funds will move, either from the
          #   cardholder to the merchant or from the merchant to the cardholder.
          module Direction
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Direction) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol) }

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT =
              T.let(
                :settlement,
                Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol
              )

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND =
              T.let(:refund, Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol)

            class << self
              sig do
                override
                  .returns(
                    T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end

          class NetworkDetails < Increase::BaseModel
            # The payment network used to process this card authorization.
            sig do
              returns(
                Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol
              )
            end
            def category
            end

            sig do
              params(
                _: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol
              )
                .returns(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol
                )
            end
            def category=(_)
            end

            # Fields specific to the `visa` network.
            sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa)) }
            def visa
            end

            sig do
              params(
                _: T.nilable(
                  T.any(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa,
                    Increase::Util::AnyHash
                  )
                )
              )
                .returns(
                  T.nilable(
                    T.any(
                      Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa,
                      Increase::Util::AnyHash
                    )
                  )
                )
            end
            def visa=(_)
            end

            # Fields specific to the `network`.
            sig do
              params(
                category: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::OrSymbol,
                visa: T.nilable(
                  T.any(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa,
                    Increase::Util::AnyHash
                  )
                )
              )
                .returns(T.attached_class)
            end
            def self.new(category:, visa:)
            end

            sig do
              override
                .returns(
                  {
                    category: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol,
                    visa: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash
            end

            # The payment network used to process this card authorization.
            module Category
              extend Increase::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol
                  )
                end

              # Visa
              VISA =
                T.let(
                  :visa,
                  Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol]
                    )
                end
                def values
                end
              end
            end

            class Visa < Increase::BaseModel
              # For electronic commerce transactions, this identifies the level of security used
              #   in obtaining the customer's payment credential. For mail or telephone order
              #   transactions, identifies the type of mail or telephone order.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )
                )
              end
              def electronic_commerce_indicator
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                    )
                  )
              end
              def electronic_commerce_indicator=(_)
              end

              # The method used to enter the cardholder's primary account number and card
              #   expiration date.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )
                )
              end
              def point_of_service_entry_mode
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                    )
                  )
              end
              def point_of_service_entry_mode=(_)
              end

              # Only present when `actioner: network`. Describes why a card authorization was
              #   approved or declined by Visa through stand-in processing.
              sig do
                returns(
                  T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )
                )
              end
              def stand_in_processing_reason
              end

              sig do
                params(
                  _: T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )
                )
                  .returns(
                    T.nilable(
                      Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                    )
                  )
              end
              def stand_in_processing_reason=(_)
              end

              # Fields specific to the `visa` network.
              sig do
                params(
                  electronic_commerce_indicator: T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::OrSymbol
                  ),
                  point_of_service_entry_mode: T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::OrSymbol
                  ),
                  stand_in_processing_reason: T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::OrSymbol
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:)
              end

              sig do
                override
                  .returns(
                    {
                      electronic_commerce_indicator: T.nilable(
                        Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                      ),
                      point_of_service_entry_mode: T.nilable(
                        Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                      ),
                      stand_in_processing_reason: T.nilable(
                        Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                      )
                    }
                  )
              end
              def to_hash
              end

              # For electronic commerce transactions, this identifies the level of security used
              #   in obtaining the customer's payment credential. For mail or telephone order
              #   transactions, identifies the type of mail or telephone order.
              module ElectronicCommerceIndicator
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                    )
                  end

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER =
                  T.let(
                    :mail_phone_order,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING =
                  T.let(
                    :recurring,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT =
                  T.let(
                    :installment,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER =
                  T.let(
                    :unknown_mail_phone_order,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE =
                  T.let(
                    :secure_electronic_commerce,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  T.let(
                    :non_authenticated_security_transaction_at_3ds_capable_merchant,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION =
                  T.let(
                    :non_authenticated_security_transaction,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION =
                  T.let(
                    :non_secure_transaction,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end

              # The method used to enter the cardholder's primary account number and card
              #   expiration date.
              module PointOfServiceEntryMode
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                    )
                  end

                # Unknown
                UNKNOWN =
                  T.let(
                    :unknown,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Manual key entry
                MANUAL =
                  T.let(
                    :manual,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV =
                  T.let(
                    :magnetic_stripe_no_cvv,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Optical code
                OPTICAL_CODE =
                  T.let(
                    :optical_code,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD =
                  T.let(
                    :integrated_circuit_card,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contactless read of chip card
                CONTACTLESS =
                  T.let(
                    :contactless,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE =
                  T.let(
                    :credential_on_file,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Magnetic stripe read
                MAGNETIC_STRIPE =
                  T.let(
                    :magnetic_stripe,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE =
                  T.let(
                    :contactless_magnetic_stripe,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV =
                  T.let(
                    :integrated_circuit_card_no_cvv,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end

              # Only present when `actioner: network`. Describes why a card authorization was
              #   approved or declined by Visa through stand-in processing.
              module StandInProcessingReason
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                    )
                  end

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR =
                  T.let(
                    :issuer_error,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD =
                  T.let(
                    :invalid_physical_card,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE =
                  T.let(
                    :invalid_cardholder_authentication_verification_value,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR =
                  T.let(
                    :internal_visa_error,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED =
                  T.let(
                    :merchant_transaction_advisory_service_authentication_required,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK =
                  T.let(
                    :payment_fraud_disruption_acquirer_block,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # An unspecific reason for stand-in processing.
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            # A life-cycle identifier used across e.g., an authorization and a reversal.
            #   Expected to be unique per acquirer within a window of time. For some card
            #   networks the retrieval reference number includes the trace counter.
            sig { returns(T.nilable(String)) }
            def retrieval_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def retrieval_reference_number=(_)
            end

            # A counter used to verify an individual authorization. Expected to be unique per
            #   acquirer within a window of time.
            sig { returns(T.nilable(String)) }
            def trace_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def trace_number=(_)
            end

            # A globally unique transaction identifier provided by the card network, used
            #   across multiple life-cycle requests.
            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

            # Network-specific identifiers for a specific request or transaction.
            sig do
              params(
                retrieval_reference_number: T.nilable(String),
                trace_number: T.nilable(String),
                transaction_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(retrieval_reference_number:, trace_number:, transaction_id:)
            end

            sig do
              override
                .returns(
                  {
                    retrieval_reference_number: T.nilable(String),
                    trace_number: T.nilable(String),
                    transaction_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          # The processing category describes the intent behind the authorization, such as
          #   whether it was used for bill payments or an automatic fuel dispenser.
          module ProcessingCategory
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol
                )
              end

            # Account funding transactions are transactions used to e.g., fund an account or transfer funds between accounts.
            ACCOUNT_FUNDING =
              T.let(
                :account_funding,
                Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            # Automatic fuel dispenser authorizations occur when a card is used at a gas pump, prior to the actual transaction amount being known. They are followed by an advice message that updates the amount of the pending transaction.
            AUTOMATIC_FUEL_DISPENSER =
              T.let(
                :automatic_fuel_dispenser,
                Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            # A transaction used to pay a bill.
            BILL_PAYMENT =
              T.let(
                :bill_payment,
                Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            # A regular purchase.
            PURCHASE =
              T.let(
                :purchase,
                Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            # Quasi-cash transactions represent purchases of items which may be convertible to cash.
            QUASI_CASH =
              T.let(
                :quasi_cash,
                Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND =
              T.let(
                :refund,
                Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end

          # A constant representing the object's type. For this resource it will always be
          #   `card_authorization`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol) }

            CARD_AUTHORIZATION =
              T.let(
                :card_authorization,
                Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol])
              end
              def values
              end
            end
          end

          class Verification < Increase::BaseModel
            # Fields related to verification of the Card Verification Code, a 3-digit code on
            #   the back of the card.
            sig do
              returns(
                Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode
              )
            end
            def card_verification_code
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
                    Increase::Util::AnyHash
                  )
                )
            end
            def card_verification_code=(_)
            end

            # Cardholder address provided in the authorization request and the address on file
            #   we verified it against.
            sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress) }
            def cardholder_address
            end

            sig do
              params(
                _: T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress,
                  Increase::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress,
                    Increase::Util::AnyHash
                  )
                )
            end
            def cardholder_address=(_)
            end

            # Fields related to verification of cardholder-provided values.
            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
                  Increase::Util::AnyHash
                ),
                cardholder_address: T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress,
                  Increase::Util::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(card_verification_code:, cardholder_address:)
            end

            sig do
              override
                .returns(
                  {
                    card_verification_code: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
                    cardholder_address: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress
                  }
                )
            end
            def to_hash
            end

            class CardVerificationCode < Increase::BaseModel
              # The result of verifying the Card Verification Code.
              sig do
                returns(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                )
              end
              def result
              end

              sig do
                params(
                  _: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                )
                  .returns(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                  )
              end
              def result=(_)
              end

              # Fields related to verification of the Card Verification Code, a 3-digit code on
              #   the back of the card.
              sig do
                params(
                  result: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(result:)
              end

              sig do
                override
                  .returns(
                    {
                      result: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              # The result of verifying the Card Verification Code.
              module Result
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                    )
                  end

                # No card verification code was provided in the authorization request.
                NOT_CHECKED =
                  T.let(
                    :not_checked,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                # The card verification code matched the one on file.
                MATCH =
                  T.let(
                    :match,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                # The card verification code did not match the one on file.
                NO_MATCH =
                  T.let(
                    :no_match,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end
            end

            class CardholderAddress < Increase::BaseModel
              # Line 1 of the address on file for the cardholder.
              sig { returns(T.nilable(String)) }
              def actual_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_line1=(_)
              end

              # The postal code of the address on file for the cardholder.
              sig { returns(T.nilable(String)) }
              def actual_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_postal_code=(_)
              end

              # The cardholder address line 1 provided for verification in the authorization
              #   request.
              sig { returns(T.nilable(String)) }
              def provided_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_line1=(_)
              end

              # The postal code provided for verification in the authorization request.
              sig { returns(T.nilable(String)) }
              def provided_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_postal_code=(_)
              end

              # The address verification result returned to the card network.
              sig do
                returns(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )
              end
              def result
              end

              sig do
                params(
                  _: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )
                  .returns(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )
              end
              def result=(_)
              end

              # Cardholder address provided in the authorization request and the address on file
              #   we verified it against.
              sig do
                params(
                  actual_line1: T.nilable(String),
                  actual_postal_code: T.nilable(String),
                  provided_line1: T.nilable(String),
                  provided_postal_code: T.nilable(String),
                  result: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(actual_line1:, actual_postal_code:, provided_line1:, provided_postal_code:, result:)
              end

              sig do
                override
                  .returns(
                    {
                      actual_line1: T.nilable(String),
                      actual_postal_code: T.nilable(String),
                      provided_line1: T.nilable(String),
                      provided_postal_code: T.nilable(String),
                      result: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash
              end

              # The address verification result returned to the card network.
              module Result
                extend Increase::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                    )
                  end

                # No adress was provided in the authorization request.
                NOT_CHECKED =
                  T.let(
                    :not_checked,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED =
                  T.let(
                    :postal_code_match_address_not_checked,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH =
                  T.let(
                    :postal_code_match_address_no_match,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH =
                  T.let(
                    :postal_code_no_match_address_match,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code and street address match.
                MATCH =
                  T.let(
                    :match,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code and street address do not match.
                NO_MATCH =
                  T.let(
                    :no_match,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                class << self
                  sig do
                    override
                      .returns(
                        T::Array[
                        Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                        ]
                      )
                  end
                  def values
                  end
                end
              end
            end
          end
        end

        # The type of the resource. We may add additional possible values for this enum
        #   over time; your application should be able to handle such additions gracefully.
        module Category
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Source::Category::TaggedSymbol) }

          # Account Transfer Instruction: details will be under the `account_transfer_instruction` object.
          ACCOUNT_TRANSFER_INSTRUCTION =
            T.let(:account_transfer_instruction, Increase::Models::PendingTransaction::Source::Category::TaggedSymbol)

          # ACH Transfer Instruction: details will be under the `ach_transfer_instruction` object.
          ACH_TRANSFER_INSTRUCTION =
            T.let(:ach_transfer_instruction, Increase::Models::PendingTransaction::Source::Category::TaggedSymbol)

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION =
            T.let(:card_authorization, Increase::Models::PendingTransaction::Source::Category::TaggedSymbol)

          # Check Deposit Instruction: details will be under the `check_deposit_instruction` object.
          CHECK_DEPOSIT_INSTRUCTION =
            T.let(:check_deposit_instruction, Increase::Models::PendingTransaction::Source::Category::TaggedSymbol)

          # Check Transfer Instruction: details will be under the `check_transfer_instruction` object.
          CHECK_TRANSFER_INSTRUCTION =
            T.let(:check_transfer_instruction, Increase::Models::PendingTransaction::Source::Category::TaggedSymbol)

          # Inbound Funds Hold: details will be under the `inbound_funds_hold` object.
          INBOUND_FUNDS_HOLD =
            T.let(:inbound_funds_hold, Increase::Models::PendingTransaction::Source::Category::TaggedSymbol)

          # Real-Time Payments Transfer Instruction: details will be under the `real_time_payments_transfer_instruction` object.
          REAL_TIME_PAYMENTS_TRANSFER_INSTRUCTION =
            T.let(
              :real_time_payments_transfer_instruction,
              Increase::Models::PendingTransaction::Source::Category::TaggedSymbol
            )

          # Wire Transfer Instruction: details will be under the `wire_transfer_instruction` object.
          WIRE_TRANSFER_INSTRUCTION =
            T.let(:wire_transfer_instruction, Increase::Models::PendingTransaction::Source::Category::TaggedSymbol)

          # Inbound Wire Transfer Reversal: details will be under the `inbound_wire_transfer_reversal` object.
          INBOUND_WIRE_TRANSFER_REVERSAL =
            T.let(
              :inbound_wire_transfer_reversal,
              Increase::Models::PendingTransaction::Source::Category::TaggedSymbol
            )

          # The Pending Transaction was made for an undocumented or deprecated reason.
          OTHER = T.let(:other, Increase::Models::PendingTransaction::Source::Category::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::PendingTransaction::Source::Category::TaggedSymbol]) }
            def values
            end
          end
        end

        class CheckDepositInstruction < Increase::BaseModel
          # The pending amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The identifier of the File containing the image of the back of the check that
          #   was deposited.
          sig { returns(T.nilable(String)) }
          def back_image_file_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def back_image_file_id=(_)
          end

          # The identifier of the Check Deposit.
          sig { returns(T.nilable(String)) }
          def check_deposit_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def check_deposit_id=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   transaction's currency.
          sig { returns(Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol)
              .returns(Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # The identifier of the File containing the image of the front of the check that
          #   was deposited.
          sig { returns(String) }
          def front_image_file_id
          end

          sig { params(_: String).returns(String) }
          def front_image_file_id=(_)
          end

          # A Check Deposit Instruction object. This field will be present in the JSON
          #   response if and only if `category` is equal to `check_deposit_instruction`.
          sig do
            params(
              amount: Integer,
              back_image_file_id: T.nilable(String),
              check_deposit_id: T.nilable(String),
              currency: Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::OrSymbol,
              front_image_file_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, back_image_file_id:, check_deposit_id:, currency:, front_image_file_id:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  back_image_file_id: T.nilable(String),
                  check_deposit_id: T.nilable(String),
                  currency: Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol,
                  front_image_file_id: String
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
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol
                )
              end

            # Canadian Dollar (CAD)
            CAD =
              T.let(:CAD, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF =
              T.let(:CHF, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR =
              T.let(:EUR, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP =
              T.let(:GBP, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY =
              T.let(:JPY, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD =
              T.let(:USD, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol)

            class << self
              sig do
                override
                  .returns(
                    T::Array[Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end

        class CheckTransferInstruction < Increase::BaseModel
          # The transfer amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
          #   currency.
          sig { returns(Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol)
              .returns(Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # The identifier of the Check Transfer that led to this Pending Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # A Check Transfer Instruction object. This field will be present in the JSON
          #   response if and only if `category` is equal to `check_transfer_instruction`.
          sig do
            params(
              amount: Integer,
              currency: Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::OrSymbol,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, currency:, transfer_id:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  currency: Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol,
                  transfer_id: String
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol
                )
              end

            # Canadian Dollar (CAD)
            CAD =
              T.let(
                :CAD,
                Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol
              )

            # Swiss Franc (CHF)
            CHF =
              T.let(
                :CHF,
                Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol
              )

            # Euro (EUR)
            EUR =
              T.let(
                :EUR,
                Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol
              )

            # British Pound (GBP)
            GBP =
              T.let(
                :GBP,
                Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol
              )

            # Japanese Yen (JPY)
            JPY =
              T.let(
                :JPY,
                Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol
              )

            # US Dollar (USD)
            USD =
              T.let(
                :USD,
                Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(
                    T::Array[Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol]
                  )
              end
              def values
              end
            end
          end
        end

        class InboundFundsHold < Increase::BaseModel
          # The Inbound Funds Hold identifier.
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          # The held amount in the minor unit of the account's currency. For dollars, for
          #   example, this is cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # When the hold will be released automatically. Certain conditions may cause it to
          #   be released before this time.
          sig { returns(Time) }
          def automatically_releases_at
          end

          sig { params(_: Time).returns(Time) }
          def automatically_releases_at=(_)
          end

          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold
          #   was created.
          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
          #   currency.
          sig { returns(Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol) }
          def currency
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol)
              .returns(Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol)
          end
          def currency=(_)
          end

          # The ID of the Transaction for which funds were held.
          sig { returns(T.nilable(String)) }
          def held_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def held_transaction_id=(_)
          end

          # The ID of the Pending Transaction representing the held funds.
          sig { returns(T.nilable(String)) }
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
          end

          # When the hold was released (if it has been released).
          sig { returns(T.nilable(Time)) }
          def released_at
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def released_at=(_)
          end

          # The status of the hold.
          sig { returns(Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol) }
          def status
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol)
              .returns(Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol)
          end
          def status=(_)
          end

          # A constant representing the object's type. For this resource it will always be
          #   `inbound_funds_hold`.
          sig { returns(Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol) }
          def type
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol)
              .returns(Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol)
          end
          def type=(_)
          end

          # An Inbound Funds Hold object. This field will be present in the JSON response if
          #   and only if `category` is equal to `inbound_funds_hold`. We hold funds for
          #   certain transaction types to account for return windows where funds might still
          #   be clawed back by the sending institution.
          sig do
            params(
              id: String,
              amount: Integer,
              automatically_releases_at: Time,
              created_at: Time,
              currency: Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::OrSymbol,
              held_transaction_id: T.nilable(String),
              pending_transaction_id: T.nilable(String),
              released_at: T.nilable(Time),
              status: Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::OrSymbol,
              type: Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            automatically_releases_at:,
            created_at:,
            currency:,
            held_transaction_id:,
            pending_transaction_id:,
            released_at:,
            status:,
            type:
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  automatically_releases_at: Time,
                  created_at: Time,
                  currency: Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol,
                  held_transaction_id: T.nilable(String),
                  pending_transaction_id: T.nilable(String),
                  released_at: T.nilable(Time),
                  status: Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol,
                  type: Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
          #   currency.
          module Currency
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol)

            class << self
              sig do
                override
                  .returns(T::Array[Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol])
              end
              def values
              end
            end
          end

          # The status of the hold.
          module Status
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol) }

            # Funds are still being held.
            HELD = T.let(:held, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol)

            # Funds have been released.
            COMPLETE =
              T.let(:complete, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol)

            class << self
              sig do
                override
                  .returns(T::Array[Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol])
              end
              def values
              end
            end
          end

          # A constant representing the object's type. For this resource it will always be
          #   `inbound_funds_hold`.
          module Type
            extend Increase::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol) }

            INBOUND_FUNDS_HOLD =
              T.let(
                :inbound_funds_hold,
                Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol
              )

            class << self
              sig do
                override
                  .returns(T::Array[Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol])
              end
              def values
              end
            end
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

          # An Inbound Wire Transfer Reversal object. This field will be present in the JSON
          #   response if and only if `category` is equal to `inbound_wire_transfer_reversal`.
          #   An Inbound Wire Transfer Reversal is created when Increase has received a wire
          #   and the User requests that it be reversed.
          sig { params(inbound_wire_transfer_id: String).returns(T.attached_class) }
          def self.new(inbound_wire_transfer_id:)
          end

          sig { override.returns({inbound_wire_transfer_id: String}) }
          def to_hash
          end
        end

        class RealTimePaymentsTransferInstruction < Increase::BaseModel
          # The transfer amount in USD cents.
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          # The identifier of the Real-Time Payments Transfer that led to this Pending
          #   Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # A Real-Time Payments Transfer Instruction object. This field will be present in
          #   the JSON response if and only if `category` is equal to
          #   `real_time_payments_transfer_instruction`.
          sig { params(amount: Integer, transfer_id: String).returns(T.attached_class) }
          def self.new(amount:, transfer_id:)
          end

          sig { override.returns({amount: Integer, transfer_id: String}) }
          def to_hash
          end
        end

        class WireTransferInstruction < Increase::BaseModel
          # The account number for the destination account.
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

          # The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
          #   destination account.
          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          # The identifier of the Wire Transfer that led to this Pending Transaction.
          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          # A Wire Transfer Instruction object. This field will be present in the JSON
          #   response if and only if `category` is equal to `wire_transfer_instruction`.
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

      # Whether the Pending Transaction has been confirmed and has an associated
      #   Transaction.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Status::TaggedSymbol) }

        # The Pending Transaction is still awaiting confirmation.
        PENDING = T.let(:pending, Increase::Models::PendingTransaction::Status::TaggedSymbol)

        # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
        COMPLETE = T.let(:complete, Increase::Models::PendingTransaction::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::PendingTransaction::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `pending_transaction`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::PendingTransaction::Type::TaggedSymbol) }

        PENDING_TRANSACTION =
          T.let(:pending_transaction, Increase::Models::PendingTransaction::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::PendingTransaction::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
