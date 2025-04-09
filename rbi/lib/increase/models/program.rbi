# typed: strong

module Increase
  module Models
    class Program < Increase::Internal::Type::BaseModel
      # #/components/schemas/program/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/program/properties/bank
      sig { returns(Increase::Models::Program::Bank::TaggedSymbol) }
      attr_accessor :bank

      # #/components/schemas/program/properties/billing_account_id
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_account_id

      # #/components/schemas/program/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/program/properties/default_digital_card_profile_id
      sig { returns(T.nilable(String)) }
      attr_accessor :default_digital_card_profile_id

      # #/components/schemas/program/properties/interest_rate
      sig { returns(String) }
      attr_accessor :interest_rate

      # #/components/schemas/program/properties/name
      sig { returns(String) }
      attr_accessor :name

      # #/components/schemas/program/properties/type
      sig { returns(Increase::Models::Program::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/program/properties/updated_at
      sig { returns(Time) }
      attr_accessor :updated_at

      # #/components/schemas/program
      sig do
        params(
          id: String,
          bank: Increase::Models::Program::Bank::OrSymbol,
          billing_account_id: T.nilable(String),
          created_at: Time,
          default_digital_card_profile_id: T.nilable(String),
          interest_rate: String,
          name: String,
          type: Increase::Models::Program::Type::OrSymbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        bank:,
        billing_account_id:,
        created_at:,
        default_digital_card_profile_id:,
        interest_rate:,
        name:,
        type:,
        updated_at:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              bank: Increase::Models::Program::Bank::TaggedSymbol,
              billing_account_id: T.nilable(String),
              created_at: Time,
              default_digital_card_profile_id: T.nilable(String),
              interest_rate: String,
              name: String,
              type: Increase::Models::Program::Type::TaggedSymbol,
              updated_at: Time
            }
          )
      end
      def to_hash; end

      # #/components/schemas/program/properties/bank
      module Bank
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Program::Bank) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Program::Bank::TaggedSymbol) }

        # Core Bank
        CORE_BANK = T.let(:core_bank, Increase::Models::Program::Bank::TaggedSymbol)

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = T.let(:first_internet_bank, Increase::Models::Program::Bank::TaggedSymbol)

        # Grasshopper Bank
        GRASSHOPPER_BANK = T.let(:grasshopper_bank, Increase::Models::Program::Bank::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Program::Bank::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/program/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Program::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Program::Type::TaggedSymbol) }

        PROGRAM = T.let(:program, Increase::Models::Program::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Program::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
