# frozen_string_literal: true

module Increase
  module Models
    class Group < BaseModel
      # @!attribute [rw] id
      #   The Group identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] ach_debit_status
      #   If the Group is allowed to create ACH debits.
      #   One of the constants defined in {Increase::Models::Group::ACHDebitStatus}
      #   @return [Symbol]
      required :ach_debit_status, enum: -> { Increase::Models::Group::ACHDebitStatus }

      # @!attribute [rw] activation_status
      #   If the Group is activated or not.
      #   One of the constants defined in {Increase::Models::Group::ActivationStatus}
      #   @return [Symbol]
      required :activation_status, enum: -> { Increase::Models::Group::ActivationStatus }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Group was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `group`.
      #   One of the constants defined in {Increase::Models::Group::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::Group::Type }

      # If the Group is allowed to create ACH debits.
      class ACHDebitStatus < Increase::Enum
        # The Group cannot make ACH debits.
        DISABLED = :disabled

        # The Group can make ACH debits.
        ENABLED = :enabled
      end

      # If the Group is activated or not.
      class ActivationStatus < Increase::Enum
        # The Group is not activated.
        UNACTIVATED = :unactivated

        # The Group is activated.
        ACTIVATED = :activated
      end

      # A constant representing the object's type. For this resource it will always be `group`.
      class Type < Increase::Enum
        GROUP = :group
      end
    end
  end
end
