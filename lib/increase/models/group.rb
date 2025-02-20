# frozen_string_literal: true

module Increase
  module Models
    class Group < Increase::BaseModel
      # @!attribute id
      #   The Group identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute ach_debit_status
      #   If the Group is allowed to create ACH debits.
      #
      #   @return [Symbol, Increase::Models::Group::ACHDebitStatus]
      required :ach_debit_status, enum: -> { Increase::Models::Group::ACHDebitStatus }

      # @!attribute activation_status
      #   If the Group is activated or not.
      #
      #   @return [Symbol, Increase::Models::Group::ActivationStatus]
      required :activation_status, enum: -> { Increase::Models::Group::ActivationStatus }

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Group
      #     was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `group`.
      #
      #   @return [Symbol, Increase::Models::Group::Type]
      required :type, enum: -> { Increase::Models::Group::Type }

      # @!parse
      #   # Groups represent organizations using Increase. You can retrieve information
      #   #   about your own organization via the API. More commonly, OAuth platforms can
      #   #   retrieve information about the organizations that have granted them access.
      #   #   Learn more about OAuth [here](https://increase.com/documentation/oauth).
      #   #
      #   # @param id [String]
      #   # @param ach_debit_status [Symbol, Increase::Models::Group::ACHDebitStatus]
      #   # @param activation_status [Symbol, Increase::Models::Group::ActivationStatus]
      #   # @param created_at [Time]
      #   # @param type [Symbol, Increase::Models::Group::Type]
      #   #
      #   def initialize(id:, ach_debit_status:, activation_status:, created_at:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @abstract
      #
      # If the Group is allowed to create ACH debits.
      #
      # @example
      # ```ruby
      # case ach_debit_status
      # in :disabled
      #   # ...
      # in :enabled
      #   # ...
      # end
      # ```
      class ACHDebitStatus < Increase::Enum
        # The Group cannot make ACH debits.
        DISABLED = :disabled

        # The Group can make ACH debits.
        ENABLED = :enabled

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # If the Group is activated or not.
      #
      # @example
      # ```ruby
      # case activation_status
      # in :unactivated
      #   # ...
      # in :activated
      #   # ...
      # end
      # ```
      class ActivationStatus < Increase::Enum
        # The Group is not activated.
        UNACTIVATED = :unactivated

        # The Group is activated.
        ACTIVATED = :activated

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # A constant representing the object's type. For this resource it will always be
      #   `group`.
      #
      # @example
      # ```ruby
      # case type
      # in :group
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        GROUP = :group

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
