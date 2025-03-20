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
      sig { returns(Increase::Models::Group::ACHDebitStatus::TaggedSymbol) }
      def ach_debit_status
      end

      sig do
        params(_: Increase::Models::Group::ACHDebitStatus::TaggedSymbol)
          .returns(Increase::Models::Group::ACHDebitStatus::TaggedSymbol)
      end
      def ach_debit_status=(_)
      end

      # If the Group is activated or not.
      sig { returns(Increase::Models::Group::ActivationStatus::TaggedSymbol) }
      def activation_status
      end

      sig do
        params(_: Increase::Models::Group::ActivationStatus::TaggedSymbol)
          .returns(Increase::Models::Group::ActivationStatus::TaggedSymbol)
      end
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
      sig { returns(Increase::Models::Group::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::Group::Type::TaggedSymbol).returns(Increase::Models::Group::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Groups represent organizations using Increase. You can retrieve information
      #   about your own organization via the API. More commonly, OAuth platforms can
      #   retrieve information about the organizations that have granted them access.
      #   Learn more about OAuth [here](https://increase.com/documentation/oauth).
      sig do
        params(
          id: String,
          ach_debit_status: Increase::Models::Group::ACHDebitStatus::TaggedSymbol,
          activation_status: Increase::Models::Group::ActivationStatus::TaggedSymbol,
          created_at: Time,
          type: Increase::Models::Group::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, ach_debit_status:, activation_status:, created_at:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              ach_debit_status: Increase::Models::Group::ACHDebitStatus::TaggedSymbol,
              activation_status: Increase::Models::Group::ActivationStatus::TaggedSymbol,
              created_at: Time,
              type: Increase::Models::Group::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # If the Group is allowed to create ACH debits.
      module ACHDebitStatus
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Group::ACHDebitStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Group::ACHDebitStatus::TaggedSymbol) }

        # The Group cannot make ACH debits.
        DISABLED = T.let(:disabled, Increase::Models::Group::ACHDebitStatus::TaggedSymbol)

        # The Group can make ACH debits.
        ENABLED = T.let(:enabled, Increase::Models::Group::ACHDebitStatus::TaggedSymbol)
      end

      # If the Group is activated or not.
      module ActivationStatus
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Group::ActivationStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Group::ActivationStatus::TaggedSymbol) }

        # The Group is not activated.
        UNACTIVATED = T.let(:unactivated, Increase::Models::Group::ActivationStatus::TaggedSymbol)

        # The Group is activated.
        ACTIVATED = T.let(:activated, Increase::Models::Group::ActivationStatus::TaggedSymbol)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `group`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Group::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Group::Type::TaggedSymbol) }

        GROUP = T.let(:group, Increase::Models::Group::Type::TaggedSymbol)
      end
    end
  end
end
