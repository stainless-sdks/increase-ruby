# typed: strong

module Increase
  module Models
    class IntrafiBalance < Increase::Internal::Type::BaseModel
      # #/components/schemas/intrafi_balance/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/intrafi_balance/properties/balances
      sig { returns(T::Array[Increase::Models::IntrafiBalance::Balance]) }
      attr_accessor :balances

      # #/components/schemas/intrafi_balance/properties/currency
      sig { returns(Increase::Models::IntrafiBalance::Currency::TaggedSymbol) }
      attr_accessor :currency

      # #/components/schemas/intrafi_balance/properties/effective_date
      sig { returns(Date) }
      attr_accessor :effective_date

      # #/components/schemas/intrafi_balance/properties/total_balance
      sig { returns(Integer) }
      attr_accessor :total_balance

      # #/components/schemas/intrafi_balance/properties/type
      sig { returns(Increase::Models::IntrafiBalance::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/intrafi_balance
      sig do
        params(
          id: String,
          balances: T::Array[T.any(Increase::Models::IntrafiBalance::Balance, Increase::Internal::AnyHash)],
          currency: Increase::Models::IntrafiBalance::Currency::OrSymbol,
          effective_date: Date,
          total_balance: Integer,
          type: Increase::Models::IntrafiBalance::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, balances:, currency:, effective_date:, total_balance:, type:); end

      sig do
        override
          .returns(
            {
              id: String,
              balances: T::Array[Increase::Models::IntrafiBalance::Balance],
              currency: Increase::Models::IntrafiBalance::Currency::TaggedSymbol,
              effective_date: Date,
              total_balance: Integer,
              type: Increase::Models::IntrafiBalance::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Balance < Increase::Internal::Type::BaseModel
        # #/components/schemas/intrafi_balance/properties/balances/items/properties/id
        sig { returns(String) }
        attr_accessor :id

        # #/components/schemas/intrafi_balance/properties/balances/items/properties/balance
        sig { returns(Integer) }
        attr_accessor :balance

        # #/components/schemas/intrafi_balance/properties/balances/items/properties/bank
        sig { returns(String) }
        attr_accessor :bank

        # #/components/schemas/intrafi_balance/properties/balances/items/properties/bank_location
        sig { returns(T.nilable(Increase::Models::IntrafiBalance::Balance::BankLocation)) }
        attr_reader :bank_location

        sig do
          params(
            bank_location: T.nilable(T.any(Increase::Models::IntrafiBalance::Balance::BankLocation, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :bank_location

        # #/components/schemas/intrafi_balance/properties/balances/items/properties/fdic_certificate_number
        sig { returns(String) }
        attr_accessor :fdic_certificate_number

        # #/components/schemas/intrafi_balance/properties/balances/items
        sig do
          params(
            id: String,
            balance: Integer,
            bank: String,
            bank_location: T.nilable(T.any(Increase::Models::IntrafiBalance::Balance::BankLocation, Increase::Internal::AnyHash)),
            fdic_certificate_number: String
          )
            .returns(T.attached_class)
        end
        def self.new(id:, balance:, bank:, bank_location:, fdic_certificate_number:); end

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
        def to_hash; end

        class BankLocation < Increase::Internal::Type::BaseModel
          # #/components/schemas/intrafi_balance/properties/balances/items/properties/bank_location/anyOf/0/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/intrafi_balance/properties/balances/items/properties/bank_location/anyOf/0/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/intrafi_balance/properties/balances/items/properties/bank_location
          sig { params(city: String, state: String).returns(T.attached_class) }
          def self.new(city:, state:); end

          sig { override.returns({city: String, state: String}) }
          def to_hash; end
        end
      end

      # #/components/schemas/intrafi_balance/properties/currency
      module Currency
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::IntrafiBalance::Currency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::IntrafiBalance::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::IntrafiBalance::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::IntrafiBalance::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::IntrafiBalance::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::IntrafiBalance::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::IntrafiBalance::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::IntrafiBalance::Currency::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::IntrafiBalance::Currency::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/intrafi_balance/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::IntrafiBalance::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::IntrafiBalance::Type::TaggedSymbol) }

        INTRAFI_BALANCE = T.let(:intrafi_balance, Increase::Models::IntrafiBalance::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::IntrafiBalance::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
