# typed: strong

module Increase
  module Models
    class Group < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Symbol) }
      def ach_debit_status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def ach_debit_status=(_)
      end

      sig { returns(Symbol) }
      def activation_status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def activation_status=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          id: String,
          ach_debit_status: Symbol,
          activation_status: Symbol,
          created_at: Time,
          type: Symbol
        )
          .void
      end
      def initialize(id:, ach_debit_status:, activation_status:, created_at:, type:)
      end

      sig do
        override
          .returns({
                     id: String,
                     ach_debit_status: Symbol,
                     activation_status: Symbol,
                     created_at: Time,
                     type: Symbol
                   })
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
