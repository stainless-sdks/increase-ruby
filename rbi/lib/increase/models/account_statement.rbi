# typed: strong

module Increase
  module Models
    class AccountStatement < Increase::BaseModel
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

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Integer) }
      def ending_balance
      end

      sig { params(_: Integer).returns(Integer) }
      def ending_balance=(_)
      end

      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
      end

      sig { returns(Integer) }
      def starting_balance
      end

      sig { params(_: Integer).returns(Integer) }
      def starting_balance=(_)
      end

      sig { returns(Time) }
      def statement_period_end
      end

      sig { params(_: Time).returns(Time) }
      def statement_period_end=(_)
      end

      sig { returns(Time) }
      def statement_period_start
      end

      sig { params(_: Time).returns(Time) }
      def statement_period_start=(_)
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
          created_at: Time,
          ending_balance: Integer,
          file_id: String,
          starting_balance: Integer,
          statement_period_end: Time,
          statement_period_start: Time,
          type: Symbol
        ).void
      end
      def initialize(
        id:,
        account_id:,
        created_at:,
        ending_balance:,
        file_id:,
        starting_balance:,
        statement_period_end:,
        statement_period_start:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            created_at: Time,
            ending_balance: Integer,
            file_id: String,
            starting_balance: Integer,
            statement_period_end: Time,
            statement_period_start: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Type < Increase::Enum
        abstract!

        ACCOUNT_STATEMENT = :account_statement

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
