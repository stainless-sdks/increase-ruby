# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # intrafi_balance => {
    #   id: String,
    #   balances: -> { Increase::ArrayOf[Increase::Models::IntrafiBalance::Balance] === _1 },
    #   currency: enum: Increase::Models::IntrafiBalance::Currency,
    #   effective_date: Date,
    #   total_balance: Integer
    # }
    # ```
    class IntrafiBalance < Increase::BaseModel
      # @!attribute id
      #   The identifier of this balance.
      #
      #   @return [String]
      required :id, String

      # @!attribute balances
      #   Each entry represents a balance held at a different bank. IntraFi separates the total balance across many participating banks in the network.
      #
      #   @return [Array<Increase::Models::IntrafiBalance::Balance>]
      required :balances, -> { Increase::ArrayOf[Increase::Models::IntrafiBalance::Balance] }

      # @!attribute currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the account currency.
      #
      #   @return [Symbol, Increase::Models::IntrafiBalance::Currency]
      required :currency, enum: -> { Increase::Models::IntrafiBalance::Currency }

      # @!attribute effective_date
      #   The date this balance reflects.
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute total_balance
      #   The total balance, in minor units of `currency`. Increase reports this balance to IntraFi daily.
      #
      #   @return [Integer]
      required :total_balance, Integer

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `intrafi_balance`.
      #
      #   @return [Symbol, Increase::Models::IntrafiBalance::Type]
      required :type, enum: -> { Increase::Models::IntrafiBalance::Type }

      # @!parse
      #   # When using IntraFi, each account's balance over the standard FDIC insurance
      #   #   amount are swept to various other institutions. Funds are rebalanced across
      #   #   banks as needed once per business day.
      #   #
      #   # @param id [String] The identifier of this balance.
      #   #
      #   # @param balances [Array<Increase::Models::IntrafiBalance::Balance>] Each entry represents a balance held at a different bank. IntraFi separates the
      #   #   total balance across many participating banks in the network.
      #   #
      #   # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the account
      #   #   currency.
      #   #
      #   # @param effective_date [String] The date this balance reflects.
      #   #
      #   # @param total_balance [Integer] The total balance, in minor units of `currency`. Increase reports this balance
      #   #   to IntraFi daily.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `intrafi_balance`.
      #   #
      #   def initialize(id:, balances:, currency:, effective_date:, total_balance:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # balance => {
      #   id: String,
      #   balance: Integer,
      #   bank: String,
      #   bank_location: Increase::Models::IntrafiBalance::Balance::BankLocation,
      #   fdic_certificate_number: String
      # }
      # ```
      class Balance < Increase::BaseModel
        # @!attribute id
        #   The identifier of this balance.
        #
        #   @return [String]
        required :id, String

        # @!attribute balance
        #   The balance, in minor units of `currency`, held with this bank.
        #
        #   @return [Integer]
        required :balance, Integer

        # @!attribute bank
        #   The name of the bank holding these funds.
        #
        #   @return [String]
        required :bank, String

        # @!attribute bank_location
        #   The primary location of the bank.
        #
        #   @return [Increase::Models::IntrafiBalance::Balance::BankLocation, nil]
        required :bank_location, -> { Increase::Models::IntrafiBalance::Balance::BankLocation }, nil?: true

        # @!attribute fdic_certificate_number
        #   The Federal Deposit Insurance Corporation (FDIC) certificate number of the bank. Because many banks have the same or similar names, this can be used to uniquely identify the institution.
        #
        #   @return [String]
        required :fdic_certificate_number, String

        # @!parse
        #   # @param id [String] The identifier of this balance.
        #   #
        #   # @param balance [Integer] The balance, in minor units of `currency`, held with this bank.
        #   #
        #   # @param bank [String] The name of the bank holding these funds.
        #   #
        #   # @param bank_location [Increase::Models::IntrafiBalance::Balance::BankLocation, nil] The primary location of the bank.
        #   #
        #   # @param fdic_certificate_number [String] The Federal Deposit Insurance Corporation (FDIC) certificate number of the bank.
        #   #   Because many banks have the same or similar names, this can be used to uniquely
        #   #   identify the institution.
        #   #
        #   def initialize(id:, balance:, bank:, bank_location:, fdic_certificate_number:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # bank_location => {
        #   city: String,
        #   state: String
        # }
        # ```
        class BankLocation < Increase::BaseModel
          # @!attribute city
          #   The bank's city.
          #
          #   @return [String]
          required :city, String

          # @!attribute state
          #   The bank's state.
          #
          #   @return [String]
          required :state, String

          # @!parse
          #   # The primary location of the bank.
          #   #
          #   # @param city [String] The bank's city.
          #   #
          #   # @param state [String] The bank's state.
          #   #
          #   def initialize(city:, state:, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the account currency.
      #
      # @example
      # ```ruby
      # case currency
      # in :CAD
      #   # ...
      # in :CHF
      #   # ...
      # in :EUR
      #   # ...
      # in :GBP
      #   # ...
      # in :JPY
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Currency < Increase::Enum
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
      end

      # A constant representing the object's type. For this resource it will always be `intrafi_balance`.
      #
      # @example
      # ```ruby
      # case type
      # in :intrafi_balance
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        INTRAFI_BALANCE = :intrafi_balance

        finalize!
      end
    end
  end
end
