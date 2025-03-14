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
        sig { returns(Symbol) }
        def currency
        end

        sig { params(_: Symbol).returns(Symbol) }
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
        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_funds_hold`.
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
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
            currency: Symbol,
            held_transaction_id: T.nilable(String),
            pending_transaction_id: T.nilable(String),
            released_at: T.nilable(Time),
            status: Symbol,
            type: Symbol
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
                currency: Symbol,
                held_transaction_id: T.nilable(String),
                pending_transaction_id: T.nilable(String),
                released_at: T.nilable(Time),
                status: Symbol,
                type: Symbol
              }
            )
        end
        def to_hash
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
        #   currency.
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        # The status of the hold.
        class Status < Increase::Enum
          abstract!

          # Funds are still being held.
          HELD = :held

          # Funds have been released.
          COMPLETE = :complete

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_funds_hold`.
        class Type < Increase::Enum
          abstract!

          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
