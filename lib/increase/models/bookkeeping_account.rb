# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::BookkeepingAccounts#create
    class BookkeepingAccount < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/bookkeeping_account/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/bookkeeping_account/properties/account_id
      #
      #   @return [String, nil]
      required :account_id, String, nil?: true

      # @!attribute compliance_category
      #   #/components/schemas/bookkeeping_account/properties/compliance_category
      #
      #   @return [Symbol, Increase::Models::BookkeepingAccount::ComplianceCategory, nil]
      required :compliance_category,
               enum: -> { Increase::Models::BookkeepingAccount::ComplianceCategory },
               nil?: true

      # @!attribute entity_id
      #   #/components/schemas/bookkeeping_account/properties/entity_id
      #
      #   @return [String, nil]
      required :entity_id, String, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/bookkeeping_account/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute name
      #   #/components/schemas/bookkeeping_account/properties/name
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   #/components/schemas/bookkeeping_account/properties/type
      #
      #   @return [Symbol, Increase::Models::BookkeepingAccount::Type]
      required :type, enum: -> { Increase::Models::BookkeepingAccount::Type }

      # @!parse
      #   # #/components/schemas/bookkeeping_account
      #   #
      #   # @param id [String]
      #   # @param account_id [String, nil]
      #   # @param compliance_category [Symbol, Increase::Models::BookkeepingAccount::ComplianceCategory, nil]
      #   # @param entity_id [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param name [String]
      #   # @param type [Symbol, Increase::Models::BookkeepingAccount::Type]
      #   #
      #   def initialize(id:, account_id:, compliance_category:, entity_id:, idempotency_key:, name:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/bookkeeping_account/properties/compliance_category
      #
      # @see Increase::Models::BookkeepingAccount#compliance_category
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

      # #/components/schemas/bookkeeping_account/properties/type
      #
      # @see Increase::Models::BookkeepingAccount#type
      module Type
        extend Increase::Internal::Type::Enum

        BOOKKEEPING_ACCOUNT = :bookkeeping_account

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
