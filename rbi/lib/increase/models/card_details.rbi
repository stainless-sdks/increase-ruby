# typed: strong

module Increase
  module Models
    class CardDetails < Increase::Internal::Type::BaseModel
      # #/components/schemas/card_details/properties/card_id
      sig { returns(String) }
      attr_accessor :card_id

      # #/components/schemas/card_details/properties/expiration_month
      sig { returns(Integer) }
      attr_accessor :expiration_month

      # #/components/schemas/card_details/properties/expiration_year
      sig { returns(Integer) }
      attr_accessor :expiration_year

      # #/components/schemas/card_details/properties/primary_account_number
      sig { returns(String) }
      attr_accessor :primary_account_number

      # #/components/schemas/card_details/properties/type
      sig { returns(Increase::Models::CardDetails::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/card_details/properties/verification_code
      sig { returns(String) }
      attr_accessor :verification_code

      # #/components/schemas/card_details
      sig do
        params(
          card_id: String,
          expiration_month: Integer,
          expiration_year: Integer,
          primary_account_number: String,
          type: Increase::Models::CardDetails::Type::OrSymbol,
          verification_code: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        card_id:,
        expiration_month:,
        expiration_year:,
        primary_account_number:,
        type:,
        verification_code:
      )
      end

      sig do
        override
          .returns(
            {
              card_id: String,
              expiration_month: Integer,
              expiration_year: Integer,
              primary_account_number: String,
              type: Increase::Models::CardDetails::Type::TaggedSymbol,
              verification_code: String
            }
          )
      end
      def to_hash; end

      # #/components/schemas/card_details/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardDetails::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::CardDetails::Type::TaggedSymbol) }

        CARD_DETAILS = T.let(:card_details, Increase::Models::CardDetails::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CardDetails::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
