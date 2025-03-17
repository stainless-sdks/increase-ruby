# typed: strong

module Increase
  module Models
    class IntrafiBalance < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T::Array[Increase::Models::IntrafiBalance::Balance]) }
      def balances
      end

      sig do
        params(_: T::Array[Increase::Models::IntrafiBalance::Balance])
          .returns(T::Array[Increase::Models::IntrafiBalance::Balance])
      end
      def balances=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      sig { returns(Integer) }
      def total_balance
      end

      sig { params(_: Integer).returns(Integer) }
      def total_balance=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          id: String,
          balances: T::Array[Increase::Models::IntrafiBalance::Balance],
          currency: Symbol,
          effective_date: Date,
          total_balance: Integer,
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, balances:, currency:, effective_date:, total_balance:, type:)
      end

      sig do
        override
          .returns(
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
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Integer) }
        def balance
        end

        sig { params(_: Integer).returns(Integer) }
        def balance=(_)
        end

        sig { returns(String) }
        def bank
        end

        sig { params(_: String).returns(String) }
        def bank=(_)
        end

        sig { returns(T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation)) }
        def bank_location
        end

        sig do
          params(_: T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation))
            .returns(T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation))
        end
        def bank_location=(_)
        end

        sig { returns(String) }
        def fdic_certificate_number
        end

        sig { params(_: String).returns(String) }
        def fdic_certificate_number=(_)
        end

        sig do
          params(
            id: String,
            balance: Integer,
            bank: String,
            bank_location: T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation),
            fdic_certificate_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(id:, balance:, bank:, bank_location:, fdic_certificate_number:)
        end

        sig do
          override
            .returns(
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
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          sig { params(city: String, state: String).returns(T.attached_class) }
          def self.new(city:, state:)
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        INTRAFI_BALANCE = :intrafi_balance

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
