# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::AccountStatements#retrieve
    class AccountStatement < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/account_statement/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/account_statement/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute created_at
      #   #/components/schemas/account_statement/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute ending_balance
      #   #/components/schemas/account_statement/properties/ending_balance
      #
      #   @return [Integer]
      required :ending_balance, Integer

      # @!attribute file_id
      #   #/components/schemas/account_statement/properties/file_id
      #
      #   @return [String]
      required :file_id, String

      # @!attribute starting_balance
      #   #/components/schemas/account_statement/properties/starting_balance
      #
      #   @return [Integer]
      required :starting_balance, Integer

      # @!attribute statement_period_end
      #   #/components/schemas/account_statement/properties/statement_period_end
      #
      #   @return [Time]
      required :statement_period_end, Time

      # @!attribute statement_period_start
      #   #/components/schemas/account_statement/properties/statement_period_start
      #
      #   @return [Time]
      required :statement_period_start, Time

      # @!attribute type
      #   #/components/schemas/account_statement/properties/type
      #
      #   @return [Symbol, Increase::Models::AccountStatement::Type]
      required :type, enum: -> { Increase::Models::AccountStatement::Type }

      # @!parse
      #   # #/components/schemas/account_statement
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param created_at [Time]
      #   # @param ending_balance [Integer]
      #   # @param file_id [String]
      #   # @param starting_balance [Integer]
      #   # @param statement_period_end [Time]
      #   # @param statement_period_start [Time]
      #   # @param type [Symbol, Increase::Models::AccountStatement::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     created_at:,
      #     ending_balance:,
      #     file_id:,
      #     starting_balance:,
      #     statement_period_end:,
      #     statement_period_start:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/account_statement/properties/type
      #
      # @see Increase::Models::AccountStatement#type
      module Type
        extend Increase::Internal::Type::Enum

        ACCOUNT_STATEMENT = :account_statement

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
