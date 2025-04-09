# typed: strong

module Increase
  module Models
    class BookkeepingBalanceLookup < Increase::Internal::Type::BaseModel
      # #/components/schemas/bookkeeping_balance_lookup/properties/balance
      sig { returns(Integer) }
      attr_accessor :balance

      # #/components/schemas/bookkeeping_balance_lookup/properties/bookkeeping_account_id
      sig { returns(String) }
      attr_accessor :bookkeeping_account_id

      # #/components/schemas/bookkeeping_balance_lookup/properties/type
      sig { returns(Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/bookkeeping_balance_lookup
      sig do
        params(
          balance: Integer,
          bookkeeping_account_id: String,
          type: Increase::Models::BookkeepingBalanceLookup::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(balance:, bookkeeping_account_id:, type:); end

      sig do
        override
          .returns(
            {
              balance: Integer,
              bookkeeping_account_id: String,
              type: Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/bookkeeping_balance_lookup/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BookkeepingBalanceLookup::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol) }

        BOOKKEEPING_BALANCE_LOOKUP =
          T.let(:bookkeeping_balance_lookup, Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
