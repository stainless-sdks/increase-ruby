# frozen_string_literal: true

module Increase
  module Models
    class AccountStatement < Increase::BaseModel
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

      # @!parse
      #   # Create a new instance of AccountStatement from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The Account Statement identifier.
      #   #   @option data [String] :account_id The identifier for the Account this Account Statement belongs to.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account
      #   #     Statement was created.
      #   #   @option data [Integer] :ending_balance The Account's balance at the start of its statement period.
      #   #   @option data [String] :file_id The identifier of the File containing a PDF of the statement.
      #   #   @option data [Integer] :starting_balance The Account's balance at the start of its statement period.
      #   #   @option data [String] :statement_period_end The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time representing the end
      #   #     of the period the Account Statement covers.
      #   #   @option data [String] :statement_period_start The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time representing the
      #   #     start of the period the Account Statement covers.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `account_statement`.
      #   def initialize(data = {}) = super
    end
  end
end
