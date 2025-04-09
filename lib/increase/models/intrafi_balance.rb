# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::IntrafiBalances#intrafi_balance
    class IntrafiBalance < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/intrafi_balance/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute balances
      #   #/components/schemas/intrafi_balance/properties/balances
      #
      #   @return [Array<Increase::Models::IntrafiBalance::Balance>]
      required :balances, -> { Increase::Internal::Type::ArrayOf[Increase::Models::IntrafiBalance::Balance] }

      # @!attribute currency
      #   #/components/schemas/intrafi_balance/properties/currency
      #
      #   @return [Symbol, Increase::Models::IntrafiBalance::Currency]
      required :currency, enum: -> { Increase::Models::IntrafiBalance::Currency }

      # @!attribute effective_date
      #   #/components/schemas/intrafi_balance/properties/effective_date
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute total_balance
      #   #/components/schemas/intrafi_balance/properties/total_balance
      #
      #   @return [Integer]
      required :total_balance, Integer

      # @!attribute type
      #   #/components/schemas/intrafi_balance/properties/type
      #
      #   @return [Symbol, Increase::Models::IntrafiBalance::Type]
      required :type, enum: -> { Increase::Models::IntrafiBalance::Type }

      # @!parse
      #   # #/components/schemas/intrafi_balance
      #   #
      #   # @param id [String]
      #   # @param balances [Array<Increase::Models::IntrafiBalance::Balance>]
      #   # @param currency [Symbol, Increase::Models::IntrafiBalance::Currency]
      #   # @param effective_date [Date]
      #   # @param total_balance [Integer]
      #   # @param type [Symbol, Increase::Models::IntrafiBalance::Type]
      #   #
      #   def initialize(id:, balances:, currency:, effective_date:, total_balance:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Balance < Increase::Internal::Type::BaseModel
        # @!attribute id
        #   #/components/schemas/intrafi_balance/properties/balances/items/properties/id
        #
        #   @return [String]
        required :id, String

        # @!attribute balance
        #   #/components/schemas/intrafi_balance/properties/balances/items/properties/balance
        #
        #   @return [Integer]
        required :balance, Integer

        # @!attribute bank
        #   #/components/schemas/intrafi_balance/properties/balances/items/properties/bank
        #
        #   @return [String]
        required :bank, String

        # @!attribute bank_location
        #   #/components/schemas/intrafi_balance/properties/balances/items/properties/bank_location
        #
        #   @return [Increase::Models::IntrafiBalance::Balance::BankLocation, nil]
        required :bank_location, -> { Increase::Models::IntrafiBalance::Balance::BankLocation }, nil?: true

        # @!attribute fdic_certificate_number
        #   #/components/schemas/intrafi_balance/properties/balances/items/properties/fdic_certificate_number
        #
        #   @return [String]
        required :fdic_certificate_number, String

        # @!parse
        #   # #/components/schemas/intrafi_balance/properties/balances/items
        #   #
        #   # @param id [String]
        #   # @param balance [Integer]
        #   # @param bank [String]
        #   # @param bank_location [Increase::Models::IntrafiBalance::Balance::BankLocation, nil]
        #   # @param fdic_certificate_number [String]
        #   #
        #   def initialize(id:, balance:, bank:, bank_location:, fdic_certificate_number:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::IntrafiBalance::Balance#bank_location
        class BankLocation < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/intrafi_balance/properties/balances/items/properties/bank_location/anyOf/0/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute state
          #   #/components/schemas/intrafi_balance/properties/balances/items/properties/bank_location/anyOf/0/properties/state
          #
          #   @return [String]
          required :state, String

          # @!parse
          #   # #/components/schemas/intrafi_balance/properties/balances/items/properties/bank_location
          #   #
          #   # @param city [String]
          #   # @param state [String]
          #   #
          #   def initialize(city:, state:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      # #/components/schemas/intrafi_balance/properties/currency
      #
      # @see Increase::Models::IntrafiBalance#currency
      module Currency
        extend Increase::Internal::Type::Enum

        # Canadian Dollar (CAD)
        CAD = :CAD

        # Swiss Franc (CHF)
        CHF = :CHF

        # Euro (EUR)
        EUR = :EUR

        # British Pound (GBP)
        GBP = :GBP

        # Japanese Yen (JPY)
        JPY = :JPY

        # US Dollar (USD)
        USD = :USD

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/intrafi_balance/properties/type
      #
      # @see Increase::Models::IntrafiBalance#type
      module Type
        extend Increase::Internal::Type::Enum

        INTRAFI_BALANCE = :intrafi_balance

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
