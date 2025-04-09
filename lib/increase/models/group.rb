# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Groups#retrieve
    class Group < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/group/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute ach_debit_status
      #   #/components/schemas/group/properties/ach_debit_status
      #
      #   @return [Symbol, Increase::Models::Group::ACHDebitStatus]
      required :ach_debit_status, enum: -> { Increase::Models::Group::ACHDebitStatus }

      # @!attribute activation_status
      #   #/components/schemas/group/properties/activation_status
      #
      #   @return [Symbol, Increase::Models::Group::ActivationStatus]
      required :activation_status, enum: -> { Increase::Models::Group::ActivationStatus }

      # @!attribute created_at
      #   #/components/schemas/group/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute type
      #   #/components/schemas/group/properties/type
      #
      #   @return [Symbol, Increase::Models::Group::Type]
      required :type, enum: -> { Increase::Models::Group::Type }

      # @!parse
      #   # #/components/schemas/group
      #   #
      #   # @param id [String]
      #   # @param ach_debit_status [Symbol, Increase::Models::Group::ACHDebitStatus]
      #   # @param activation_status [Symbol, Increase::Models::Group::ActivationStatus]
      #   # @param created_at [Time]
      #   # @param type [Symbol, Increase::Models::Group::Type]
      #   #
      #   def initialize(id:, ach_debit_status:, activation_status:, created_at:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/group/properties/ach_debit_status
      #
      # @see Increase::Models::Group#ach_debit_status
      module ACHDebitStatus
        extend Increase::Internal::Type::Enum

        # The Group cannot make ACH debits.
        DISABLED = :disabled

        # The Group can make ACH debits.
        ENABLED = :enabled

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/group/properties/activation_status
      #
      # @see Increase::Models::Group#activation_status
      module ActivationStatus
        extend Increase::Internal::Type::Enum

        # The Group is not activated.
        UNACTIVATED = :unactivated

        # The Group is activated.
        ACTIVATED = :activated

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/group/properties/type
      #
      # @see Increase::Models::Group#type
      module Type
        extend Increase::Internal::Type::Enum

        GROUP = :group

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
