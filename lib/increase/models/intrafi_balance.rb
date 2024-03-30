# frozen_string_literal: true

module Increase
  module Models
    class IntrafiBalance < BaseModel
      # @!attribute [rw] balances
      required :balances, Increase::ArrayOf.new(-> { Increase::Models::IntrafiBalance::Balance })

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] effective_date
      required :effective_date, String

      # @!attribute [rw] total_balance
      required :total_balance, Integer

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:intrafi_balance)

      class Balance < BaseModel
        # @!attribute [rw] balance
        required :balance, Integer

        # @!attribute [rw] bank
        required :bank, String

        # @!attribute [rw] bank_location
        required :bank_location, -> { Increase::Models::IntrafiBalance::Balance::BankLocation }

        # @!attribute [rw] fdic_certificate_number
        required :fdic_certificate_number, String

        class BankLocation < BaseModel
          # @!attribute [rw] city
          required :city, String

          # @!attribute [rw] state
          required :state, String
        end
      end
    end
  end
end
