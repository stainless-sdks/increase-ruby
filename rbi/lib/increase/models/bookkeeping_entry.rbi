# typed: strong

module Increase
  module Models
    class BookkeepingEntry < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def entry_set_id
      end

      sig { params(_: String).returns(String) }
      def entry_set_id=(_)
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
            account_id: String,
            amount: Integer,
            created_at: Time,
            entry_set_id: String,
            type: Symbol
          )
          .void
      end
      def initialize(id:, account_id:, amount:, created_at:, entry_set_id:, type:)
      end

      sig do
        override
          .returns(
            {id: String, account_id: String, amount: Integer, created_at: Time, entry_set_id: String, type: Symbol}
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
