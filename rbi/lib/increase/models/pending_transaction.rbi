# typed: strong

module Increase
  module Models
    class PendingTransaction < Increase::Internal::Type::BaseModel
      # #/components/schemas/pending_transaction/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/pending_transaction/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/pending_transaction/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/pending_transaction/properties/completed_at
      sig { returns(T.nilable(Time)) }
      attr_accessor :completed_at

      # #/components/schemas/pending_transaction/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/pending_transaction/properties/currency
      sig { returns(Increase::Models::PendingTransaction::Currency::TaggedSymbol) }
      attr_accessor :currency

      # #/components/schemas/pending_transaction/properties/description
      sig { returns(String) }
      attr_accessor :description

      # #/components/schemas/pending_transaction/properties/route_id
      sig { returns(T.nilable(String)) }
      attr_accessor :route_id

      # #/components/schemas/pending_transaction/properties/route_type
      sig { returns(T.nilable(Increase::Models::PendingTransaction::RouteType::TaggedSymbol)) }
      attr_accessor :route_type

      # #/components/schemas/pending_transaction/properties/source
      sig { returns(Increase::Models::PendingTransaction::Source) }
      attr_reader :source

      sig { params(source: T.any(Increase::Models::PendingTransaction::Source, Increase::Internal::AnyHash)).void }
      attr_writer :source

      # #/components/schemas/pending_transaction/properties/status
      sig { returns(Increase::Models::PendingTransaction::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/pending_transaction/properties/type
      sig { returns(Increase::Models::PendingTransaction::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/pending_transaction
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
          source: T.any(Increase::Models::PendingTransaction::Source, Increase::Internal::AnyHash),
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
      ); end
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
      def to_hash; end

      # #/components/schemas/pending_transaction/properties/currency
      module Currency
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Currency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::PendingTransaction::Currency::TaggedSymbol) }

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

        sig { override.returns(T::Array[Increase::Models::PendingTransaction::Currency::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/pending_transaction/properties/route_type
      module RouteType
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::RouteType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::PendingTransaction::RouteType::TaggedSymbol) }

        # An Account Number.
        ACCOUNT_NUMBER = T.let(:account_number, Increase::Models::PendingTransaction::RouteType::TaggedSymbol)

        # A Card.
        CARD = T.let(:card, Increase::Models::PendingTransaction::RouteType::TaggedSymbol)

        # A Lockbox.
        LOCKBOX = T.let(:lockbox, Increase::Models::PendingTransaction::RouteType::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::PendingTransaction::RouteType::TaggedSymbol]) }
        def self.values; end
      end

      class Source < Increase::Internal::Type::BaseModel
        # #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::AccountTransferInstruction)) }
        attr_reader :account_transfer_instruction

        sig do
          params(
            account_transfer_instruction: T.nilable(
              T.any(
                Increase::Models::PendingTransaction::Source::AccountTransferInstruction,
                Increase::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :account_transfer_instruction

        # #/components/schemas/pending_transaction/properties/source/properties/ach_transfer_instruction
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::ACHTransferInstruction)) }
        attr_reader :ach_transfer_instruction

        sig do
          params(
            ach_transfer_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::ACHTransferInstruction, Increase::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :ach_transfer_instruction

        # #/components/schemas/pending_transaction/properties/source/properties/card_authorization
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization)) }
        attr_reader :card_authorization

        sig do
          params(
            card_authorization: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::CardAuthorization, Increase::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :card_authorization

        # #/components/schemas/pending_transaction/properties/source/properties/category
        sig { returns(Increase::Models::PendingTransaction::Source::Category::TaggedSymbol) }
        attr_accessor :category

        # #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CheckDepositInstruction)) }
        attr_reader :check_deposit_instruction

        sig do
          params(
            check_deposit_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::CheckDepositInstruction, Increase::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :check_deposit_instruction

        # #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CheckTransferInstruction)) }
        attr_reader :check_transfer_instruction

        sig do
          params(
            check_transfer_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::CheckTransferInstruction, Increase::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :check_transfer_instruction

        # #/components/schemas/pending_transaction/properties/source/properties/inbound_funds_hold
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::InboundFundsHold)) }
        attr_reader :inbound_funds_hold

        sig do
          params(
            inbound_funds_hold: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::InboundFundsHold, Increase::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :inbound_funds_hold

        # #/components/schemas/pending_transaction/properties/source/properties/inbound_wire_transfer_reversal
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal)) }
        attr_reader :inbound_wire_transfer_reversal

        sig do
          params(
            inbound_wire_transfer_reversal: T.nilable(
              T.any(
                Increase::Models::PendingTransaction::Source::InboundWireTransferReversal,
                Increase::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :inbound_wire_transfer_reversal

        # #/components/schemas/pending_transaction/properties/source/properties/other
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :other

        # #/components/schemas/pending_transaction/properties/source/properties/real_time_payments_transfer_instruction
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction)) }
        attr_reader :real_time_payments_transfer_instruction

        sig do
          params(
            real_time_payments_transfer_instruction: T.nilable(
              T.any(
                Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction,
                Increase::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :real_time_payments_transfer_instruction

        # #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::WireTransferInstruction)) }
        attr_reader :wire_transfer_instruction

        sig do
          params(
            wire_transfer_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::WireTransferInstruction, Increase::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :wire_transfer_instruction

        # #/components/schemas/pending_transaction/properties/source
        sig do
          params(
            account_transfer_instruction: T.nilable(
              T.any(
                Increase::Models::PendingTransaction::Source::AccountTransferInstruction,
                Increase::Internal::AnyHash
              )
            ),
            ach_transfer_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::ACHTransferInstruction, Increase::Internal::AnyHash)
            ),
            card_authorization: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::CardAuthorization, Increase::Internal::AnyHash)
            ),
            category: Increase::Models::PendingTransaction::Source::Category::OrSymbol,
            check_deposit_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::CheckDepositInstruction, Increase::Internal::AnyHash)
            ),
            check_transfer_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::CheckTransferInstruction, Increase::Internal::AnyHash)
            ),
            inbound_funds_hold: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::InboundFundsHold, Increase::Internal::AnyHash)
            ),
            inbound_wire_transfer_reversal: T.nilable(
              T.any(
                Increase::Models::PendingTransaction::Source::InboundWireTransferReversal,
                Increase::Internal::AnyHash
              )
            ),
            other: T.nilable(T.anything),
            real_time_payments_transfer_instruction: T.nilable(
              T.any(
                Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction,
                Increase::Internal::AnyHash
              )
            ),
            wire_transfer_instruction: T.nilable(
              T.any(Increase::Models::PendingTransaction::Source::WireTransferInstruction, Increase::Internal::AnyHash)
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
        ); end
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
        def to_hash; end

        class AccountTransferInstruction < Increase::Internal::Type::BaseModel
          # #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction/anyOf/0/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction/anyOf/0/properties/currency
          sig { returns(Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol) }
          attr_accessor :currency

          # #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction/anyOf/0/properties/transfer_id
          sig { returns(String) }
          attr_accessor :transfer_id

          # #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction
          sig do
            params(
              amount: Integer,
              currency: Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::OrSymbol,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, currency:, transfer_id:); end

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
          def to_hash; end

          # #/components/schemas/pending_transaction/properties/source/properties/account_transfer_instruction/anyOf/0/properties/currency
          module Currency
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
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

            sig do
              override
                .returns(
                  T::Array[Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class ACHTransferInstruction < Increase::Internal::Type::BaseModel
          # #/components/schemas/pending_transaction/properties/source/properties/ach_transfer_instruction/anyOf/0/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/pending_transaction/properties/source/properties/ach_transfer_instruction/anyOf/0/properties/transfer_id
          sig { returns(String) }
          attr_accessor :transfer_id

          # #/components/schemas/pending_transaction/properties/source/properties/ach_transfer_instruction
          sig { params(amount: Integer, transfer_id: String).returns(T.attached_class) }
          def self.new(amount:, transfer_id:); end

          sig { override.returns({amount: Integer, transfer_id: String}) }
          def to_hash; end
        end

        class CardAuthorization < Increase::Internal::Type::BaseModel
          # #/components/schemas/card_authorization/properties/id
          sig { returns(String) }
          attr_accessor :id

          # #/components/schemas/card_authorization/properties/actioner
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol) }
          attr_accessor :actioner

          # #/components/schemas/card_authorization/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/card_authorization/properties/card_payment_id
          sig { returns(String) }
          attr_accessor :card_payment_id

          # #/components/schemas/card_authorization/properties/currency
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol) }
          attr_accessor :currency

          # #/components/schemas/card_authorization/properties/digital_wallet_token_id
          sig { returns(T.nilable(String)) }
          attr_accessor :digital_wallet_token_id

          # #/components/schemas/card_authorization/properties/direction
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol) }
          attr_accessor :direction

          # #/components/schemas/card_authorization/properties/expires_at
          sig { returns(Time) }
          attr_accessor :expires_at

          # #/components/schemas/card_authorization/properties/merchant_acceptor_id
          sig { returns(String) }
          attr_accessor :merchant_acceptor_id

          # #/components/schemas/card_authorization/properties/merchant_category_code
          sig { returns(String) }
          attr_accessor :merchant_category_code

          # #/components/schemas/card_authorization/properties/merchant_city
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_city

          # #/components/schemas/card_authorization/properties/merchant_country
          sig { returns(String) }
          attr_accessor :merchant_country

          # #/components/schemas/card_authorization/properties/merchant_descriptor
          sig { returns(String) }
          attr_accessor :merchant_descriptor

          # #/components/schemas/card_authorization/properties/merchant_postal_code
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_postal_code

          # #/components/schemas/card_authorization/properties/merchant_state
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_state

          # #/components/schemas/card_authorization/properties/network_details
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails) }
          attr_reader :network_details

          sig do
            params(
              network_details: T.any(
                Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :network_details

          # #/components/schemas/card_authorization/properties/network_identifiers
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers) }
          attr_reader :network_identifiers

          sig do
            params(
              network_identifiers: T.any(
                Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :network_identifiers

          # #/components/schemas/card_authorization/properties/network_risk_score
          sig { returns(T.nilable(Integer)) }
          attr_accessor :network_risk_score

          # #/components/schemas/card_authorization/properties/pending_transaction_id
          sig { returns(T.nilable(String)) }
          attr_accessor :pending_transaction_id

          # #/components/schemas/card_authorization/properties/physical_card_id
          sig { returns(T.nilable(String)) }
          attr_accessor :physical_card_id

          # #/components/schemas/card_authorization/properties/presentment_amount
          sig { returns(Integer) }
          attr_accessor :presentment_amount

          # #/components/schemas/card_authorization/properties/presentment_currency
          sig { returns(String) }
          attr_accessor :presentment_currency

          # #/components/schemas/card_authorization/properties/processing_category
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol) }
          attr_accessor :processing_category

          # #/components/schemas/card_authorization/properties/real_time_decision_id
          sig { returns(T.nilable(String)) }
          attr_accessor :real_time_decision_id

          # #/components/schemas/card_authorization/properties/terminal_id
          sig { returns(T.nilable(String)) }
          attr_accessor :terminal_id

          # #/components/schemas/card_authorization/properties/type
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol) }
          attr_accessor :type

          # #/components/schemas/card_authorization/properties/verification
          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification) }
          attr_reader :verification

          sig do
            params(
              verification: T.any(
                Increase::Models::PendingTransaction::Source::CardAuthorization::Verification,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :verification

          # #/components/schemas/pending_transaction/properties/source/properties/card_authorization
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
                Increase::Internal::AnyHash
              ),
              network_identifiers: T.any(
                Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers,
                Increase::Internal::AnyHash
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
                Increase::Internal::AnyHash
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
          ); end
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
          def to_hash; end

          # #/components/schemas/card_authorization/properties/actioner
          module Actioner
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol
                )
              end

            # This object was actioned by the user through a real-time decision.
            USER =
              T.let(:user, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol)

            # This object was actioned by Increase without user intervention.
            INCREASE =
              T.let(:increase, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol)

            # This object was actioned by the network, through stand-in processing.
            NETWORK =
              T.let(:network, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner::TaggedSymbol])
            end
            def self.values; end
          end

          # #/components/schemas/card_authorization/properties/currency
          module Currency
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol
                )
              end

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

            sig do
              override
                .returns(T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::Currency::TaggedSymbol])
            end
            def self.values; end
          end

          # #/components/schemas/card_authorization/properties/direction
          module Direction
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Direction) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol
                )
              end

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT =
              T.let(
                :settlement,
                Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol
              )

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND =
              T.let(:refund, Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::Direction::TaggedSymbol]
                )
            end
            def self.values; end
          end

          class NetworkDetails < Increase::Internal::Type::BaseModel
            # #/components/schemas/card_authorization/properties/network_details/properties/category
            sig do
              returns(
                Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol
              )
            end
            attr_accessor :category

            # #/components/schemas/card_authorization/properties/network_details/properties/visa
            sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa)) }
            attr_reader :visa

            sig do
              params(
                visa: T.nilable(
                  T.any(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa,
                    Increase::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :visa

            # #/components/schemas/card_authorization/properties/network_details
            sig do
              params(
                category: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::OrSymbol,
                visa: T.nilable(
                  T.any(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa,
                    Increase::Internal::AnyHash
                  )
                )
              )
                .returns(T.attached_class)
            end
            def self.new(category:, visa:); end

            sig do
              override
                .returns(
                  {
                    category: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol,
                    visa: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash; end

            # #/components/schemas/card_authorization/properties/network_details/properties/category
            module Category
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol
                  )
                end

              # Visa
              VISA =
                T.let(
                  :visa,
                  Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class Visa < Increase::Internal::Type::BaseModel
              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              sig do
                returns(
                  T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :electronic_commerce_indicator

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              sig do
                returns(
                  T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )
                )
              end
              attr_accessor :point_of_service_entry_mode

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              sig do
                returns(
                  T.nilable(
                    Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )
                )
              end
              attr_accessor :stand_in_processing_reason

              # #/components/schemas/card_authorization/properties/network_details/properties/visa
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
              def self.new(
                electronic_commerce_indicator:,
                point_of_service_entry_mode:,
                stand_in_processing_reason:
              )
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
              def to_hash; end

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              module ElectronicCommerceIndicator
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
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

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              module PointOfServiceEntryMode
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
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

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end

              # #/components/schemas/card_authorization/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              module StandInProcessingReason
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
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

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # #/components/schemas/card_authorization/properties/network_identifiers/properties/retrieval_reference_number
            sig { returns(T.nilable(String)) }
            attr_accessor :retrieval_reference_number

            # #/components/schemas/card_authorization/properties/network_identifiers/properties/trace_number
            sig { returns(T.nilable(String)) }
            attr_accessor :trace_number

            # #/components/schemas/card_authorization/properties/network_identifiers/properties/transaction_id
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

            # #/components/schemas/card_authorization/properties/network_identifiers
            sig do
              params(
                retrieval_reference_number: T.nilable(String),
                trace_number: T.nilable(String),
                transaction_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(retrieval_reference_number:, trace_number:, transaction_id:); end

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
            def to_hash; end
          end

          # #/components/schemas/card_authorization/properties/processing_category
          module ProcessingCategory
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
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

            sig do
              override
                .returns(
                  T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory::TaggedSymbol]
                )
            end
            def self.values; end
          end

          # #/components/schemas/card_authorization/properties/type
          module Type
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol) }

            CARD_AUTHORIZATION =
              T.let(
                :card_authorization,
                Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::PendingTransaction::Source::CardAuthorization::Type::TaggedSymbol])
            end
            def self.values; end
          end

          class Verification < Increase::Internal::Type::BaseModel
            # #/components/schemas/card_authorization/properties/verification/properties/card_verification_code
            sig do
              returns(
                Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode
              )
            end
            attr_reader :card_verification_code

            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :card_verification_code

            # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address
            sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress) }
            attr_reader :cardholder_address

            sig do
              params(
                cardholder_address: T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :cardholder_address

            # #/components/schemas/card_authorization/properties/verification
            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
                  Increase::Internal::AnyHash
                ),
                cardholder_address: T.any(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress,
                  Increase::Internal::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(card_verification_code:, cardholder_address:); end

            sig do
              override
                .returns(
                  {
                    card_verification_code: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
                    cardholder_address: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress
                  }
                )
            end
            def to_hash; end

            class CardVerificationCode < Increase::Internal::Type::BaseModel
              # #/components/schemas/card_authorization/properties/verification/properties/card_verification_code/properties/result
              sig do
                returns(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                )
              end
              attr_accessor :result

              # #/components/schemas/card_authorization/properties/verification/properties/card_verification_code
              sig do
                params(
                  result: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(result:); end

              sig do
                override
                  .returns(
                    {
                      result: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash; end

              # #/components/schemas/card_authorization/properties/verification/properties/card_verification_code/properties/result
              module Result
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
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

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class CardholderAddress < Increase::Internal::Type::BaseModel
              # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/actual_line1
              sig { returns(T.nilable(String)) }
              attr_accessor :actual_line1

              # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/actual_postal_code
              sig { returns(T.nilable(String)) }
              attr_accessor :actual_postal_code

              # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/provided_line1
              sig { returns(T.nilable(String)) }
              attr_accessor :provided_line1

              # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/provided_postal_code
              sig { returns(T.nilable(String)) }
              attr_accessor :provided_postal_code

              # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/result
              sig do
                returns(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                )
              end
              attr_accessor :result

              # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address
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
              def self.new(
                actual_line1:,
                actual_postal_code:,
                provided_line1:,
                provided_postal_code:,
                result:
              )
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
              def to_hash; end

              # #/components/schemas/card_authorization/properties/verification/properties/cardholder_address/properties/result
              module Result
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                    )
                  end

                # No address was provided in the authorization request.
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

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end
        end

        # #/components/schemas/pending_transaction/properties/source/properties/category
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::PendingTransaction::Source::Category::TaggedSymbol) }

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

          sig { override.returns(T::Array[Increase::Models::PendingTransaction::Source::Category::TaggedSymbol]) }
          def self.values; end
        end

        class CheckDepositInstruction < Increase::Internal::Type::BaseModel
          # #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/back_image_file_id
          sig { returns(T.nilable(String)) }
          attr_accessor :back_image_file_id

          # #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/check_deposit_id
          sig { returns(T.nilable(String)) }
          attr_accessor :check_deposit_id

          # #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/currency
          sig { returns(Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol) }
          attr_accessor :currency

          # #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/front_image_file_id
          sig { returns(String) }
          attr_accessor :front_image_file_id

          # #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction
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
          def self.new(amount:, back_image_file_id:, check_deposit_id:, currency:, front_image_file_id:); end

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
          def to_hash; end

          # #/components/schemas/pending_transaction/properties/source/properties/check_deposit_instruction/anyOf/0/properties/currency
          module Currency
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
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

            sig do
              override
                .returns(
                  T::Array[Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class CheckTransferInstruction < Increase::Internal::Type::BaseModel
          # #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction/anyOf/0/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction/anyOf/0/properties/currency
          sig { returns(Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol) }
          attr_accessor :currency

          # #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction/anyOf/0/properties/transfer_id
          sig { returns(String) }
          attr_accessor :transfer_id

          # #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction
          sig do
            params(
              amount: Integer,
              currency: Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::OrSymbol,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(amount:, currency:, transfer_id:); end

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
          def to_hash; end

          # #/components/schemas/pending_transaction/properties/source/properties/check_transfer_instruction/anyOf/0/properties/currency
          module Currency
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
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

            sig do
              override
                .returns(
                  T::Array[Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class InboundFundsHold < Increase::Internal::Type::BaseModel
          # #/components/schemas/inbound_funds_hold/properties/id
          sig { returns(String) }
          attr_accessor :id

          # #/components/schemas/inbound_funds_hold/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/inbound_funds_hold/properties/automatically_releases_at
          sig { returns(Time) }
          attr_accessor :automatically_releases_at

          # #/components/schemas/inbound_funds_hold/properties/created_at
          sig { returns(Time) }
          attr_accessor :created_at

          # #/components/schemas/inbound_funds_hold/properties/currency
          sig { returns(Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol) }
          attr_accessor :currency

          # #/components/schemas/inbound_funds_hold/properties/held_transaction_id
          sig { returns(T.nilable(String)) }
          attr_accessor :held_transaction_id

          # #/components/schemas/inbound_funds_hold/properties/pending_transaction_id
          sig { returns(T.nilable(String)) }
          attr_accessor :pending_transaction_id

          # #/components/schemas/inbound_funds_hold/properties/released_at
          sig { returns(T.nilable(Time)) }
          attr_accessor :released_at

          # #/components/schemas/inbound_funds_hold/properties/status
          sig { returns(Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol) }
          attr_accessor :status

          # #/components/schemas/inbound_funds_hold/properties/type
          sig { returns(Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol) }
          attr_accessor :type

          # #/components/schemas/pending_transaction/properties/source/properties/inbound_funds_hold
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
          ); end
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
          def to_hash; end

          # #/components/schemas/inbound_funds_hold/properties/currency
          module Currency
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol
                )
              end

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

            sig do
              override
                .returns(T::Array[Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency::TaggedSymbol])
            end
            def self.values; end
          end

          # #/components/schemas/inbound_funds_hold/properties/status
          module Status
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol
                )
              end

            # Funds are still being held.
            HELD = T.let(:held, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol)

            # Funds have been released.
            COMPLETE =
              T.let(:complete, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::PendingTransaction::Source::InboundFundsHold::Status::TaggedSymbol])
            end
            def self.values; end
          end

          # #/components/schemas/inbound_funds_hold/properties/type
          module Type
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol) }

            INBOUND_FUNDS_HOLD =
              T.let(
                :inbound_funds_hold,
                Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::PendingTransaction::Source::InboundFundsHold::Type::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class InboundWireTransferReversal < Increase::Internal::Type::BaseModel
          # #/components/schemas/inbound_wire_transfer_reversal/properties/inbound_wire_transfer_id
          sig { returns(String) }
          attr_accessor :inbound_wire_transfer_id

          # #/components/schemas/pending_transaction/properties/source/properties/inbound_wire_transfer_reversal
          sig { params(inbound_wire_transfer_id: String).returns(T.attached_class) }
          def self.new(inbound_wire_transfer_id:); end

          sig { override.returns({inbound_wire_transfer_id: String}) }
          def to_hash; end
        end

        class RealTimePaymentsTransferInstruction < Increase::Internal::Type::BaseModel
          # #/components/schemas/pending_transaction/properties/source/properties/real_time_payments_transfer_instruction/anyOf/0/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/pending_transaction/properties/source/properties/real_time_payments_transfer_instruction/anyOf/0/properties/transfer_id
          sig { returns(String) }
          attr_accessor :transfer_id

          # #/components/schemas/pending_transaction/properties/source/properties/real_time_payments_transfer_instruction
          sig { params(amount: Integer, transfer_id: String).returns(T.attached_class) }
          def self.new(amount:, transfer_id:); end

          sig { override.returns({amount: Integer, transfer_id: String}) }
          def to_hash; end
        end

        class WireTransferInstruction < Increase::Internal::Type::BaseModel
          # #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction/anyOf/0/properties/account_number
          sig { returns(String) }
          attr_accessor :account_number

          # #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction/anyOf/0/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction/anyOf/0/properties/message_to_recipient
          sig { returns(String) }
          attr_accessor :message_to_recipient

          # #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction/anyOf/0/properties/routing_number
          sig { returns(String) }
          attr_accessor :routing_number

          # #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction/anyOf/0/properties/transfer_id
          sig { returns(String) }
          attr_accessor :transfer_id

          # #/components/schemas/pending_transaction/properties/source/properties/wire_transfer_instruction
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
          def self.new(account_number:, amount:, message_to_recipient:, routing_number:, transfer_id:); end

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
          def to_hash; end
        end
      end

      # #/components/schemas/pending_transaction/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::PendingTransaction::Status::TaggedSymbol) }

        # The Pending Transaction is still awaiting confirmation.
        PENDING = T.let(:pending, Increase::Models::PendingTransaction::Status::TaggedSymbol)

        # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
        COMPLETE = T.let(:complete, Increase::Models::PendingTransaction::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::PendingTransaction::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/pending_transaction/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransaction::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::PendingTransaction::Type::TaggedSymbol) }

        PENDING_TRANSACTION =
          T.let(:pending_transaction, Increase::Models::PendingTransaction::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::PendingTransaction::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
