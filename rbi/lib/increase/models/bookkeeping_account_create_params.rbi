# typed: strong

module Increase
  module Models
    class BookkeepingAccountCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :compliance_category

      sig { params(compliance_category: Symbol).void }
      attr_writer :compliance_category

      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      sig do
        params(
          name: String,
          account_id: String,
          compliance_category: Symbol,
          entity_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(name:, account_id: nil, compliance_category: nil, entity_id: nil, request_options: {})
      end

      sig do
        override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
