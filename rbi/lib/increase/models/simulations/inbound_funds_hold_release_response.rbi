# typed: strong

module Increase
  module Models
    module Simulations
      class InboundFundsHoldReleaseResponse < Increase::BaseModel
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
        sig { returns(Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol) }
        def currency
        end

        sig do
          params(_: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)
            .returns(Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)
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
        sig { returns(Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol) }
        def status
        end

        sig do
          params(_: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol)
            .returns(Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol)
        end
        def status=(_)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_funds_hold`.
        sig { returns(Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol)
            .returns(Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol)
        end
        def type=(_)
        end

        # We hold funds for certain transaction types to account for return windows where
        #   funds might still be clawed back by the sending institution.
        sig do
          params(
            id: String,
            amount: Integer,
            automatically_releases_at: Time,
            created_at: Time,
            currency: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol,
            held_transaction_id: T.nilable(String),
            pending_transaction_id: T.nilable(String),
            released_at: T.nilable(Time),
            status: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol,
            type: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol
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
                currency: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol,
                held_transaction_id: T.nilable(String),
                pending_transaction_id: T.nilable(String),
                released_at: T.nilable(Time),
                status: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol,
                type: Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol
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
            T.type_alias { T.all(Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol) }

          # Canadian Dollar (CAD)
          CAD = T.let(:CAD, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          # Swiss Franc (CHF)
          CHF = T.let(:CHF, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          # Euro (EUR)
          EUR = T.let(:EUR, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          # British Pound (GBP)
          GBP = T.let(:GBP, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          # Japanese Yen (JPY)
          JPY = T.let(:JPY, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)

          # US Dollar (USD)
          USD = T.let(:USD, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency::TaggedSymbol)
        end

        # The status of the hold.
        module Status
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol) }

          # Funds are still being held.
          HELD = T.let(:held, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol)

          # Funds have been released.
          COMPLETE =
            T.let(:complete, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status::TaggedSymbol)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_funds_hold`.
        module Type
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol) }

          INBOUND_FUNDS_HOLD =
            T.let(
              :inbound_funds_hold,
              Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type::TaggedSymbol
            )
        end
      end
    end
  end
end
