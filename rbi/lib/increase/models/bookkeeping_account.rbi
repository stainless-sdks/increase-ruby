# typed: strong

module Increase
  module Models
    class BookkeepingAccount < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def account_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def compliance_category
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def compliance_category=(_)
      end

      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def entity_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
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

      sig do
        params(
            id: String,
            account_id: T.nilable(String),
            compliance_category: T.nilable(Symbol),
            entity_id: T.nilable(String),
            idempotency_key: T.nilable(String),
            name: String,
            type: Symbol
          )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, compliance_category:, entity_id:, idempotency_key:, name:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: T.nilable(String),
              compliance_category: T.nilable(Symbol),
              entity_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              name: String,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class ComplianceCategory < Increase::Enum
        abstract!

        # A cash in an commingled Increase Account.
        COMMINGLED_CASH = T.let(:commingled_cash, T.nilable(Symbol))

        # A customer balance.
        CUSTOMER_BALANCE = T.let(:customer_balance, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        BOOKKEEPING_ACCOUNT = :bookkeeping_account

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
