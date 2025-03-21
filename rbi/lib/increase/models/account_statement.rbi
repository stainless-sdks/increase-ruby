# typed: strong

module Increase
  module Models
    class AccountStatement < Increase::BaseModel
      # The Account Statement identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the Account this Account Statement belongs to.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account
      #   Statement was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The Account's balance at the start of its statement period.
      sig { returns(Integer) }
      def ending_balance
      end

      sig { params(_: Integer).returns(Integer) }
      def ending_balance=(_)
      end

      # The identifier of the File containing a PDF of the statement.
      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
      end

      # The Account's balance at the start of its statement period.
      sig { returns(Integer) }
      def starting_balance
      end

      sig { params(_: Integer).returns(Integer) }
      def starting_balance=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time representing the end
      #   of the period the Account Statement covers.
      sig { returns(Time) }
      def statement_period_end
      end

      sig { params(_: Time).returns(Time) }
      def statement_period_end=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time representing the
      #   start of the period the Account Statement covers.
      sig { returns(Time) }
      def statement_period_start
      end

      sig { params(_: Time).returns(Time) }
      def statement_period_start=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account_statement`.
      sig { returns(Increase::Models::AccountStatement::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::AccountStatement::Type::TaggedSymbol)
          .returns(Increase::Models::AccountStatement::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Account Statements are generated monthly for every active Account. You can
      #   access the statement's data via the API or retrieve a PDF with its details via
      #   its associated File.
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
          type: Increase::Models::AccountStatement::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
            {
              id: String,
              account_id: String,
              created_at: Time,
              ending_balance: Integer,
              file_id: String,
              starting_balance: Integer,
              statement_period_end: Time,
              statement_period_start: Time,
              type: Increase::Models::AccountStatement::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account_statement`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountStatement::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::AccountStatement::Type::TaggedSymbol) }

        ACCOUNT_STATEMENT = T.let(:account_statement, Increase::Models::AccountStatement::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::AccountStatement::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
