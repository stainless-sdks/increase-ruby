# typed: strong

module Increase
  module Models
    class IntrafiBalance < Increase::BaseModel
      # The identifier of this balance.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # Each entry represents a balance held at a different bank. IntraFi separates the
      #   total balance across many participating banks in the network.
      sig { returns(T::Array[Increase::Models::IntrafiBalance::Balance]) }
      def balances
      end

      sig do
        params(_: T::Array[Increase::Models::IntrafiBalance::Balance])
          .returns(T::Array[Increase::Models::IntrafiBalance::Balance])
      end
      def balances=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the account
      #   currency.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # The date this balance reflects.
      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      # The total balance, in minor units of `currency`. Increase reports this balance
      #   to IntraFi daily.
      sig { returns(Integer) }
      def total_balance
      end

      sig { params(_: Integer).returns(Integer) }
      def total_balance=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `intrafi_balance`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # When using IntraFi, each account's balance over the standard FDIC insurance
      #   amount are swept to various other institutions. Funds are rebalanced across
      #   banks as needed once per business day.
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
        # The identifier of this balance.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # The balance, in minor units of `currency`, held with this bank.
        sig { returns(Integer) }
        def balance
        end

        sig { params(_: Integer).returns(Integer) }
        def balance=(_)
        end

        # The name of the bank holding these funds.
        sig { returns(String) }
        def bank
        end

        sig { params(_: String).returns(String) }
        def bank=(_)
        end

        # The primary location of the bank.
        sig { returns(T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation)) }
        def bank_location
        end

        sig do
          params(_: T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation))
            .returns(T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation))
        end
        def bank_location=(_)
        end

        # The Federal Deposit Insurance Corporation (FDIC) certificate number of the bank.
        #   Because many banks have the same or similar names, this can be used to uniquely
        #   identify the institution.
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
          # The bank's city.
          sig { returns(String) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # The bank's state.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # The primary location of the bank.
          sig { params(city: String, state: String).returns(T.attached_class) }
          def self.new(city:, state:)
          end

          sig { override.returns({city: String, state: String}) }
          def to_hash
          end
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the account
      #   currency.
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

      # A constant representing the object's type. For this resource it will always be
      #   `intrafi_balance`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        INTRAFI_BALANCE = :intrafi_balance
      end
    end
  end
end
