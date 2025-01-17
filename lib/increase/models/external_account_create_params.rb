# frozen_string_literal: true

module Increase
  module Models
    class ExternalAccountCreateParams < Increase::BaseModel
      # @!attribute account_number
      #   The account number for the destination account.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute description
      #   The name you choose for the Account.
      #
      #   @return [String]
      required :description, String

      # @!attribute routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the destination account.
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute account_holder
      #   The type of entity that owns the External Account.
      #
      #   @return [Symbol, Increase::Models::ExternalAccountCreateParams::AccountHolder]
      optional :account_holder, enum: -> { Increase::Models::ExternalAccountCreateParams::AccountHolder }

      # @!attribute funding
      #   The type of the destination account. Defaults to `checking`.
      #
      #   @return [Symbol, Increase::Models::ExternalAccountCreateParams::Funding]
      optional :funding, enum: -> { Increase::Models::ExternalAccountCreateParams::Funding }

      # @!parse
      #   # @param account_number [String] The account number for the destination account.
      #   #
      #   # @param description [String] The name you choose for the Account.
      #   #
      #   # @param routing_number [String] The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   #   destination account.
      #   #
      #   # @param account_holder [String] The type of entity that owns the External Account.
      #   #
      #   # @param funding [String] The type of the destination account. Defaults to `checking`.
      #   #
      #   def initialize(account_number:, description:, routing_number:, account_holder: nil, funding: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The type of entity that owns the External Account.
      #
      # @example
      # ```ruby
      # case account_holder
      # in :business
      #   # ...
      # in :individual
      #   # ...
      # in :unknown
      #   # ...
      # end
      # ```
      class AccountHolder < Increase::Enum
        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        finalize!
      end

      # The type of the destination account. Defaults to `checking`.
      #
      # @example
      # ```ruby
      # case funding
      # in :checking
      #   # ...
      # in :savings
      #   # ...
      # in :other
      #   # ...
      # end
      # ```
      class Funding < Increase::Enum
        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        # A different type of account.
        OTHER = :other

        finalize!
      end
    end
  end
end
