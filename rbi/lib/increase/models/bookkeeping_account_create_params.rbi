# typed: strong

module Increase
  module Models
    class BookkeepingAccountCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_bookkeeping_account_parameters/properties/name
      sig { returns(String) }
      attr_accessor :name

      # #/components/schemas/create_a_bookkeeping_account_parameters/properties/account_id
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # #/components/schemas/create_a_bookkeeping_account_parameters/properties/compliance_category
      sig { returns(T.nilable(Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::OrSymbol)) }
      attr_reader :compliance_category

      sig do
        params(
          compliance_category: Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::OrSymbol
        )
          .void
      end
      attr_writer :compliance_category

      # #/components/schemas/create_a_bookkeeping_account_parameters/properties/entity_id
      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      sig do
        params(
          name: String,
          account_id: String,
          compliance_category: Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::OrSymbol,
          entity_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(name:, account_id: nil, compliance_category: nil, entity_id: nil, request_options: {}); end

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
      def to_hash; end

      # #/components/schemas/create_a_bookkeeping_account_parameters/properties/compliance_category
      module ComplianceCategory
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::TaggedSymbol) }

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

        sig do
          override
            .returns(T::Array[Increase::Models::BookkeepingAccountCreateParams::ComplianceCategory::TaggedSymbol])
        end
        def self.values; end
      end
    end
  end
end
