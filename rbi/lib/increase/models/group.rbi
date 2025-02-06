# typed: strong

module Increase
  module Models
    class Group < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Symbol) }
      attr_accessor :ach_debit_status

      sig { returns(Symbol) }
      attr_accessor :activation_status

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          ach_debit_status: Symbol,
          activation_status: Symbol,
          created_at: Time,
          type: Symbol
        ).void
      end
      def initialize(id:, ach_debit_status:, activation_status:, created_at:, type:)
      end

      sig do
        override.returns(
          {
            id: String,
            ach_debit_status: Symbol,
            activation_status: Symbol,
            created_at: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class ACHDebitStatus < Increase::Enum
        abstract!

        # The Group cannot make ACH debits.
        DISABLED = :disabled

        # The Group can make ACH debits.
        ENABLED = :enabled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ActivationStatus < Increase::Enum
        abstract!

        # The Group is not activated.
        UNACTIVATED = :unactivated

        # The Group is activated.
        ACTIVATED = :activated

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        GROUP = :group

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
