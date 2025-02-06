# typed: strong

module Increase
  module Models
    class AccountStatement < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Integer) }
      attr_accessor :ending_balance

      sig { returns(String) }
      attr_accessor :file_id

      sig { returns(Integer) }
      attr_accessor :starting_balance

      sig { returns(Time) }
      attr_accessor :statement_period_end

      sig { returns(Time) }
      attr_accessor :statement_period_start

      sig { returns(Symbol) }
      attr_accessor :type

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
