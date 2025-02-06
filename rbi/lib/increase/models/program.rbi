# typed: strong

module Increase
  module Models
    class Program < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Symbol) }
      attr_accessor :bank

      sig { returns(T.nilable(String)) }
      attr_accessor :billing_account_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :default_digital_card_profile_id

      sig { returns(String) }
      attr_accessor :interest_rate

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          bank: Symbol,
          billing_account_id: T.nilable(String),
          created_at: Time,
          default_digital_card_profile_id: T.nilable(String),
          interest_rate: String,
          name: String,
          type: Symbol,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        bank:,
        billing_account_id:,
        created_at:,
        default_digital_card_profile_id:,
        interest_rate:,
        name:,
        type:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bank: Symbol,
            billing_account_id: T.nilable(String),
            created_at: Time,
            default_digital_card_profile_id: T.nilable(String),
            interest_rate: String,
            name: String,
            type: Symbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Bank < Increase::Enum
        abstract!

        # Blue Ridge Bank, N.A.
        BLUE_RIDGE_BANK = :blue_ridge_bank

        # Core Bank
        CORE_BANK = :core_bank

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = :first_internet_bank

        # Grasshopper Bank
        GRASSHOPPER_BANK = :grasshopper_bank

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        PROGRAM = :program

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
