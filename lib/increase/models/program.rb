# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Programs#retrieve
    class Program < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/program/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute bank
      #   #/components/schemas/program/properties/bank
      #
      #   @return [Symbol, Increase::Models::Program::Bank]
      required :bank, enum: -> { Increase::Models::Program::Bank }

      # @!attribute billing_account_id
      #   #/components/schemas/program/properties/billing_account_id
      #
      #   @return [String, nil]
      required :billing_account_id, String, nil?: true

      # @!attribute created_at
      #   #/components/schemas/program/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute default_digital_card_profile_id
      #   #/components/schemas/program/properties/default_digital_card_profile_id
      #
      #   @return [String, nil]
      required :default_digital_card_profile_id, String, nil?: true

      # @!attribute interest_rate
      #   #/components/schemas/program/properties/interest_rate
      #
      #   @return [String]
      required :interest_rate, String

      # @!attribute name
      #   #/components/schemas/program/properties/name
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   #/components/schemas/program/properties/type
      #
      #   @return [Symbol, Increase::Models::Program::Type]
      required :type, enum: -> { Increase::Models::Program::Type }

      # @!attribute updated_at
      #   #/components/schemas/program/properties/updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # #/components/schemas/program
      #   #
      #   # @param id [String]
      #   # @param bank [Symbol, Increase::Models::Program::Bank]
      #   # @param billing_account_id [String, nil]
      #   # @param created_at [Time]
      #   # @param default_digital_card_profile_id [String, nil]
      #   # @param interest_rate [String]
      #   # @param name [String]
      #   # @param type [Symbol, Increase::Models::Program::Type]
      #   # @param updated_at [Time]
      #   #
      #   def initialize(
      #     id:,
      #     bank:,
      #     billing_account_id:,
      #     created_at:,
      #     default_digital_card_profile_id:,
      #     interest_rate:,
      #     name:,
      #     type:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/program/properties/bank
      #
      # @see Increase::Models::Program#bank
      module Bank
        extend Increase::Internal::Type::Enum

        # Core Bank
        CORE_BANK = :core_bank

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = :first_internet_bank

        # Grasshopper Bank
        GRASSHOPPER_BANK = :grasshopper_bank

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/program/properties/type
      #
      # @see Increase::Models::Program#type
      module Type
        extend Increase::Internal::Type::Enum

        PROGRAM = :program

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
