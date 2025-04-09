# typed: strong

module Increase
  module Models
    class Group < Increase::Internal::Type::BaseModel
      # #/components/schemas/group/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/group/properties/ach_debit_status
      sig { returns(Increase::Models::Group::ACHDebitStatus::TaggedSymbol) }
      attr_accessor :ach_debit_status

      # #/components/schemas/group/properties/activation_status
      sig { returns(Increase::Models::Group::ActivationStatus::TaggedSymbol) }
      attr_accessor :activation_status

      # #/components/schemas/group/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/group/properties/type
      sig { returns(Increase::Models::Group::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/group
      sig do
        params(
          id: String,
          ach_debit_status: Increase::Models::Group::ACHDebitStatus::OrSymbol,
          activation_status: Increase::Models::Group::ActivationStatus::OrSymbol,
          created_at: Time,
          type: Increase::Models::Group::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, ach_debit_status:, activation_status:, created_at:, type:); end

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
      def to_hash; end

      # #/components/schemas/group/properties/ach_debit_status
      module ACHDebitStatus
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Group::ACHDebitStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Group::ACHDebitStatus::TaggedSymbol) }

        # The Group cannot make ACH debits.
        DISABLED = T.let(:disabled, Increase::Models::Group::ACHDebitStatus::TaggedSymbol)

        # The Group can make ACH debits.
        ENABLED = T.let(:enabled, Increase::Models::Group::ACHDebitStatus::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Group::ACHDebitStatus::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/group/properties/activation_status
      module ActivationStatus
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Group::ActivationStatus) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::Group::ActivationStatus::TaggedSymbol) }

        # The Group is not activated.
        UNACTIVATED = T.let(:unactivated, Increase::Models::Group::ActivationStatus::TaggedSymbol)

        # The Group is activated.
        ACTIVATED = T.let(:activated, Increase::Models::Group::ActivationStatus::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Group::ActivationStatus::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/group/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Group::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Group::Type::TaggedSymbol) }

        GROUP = T.let(:group, Increase::Models::Group::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Group::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
