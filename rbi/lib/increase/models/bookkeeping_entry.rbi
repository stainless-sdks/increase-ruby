# typed: strong

module Increase
  module Models
    class BookkeepingEntry < Increase::BaseModel
      # The entry identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the Account the Entry belongs to.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The Entry amount in the minor unit of its currency. For dollars, for example,
      #   this is cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # When the entry set was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The identifier for the Account the Entry belongs to.
      sig { returns(String) }
      def entry_set_id
      end

      sig { params(_: String).returns(String) }
      def entry_set_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_entry`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Entries are T-account entries recording debits and credits. Your compliance
      #   setup might require annotating money movements using this API. Learn more in our
      #   [guide to Bookkeeping](https://increase.com/documentation/bookkeeping#bookkeeping).
      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          created_at: Time,
          entry_set_id: String,
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, amount:, created_at:, entry_set_id:, type:)
      end

      sig do
        override
          .returns(
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

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_entry`.
      class Type < Increase::Enum
        abstract!

        BOOKKEEPING_ENTRY = :bookkeeping_entry

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
