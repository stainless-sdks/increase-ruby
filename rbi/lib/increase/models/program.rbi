# typed: strong

module Increase
  module Models
    class Program < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Symbol) }
      def bank
      end

      sig { params(_: Symbol).returns(Symbol) }
      def bank=(_)
      end

      sig { returns(T.nilable(String)) }
      def billing_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def billing_account_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def default_digital_card_profile_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def default_digital_card_profile_id=(_)
      end

      sig { returns(String) }
      def interest_rate
      end

      sig { params(_: String).returns(String) }
      def interest_rate=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

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
