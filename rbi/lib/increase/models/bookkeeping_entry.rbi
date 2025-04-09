# typed: strong

module Increase
  module Models
    class BookkeepingEntry < Increase::Internal::Type::BaseModel
      # #/components/schemas/bookkeeping_entry/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/bookkeeping_entry/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/bookkeeping_entry/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/bookkeeping_entry/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/bookkeeping_entry/properties/entry_set_id
      sig { returns(String) }
      attr_accessor :entry_set_id

      # #/components/schemas/bookkeeping_entry/properties/type
      sig { returns(Increase::Models::BookkeepingEntry::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/bookkeeping_entry
      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          created_at: Time,
          entry_set_id: String,
          type: Increase::Models::BookkeepingEntry::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, amount:, created_at:, entry_set_id:, type:); end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              amount: Integer,
              created_at: Time,
              entry_set_id: String,
              type: Increase::Models::BookkeepingEntry::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/bookkeeping_entry/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BookkeepingEntry::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::BookkeepingEntry::Type::TaggedSymbol) }

        BOOKKEEPING_ENTRY = T.let(:bookkeeping_entry, Increase::Models::BookkeepingEntry::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::BookkeepingEntry::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
