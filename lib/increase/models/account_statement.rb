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
      #   @return [String]
      required :created_at, String

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
      #   @return [String]
      required :statement_period_end, String

      # @!attribute [rw] statement_period_start
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time representing the start of the period the Account Statement covers.
      #   @return [String]
      required :statement_period_start, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `account_statement`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:account_statement)
    end
  end
end
