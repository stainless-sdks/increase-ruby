# frozen_string_literal: true

module Increase
  module Models
    class IntrafiBalance
      class BankLocation
        class BankLocation
          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] city
          required :city, String

          # @!attribute [rw] state
          required :state, String
        end

        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] balance
        required :balance, Integer

        # @!attribute [rw] bank
        required :bank, String

        # @!attribute [rw] bank_location
        required :bank_location,
                 lambda {
                   Increase::Models::IntrafiBalance::BankLocation::BankLocation
                 }

        # @!attribute [rw] fdic_certificate_number
        required :fdic_certificate_number, String
      end

      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] balances
      required :balances,
               Increase::ArrayOf.new(
                 lambda {
                   Increase::Models::IntrafiBalance::BankLocation
                 }
               )

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

      # @!attribute [rw] effective_date
      required :effective_date, String

      # @!attribute [rw] total_balance
      required :total_balance, Integer

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:intrafi_balance])
    end
  end
end
