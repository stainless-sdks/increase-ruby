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
      #   @return [Symbol, Increase::Models::Program::Bank]
      required :bank, enum: -> { Increase::Models::Program::Bank }

      # @!attribute [rw] billing_account_id
      #   The Program billing account.
      #   @return [String]
      required :billing_account_id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Program was created.
      #   @return [Time]
      required :created_at, Time

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
      required :name_, String, api_name: :name

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `program`.
      #   @return [Symbol, Increase::Models::Program::Type]
      required :type, enum: -> { Increase::Models::Program::Type }

      # @!attribute [rw] updated_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Program was last updated.
      #   @return [Time]
      required :updated_at, Time

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

      # @!parse
      #   # Create a new instance of Program from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The Program identifier.
      #   #   @option data [String] :bank The Bank the Program is with.
      #   #   @option data [String] :billing_account_id The Program billing account.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Program
      #   #     was created.
      #   #   @option data [String] :default_digital_card_profile_id The default configuration for digital cards attached to this Program.
      #   #   @option data [String] :interest_rate The Interest Rate currently being earned on the accounts in this program, as a
      #   #     string containing a decimal number. For example, a 1% interest rate would be
      #   #     represented as "0.01".
      #   #   @option data [String] :name The name of the Program.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `program`.
      #   #   @option data [String] :updated_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Program
      #   #     was last updated.
      #   def initialize(data = {}) = super
    end
  end
end
