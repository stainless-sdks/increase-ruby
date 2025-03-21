# typed: strong

module Increase
  module Models
    class BookkeepingAccountCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The name you choose for the account.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The entity, if `compliance_category` is `commingled_cash`.
      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The account compliance category.
      sig { returns(T.nilable(Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::OrSymbol)) }
      def compliance_category
      end

      sig do
        params(_: Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::OrSymbol)
          .returns(Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::OrSymbol)
      end
      def compliance_category=(_)
      end

      # The entity, if `compliance_category` is `customer_balance`.
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
          compliance_category: Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::OrSymbol,
          entity_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
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
              compliance_category: Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::OrSymbol,
              entity_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The account compliance category.
      module ComplianceCategory
        extend Increase::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::TaggedSymbol) }

        # A cash in an commingled Increase Account.
        COMMINGLED_CASH =
          T.let(
            :commingled_cash,
            Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::TaggedSymbol
          )

        # A customer balance.
        CUSTOMER_BALANCE =
          T.let(
            :customer_balance,
            Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::TaggedSymbol
          )

        class << self
          sig do
            override
              .returns(T::Array[Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::TaggedSymbol])
          end
          def values
          end
        end
      end
    end
  end
end
