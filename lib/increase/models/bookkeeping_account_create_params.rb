# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingAccountCreateParams < Increase::BaseModel
      # @!attribute name
      #   The name you choose for the account.
      #
      #   @return [String]
      required :name, String

      # @!attribute account_id
      #   The entity, if `compliance_category` is `commingled_cash`.
      #
      #   @return [String]
      optional :account_id, String

      # @!attribute compliance_category
      #   The account compliance category.
      #
      #   @return [Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory]
      optional :compliance_category,
               enum: -> { Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory }

      # @!attribute entity_id
      #   The entity, if `compliance_category` is `customer_balance`.
      #
      #   @return [String]
      optional :entity_id, String

      # @!parse
      #   # @param name [String] The name you choose for the account.
      #   #
      #   # @param account_id [String] The entity, if `compliance_category` is `commingled_cash`.
      #   #
      #   # @param compliance_category [String] The account compliance category.
      #   #
      #   # @param entity_id [String] The entity, if `compliance_category` is `customer_balance`.
      #   #
      #   def initialize(name:, account_id: nil, compliance_category: nil, entity_id: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The account compliance category.
      #
      # @example
      # ```ruby
      # case compliance_category
      # in :commingled_cash
      #   # ...
      # in :customer_balance
      #   # ...
      # end
      # ```
      class ComplianceCategory < Increase::Enum
        # A cash in an commingled Increase Account.
        COMMINGLED_CASH = :commingled_cash

        # A customer balance.
        CUSTOMER_BALANCE = :customer_balance

        finalize!
      end
    end
  end
end
