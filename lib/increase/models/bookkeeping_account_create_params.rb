# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::BookkeepingAccounts#create
    class BookkeepingAccountCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute name
      #   #/components/schemas/create_a_bookkeeping_account_parameters/properties/name
      #
      #   @return [String]
      required :name, String

      # @!attribute [r] account_id
      #   #/components/schemas/create_a_bookkeeping_account_parameters/properties/account_id
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] compliance_category
      #   #/components/schemas/create_a_bookkeeping_account_parameters/properties/compliance_category
      #
      #   @return [Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory, nil]
      optional :compliance_category,
               enum: -> { Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory }

      # @!parse
      #   # @return [Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory]
      #   attr_writer :compliance_category

      # @!attribute [r] entity_id
      #   #/components/schemas/create_a_bookkeeping_account_parameters/properties/entity_id
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity_id

      # @!parse
      #   # @param name [String]
      #   # @param account_id [String]
      #   # @param compliance_category [Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory]
      #   # @param entity_id [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(name:, account_id: nil, compliance_category: nil, entity_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/create_a_bookkeeping_account_parameters/properties/compliance_category
      module ComplianceCategory
        extend Increase::Internal::Type::Enum

        # A cash in an commingled Increase Account.
        COMMINGLED_CASH = :commingled_cash

        # A customer balance.
        CUSTOMER_BALANCE = :customer_balance

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
