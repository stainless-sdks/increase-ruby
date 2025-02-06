# typed: strong

module Increase
  module Models
    class IntrafiBalance < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[Increase::Models::IntrafiBalance::Balance]) }
      attr_accessor :balances

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(Date) }
      attr_accessor :effective_date

      sig { returns(Integer) }
      attr_accessor :total_balance

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          balances: T::Array[Increase::Models::IntrafiBalance::Balance],
          currency: Symbol,
          effective_date: Date,
          total_balance: Integer,
          type: Symbol
        ).void
      end
      def initialize(id:, balances:, currency:, effective_date:, total_balance:, type:)
      end

      sig do
        override.returns(
          {
            id: String,
            balances: T::Array[Increase::Models::IntrafiBalance::Balance],
            currency: Symbol,
            effective_date: Date,
            total_balance: Integer,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Balance < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :balance

        sig { returns(String) }
        attr_accessor :bank

        sig { returns(T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation)) }
        attr_accessor :bank_location

        sig { returns(String) }
        attr_accessor :fdic_certificate_number

        sig do
          params(
            id: String,
            balance: Integer,
            bank: String,
            bank_location: T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation),
            fdic_certificate_number: String
          ).void
        end
        def initialize(id:, balance:, bank:, bank_location:, fdic_certificate_number:)
        end

        sig do
          override.returns(
            {
              id: String,
              balance: Integer,
              bank: String,
              bank_location: T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation),
              fdic_certificate_number: String
            }
          )
        end
        def to_hash
        end

        class BankLocation < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :city

          sig { returns(String) }
          attr_accessor :state

          sig { params(city: String, state: String).void }
          def initialize(city:, state:)
          end

          sig { override.returns({city: String, state: String}) }
          def to_hash
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

      class Type < Increase::Enum
        abstract!

        INTRAFI_BALANCE = :intrafi_balance

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
