# typed: strong

module Increase
  module Models
    class AccountStatement < Increase::Internal::Type::BaseModel
      # #/components/schemas/account_statement/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/account_statement/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/account_statement/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/account_statement/properties/ending_balance
      sig { returns(Integer) }
      attr_accessor :ending_balance

      # #/components/schemas/account_statement/properties/file_id
      sig { returns(String) }
      attr_accessor :file_id

      # #/components/schemas/account_statement/properties/starting_balance
      sig { returns(Integer) }
      attr_accessor :starting_balance

      # #/components/schemas/account_statement/properties/statement_period_end
      sig { returns(Time) }
      attr_accessor :statement_period_end

      # #/components/schemas/account_statement/properties/statement_period_start
      sig { returns(Time) }
      attr_accessor :statement_period_start

      # #/components/schemas/account_statement/properties/type
      sig { returns(Increase::Models::AccountStatement::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/account_statement
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
      ); end
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
      def to_hash; end

      # #/components/schemas/account_statement/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountStatement::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::AccountStatement::Type::TaggedSymbol) }

        ACCOUNT_STATEMENT = T.let(:account_statement, Increase::Models::AccountStatement::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::AccountStatement::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
