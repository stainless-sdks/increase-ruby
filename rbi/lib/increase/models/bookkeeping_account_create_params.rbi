# typed: strong

module Increase
  module Models
    class BookkeepingAccountCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def compliance_category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def compliance_category=(_)
      end

      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig do
        params(
            name: String,
            account_id: String,
            compliance_category: Symbol,
            entity_id: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .returns(T.attached_class)
      end
      def self.new(name:, account_id: nil, compliance_category: nil, entity_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              name: String,
              account_id: String,
              compliance_category: Symbol,
              entity_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class ComplianceCategory < Increase::Enum
        abstract!

        # A cash in an commingled Increase Account.
        COMMINGLED_CASH = :commingled_cash

        # A customer balance.
        CUSTOMER_BALANCE = :customer_balance

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
