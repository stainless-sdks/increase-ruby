# typed: strong

module Increase
  module Models
    class BookkeepingEntry < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :entry_set_id

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          created_at: Time,
          entry_set_id: String,
          type: Symbol
        ).void
      end
      def initialize(id:, account_id:, amount:, created_at:, entry_set_id:, type:)
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            amount: Integer,
            created_at: Time,
            entry_set_id: String,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Type < Increase::Enum
        abstract!

        BOOKKEEPING_ENTRY = :bookkeeping_entry

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
