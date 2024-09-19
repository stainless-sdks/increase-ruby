# frozen_string_literal: true

module Increase
  module Models
    class Program < BaseModel
      # @!attribute [rw] id
      #   The Program identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] bank
      #   The Bank the Program is with.
      #   One of the constants defined in {Increase::Models::Program::Bank}
      #   @return [Symbol]
      required :bank, enum: -> { Increase::Models::Program::Bank }

      # @!attribute [rw] billing_account_id
      #   The Program billing account.
      #   @return [String]
      required :billing_account_id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Program was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] default_digital_card_profile_id
      #   The default configuration for digital cards attached to this Program.
      #   @return [String]
      required :default_digital_card_profile_id, String

      # @!attribute [rw] interest_rate
      #   The Interest Rate currently being earned on the accounts in this program, as a string containing a decimal number. For example, a 1% interest rate would be represented as "0.01".
      #   @return [String]
      required :interest_rate, String

      # @!attribute [rw] name_
      #   The name of the Program.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `program`.
      #   One of the constants defined in {Increase::Models::Program::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::Program::Type }

      # @!attribute [rw] updated_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Program was last updated.
      #   @return [String]
      required :updated_at, String

      # The Bank the Program is with.
      class Bank < Increase::Enum
        # Blue Ridge Bank, N.A.
        BLUE_RIDGE_BANK = :blue_ridge_bank

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = :first_internet_bank

        # Grasshopper Bank
        GRASSHOPPER_BANK = :grasshopper_bank
      end

      # A constant representing the object's type. For this resource it will always be `program`.
      class Type < Increase::Enum
        PROGRAM = :program
      end
    end
  end
end
