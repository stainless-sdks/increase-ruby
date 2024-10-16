# frozen_string_literal: true

module Increase
  module Models
    class AccountStatement < BaseModel
      # @!attribute [rw] id
      #   The Account Statement identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the Account this Account Statement belongs to.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account Statement was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] ending_balance
      #   The Account's balance at the start of its statement period.
      #   @return [Integer]
      required :ending_balance, Integer

      # @!attribute [rw] file_id
      #   The identifier of the File containing a PDF of the statement.
      #   @return [String]
      required :file_id, String

      # @!attribute [rw] starting_balance
      #   The Account's balance at the start of its statement period.
      #   @return [Integer]
      required :starting_balance, Integer

      # @!attribute [rw] statement_period_end
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time representing the end of the period the Account Statement covers.
      #   @return [Time]
      required :statement_period_end, Time

      # @!attribute [rw] statement_period_start
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time representing the start of the period the Account Statement covers.
      #   @return [Time]
      required :statement_period_start, Time

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `account_statement`.
      #   @return [Symbol, Increase::Models::AccountStatement::Type]
      required :type, enum: -> { Increase::Models::AccountStatement::Type }

      # A constant representing the object's type. For this resource it will always be `account_statement`.
      class Type < Increase::Enum
        ACCOUNT_STATEMENT = :account_statement
      end

      # Create a new instance of AccountStatement from a Hash of raw data.
      #
      # @overload initialize(id: nil, account_id: nil, created_at: nil, ending_balance: nil, file_id: nil, starting_balance: nil, statement_period_end: nil, statement_period_start: nil, type: nil)
      # @param id [String] The Account Statement identifier.
      # @param account_id [String] The identifier for the Account this Account Statement belongs to.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account
      #   Statement was created.
      # @param ending_balance [Integer] The Account's balance at the start of its statement period.
      # @param file_id [String] The identifier of the File containing a PDF of the statement.
      # @param starting_balance [Integer] The Account's balance at the start of its statement period.
      # @param statement_period_end [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time representing the end
      #   of the period the Account Statement covers.
      # @param statement_period_start [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time representing the
      #   start of the period the Account Statement covers.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `account_statement`.
      def initialize(data = {})
        super
      end
    end
  end
end
