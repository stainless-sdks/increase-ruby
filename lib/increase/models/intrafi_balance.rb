# frozen_string_literal: true

module Increase
  module Models
    class IntrafiBalance < BaseModel
      # @!attribute [rw] id
      #   The identifier of this balance.
      #   @return [String]
      required :id, String

      # @!attribute [rw] balances
      #   Each entry represents a balance held at a different bank. IntraFi separates the total balance across many participating banks in the network.
      #   @return [Array<Increase::Models::IntrafiBalance::Balance>]
      required :balances, Increase::ArrayOf.new(-> { Increase::Models::IntrafiBalance::Balance })

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the account currency.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] effective_date
      #   The date this balance reflects.
      #   @return [String]
      required :effective_date, String

      # @!attribute [rw] total_balance
      #   The total balance, in minor units of `currency`. Increase reports this balance to IntraFi daily.
      #   @return [Integer]
      required :total_balance, Integer

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `intrafi_balance`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:intrafi_balance)

      class Balance < BaseModel
        # @!attribute [rw] id
        #   The identifier of this balance.
        #   @return [String]
        required :id, String

        # @!attribute [rw] balance
        #   The balance, in minor units of `currency`, held with this bank.
        #   @return [Integer]
        required :balance, Integer

        # @!attribute [rw] bank
        #   The name of the bank holding these funds.
        #   @return [String]
        required :bank, String

        # @!attribute [rw] bank_location
        #   The primary location of the bank.
        #   @return [Increase::Models::IntrafiBalance::Balance::BankLocation]
        required :bank_location, -> { Increase::Models::IntrafiBalance::Balance::BankLocation }

        # @!attribute [rw] fdic_certificate_number
        #   The Federal Deposit Insurance Corporation (FDIC) certificate number of the bank. Because many banks have the same or similar names, this can be used to uniquely identify the institution.
        #   @return [String]
        required :fdic_certificate_number, String

        class BankLocation < BaseModel
          # @!attribute [rw] city
          #   The bank's city.
          #   @return [String]
          required :city, String

          # @!attribute [rw] state
          #   The bank's state.
          #   @return [String]
          required :state, String
        end
      end
    end
  end
end
