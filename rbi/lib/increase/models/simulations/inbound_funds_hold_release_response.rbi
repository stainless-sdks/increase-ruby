# typed: strong

module Increase
  module Models
    module Simulations
      class InboundFundsHoldReleaseResponse < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :automatically_releases_at

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Symbol) }
        attr_accessor :currency

        sig { returns(T.nilable(String)) }
        attr_accessor :held_transaction_id

        sig { returns(T.nilable(String)) }
        attr_accessor :pending_transaction_id

        sig { returns(T.nilable(Time)) }
        attr_accessor :released_at

        sig { returns(Symbol) }
        attr_accessor :status

        sig { returns(Symbol) }
        attr_accessor :type

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
          ).void
        end
        def initialize(
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
          override.returns(
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

        class Status < Increase::Enum
          abstract!

          # Funds are still being held.
          HELD = :held

          # Funds have been released.
          COMPLETE = :complete

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Type < Increase::Enum
          abstract!

          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
