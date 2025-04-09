# typed: strong

module Increase
  module Models
    class BalanceLookup < Increase::Internal::Type::BaseModel
      # #/components/schemas/balance_lookup/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/balance_lookup/properties/available_balance
      sig { returns(Integer) }
      attr_accessor :available_balance

      # #/components/schemas/balance_lookup/properties/current_balance
      sig { returns(Integer) }
      attr_accessor :current_balance

      # #/components/schemas/balance_lookup/properties/type
      sig { returns(Increase::Models::BalanceLookup::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/balance_lookup
      sig do
        params(
          account_id: String,
          available_balance: Integer,
          current_balance: Integer,
          type: Increase::Models::BalanceLookup::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(account_id:, available_balance:, current_balance:, type:); end

      sig do
        override
          .returns(
            {
              account_id: String,
              available_balance: Integer,
              current_balance: Integer,
              type: Increase::Models::BalanceLookup::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/balance_lookup/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BalanceLookup::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::BalanceLookup::Type::TaggedSymbol) }

        BALANCE_LOOKUP = T.let(:balance_lookup, Increase::Models::BalanceLookup::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::BalanceLookup::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
