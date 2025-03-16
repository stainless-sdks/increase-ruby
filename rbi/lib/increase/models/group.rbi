# typed: strong

module Increase
  module Models
    class Group < Increase::BaseModel
      # The Group identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # If the Group is allowed to create ACH debits.
      sig { returns(Symbol) }
      def ach_debit_status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def ach_debit_status=(_)
      end

      # If the Group is activated or not.
      sig { returns(Symbol) }
      def activation_status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def activation_status=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Group
      #   was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `group`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Groups represent organizations using Increase. You can retrieve information
      #   about your own organization via the API. More commonly, OAuth platforms can
      #   retrieve information about the organizations that have granted them access.
      #   Learn more about OAuth [here](https://increase.com/documentation/oauth).
      sig do
        params(
          id: String,
          ach_debit_status: Symbol,
          activation_status: Symbol,
          created_at: Time,
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, ach_debit_status:, activation_status:, created_at:, type:)
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

      # If the Group is allowed to create ACH debits.
      class ACHDebitStatus < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The Group cannot make ACH debits.
        DISABLED = :disabled

        # The Group can make ACH debits.
        ENABLED = :enabled
      end

      # If the Group is activated or not.
      class ActivationStatus < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The Group is not activated.
        UNACTIVATED = :unactivated

        # The Group is activated.
        ACTIVATED = :activated
      end

      # A constant representing the object's type. For this resource it will always be
      #   `group`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        GROUP = :group
      end
    end
  end
end
