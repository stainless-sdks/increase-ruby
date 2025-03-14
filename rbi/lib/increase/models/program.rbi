# typed: strong

module Increase
  module Models
    class Program < Increase::BaseModel
      # The Program identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The Bank the Program is with.
      sig { returns(Symbol) }
      def bank
      end

      sig { params(_: Symbol).returns(Symbol) }
      def bank=(_)
      end

      # The Program billing account.
      sig { returns(T.nilable(String)) }
      def billing_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def billing_account_id=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Program
      #   was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The default configuration for digital cards attached to this Program.
      sig { returns(T.nilable(String)) }
      def default_digital_card_profile_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def default_digital_card_profile_id=(_)
      end

      # The Interest Rate currently being earned on the accounts in this program, as a
      #   string containing a decimal number. For example, a 1% interest rate would be
      #   represented as "0.01".
      sig { returns(String) }
      def interest_rate
      end

      sig { params(_: String).returns(String) }
      def interest_rate=(_)
      end

      # The name of the Program.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `program`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Program
      #   was last updated.
      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # Programs determine the compliance and commercial terms of Accounts. By default,
      #   you have a Commercial Banking program for managing your own funds. If you are
      #   lending or managing funds on behalf of your customers, or otherwise engaged in
      #   regulated activity, we will work together to create additional Programs for you.
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
      )
      end

      sig do
        override
          .returns(
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

      # The Bank the Program is with.
      class Bank < Increase::Enum
        abstract!

        # Core Bank
        CORE_BANK = :core_bank

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = :first_internet_bank

        # Grasshopper Bank
        GRASSHOPPER_BANK = :grasshopper_bank

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `program`.
      class Type < Increase::Enum
        abstract!

        PROGRAM = :program

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
