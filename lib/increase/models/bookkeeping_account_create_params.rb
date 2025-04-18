# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::BookkeepingAccounts#create
    class BookkeepingAccountCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute name
      #   The name you choose for the account.
      #
      #   @return [String]
      required :name, String

      # @!attribute [r] account_id
      #   The entity, if `compliance_category` is `commingled_cash`.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] compliance_category
      #   The account compliance category.
      #
      #   @return [Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory, nil]
      optional :compliance_category,
               enum: -> { Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory }

      # @!parse
      #   # @return [Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory]
      #   attr_writer :compliance_category

      # @!attribute [r] entity_id
      #   The entity, if `compliance_category` is `customer_balance`.
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity_id

      # @!method initialize(name:, account_id: nil, compliance_category: nil, entity_id: nil, request_options: {})
      #   @param name [String]
      #   @param account_id [String]
      #   @param compliance_category [Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory]
      #   @param entity_id [String]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      # The account compliance category.
      module ComplianceCategory
        extend Increase::Internal::Type::Enum

        # A cash in an commingled Increase Account.
        COMMINGLED_CASH = :commingled_cash

        # A customer balance.
        CUSTOMER_BALANCE = :customer_balance

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
