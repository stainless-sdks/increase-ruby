# typed: strong

module Increase
  module Models
    class CardDetails < Increase::BaseModel
      # The identifier for the Card for which sensitive details have been returned.
      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      # The month the card expires in M format (e.g., August is 8).
      sig { returns(Integer) }
      def expiration_month
      end

      sig { params(_: Integer).returns(Integer) }
      def expiration_month=(_)
      end

      # The year the card expires in YYYY format (e.g., 2025).
      sig { returns(Integer) }
      def expiration_year
      end

      sig { params(_: Integer).returns(Integer) }
      def expiration_year=(_)
      end

      # The card number.
      sig { returns(String) }
      def primary_account_number
      end

      sig { params(_: String).returns(String) }
      def primary_account_number=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `card_details`.
      sig { returns(Increase::Models::CardDetails::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::CardDetails::Type::TaggedSymbol)
          .returns(Increase::Models::CardDetails::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # The three-digit verification code for the card. It's also known as the Card
      #   Verification Code (CVC), the Card Verification Value (CVV), or the Card
      #   Identification (CID).
      sig { returns(String) }
      def verification_code
      end

      sig { params(_: String).returns(String) }
      def verification_code=(_)
      end

      # An object containing the sensitive details (card number, cvc, etc) for a Card.
      sig do
        params(
          card_id: String,
          expiration_month: Integer,
          expiration_year: Integer,
          primary_account_number: String,
          type: Increase::Models::CardDetails::Type::TaggedSymbol,
          verification_code: String
        )
          .returns(T.attached_class)
      end
      def self.new(card_id:, expiration_month:, expiration_year:, primary_account_number:, type:, verification_code:)
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
      def to_hash
      end

      # A constant representing the object's type. For this resource it will always be
      #   `card_details`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardDetails::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::CardDetails::Type::TaggedSymbol) }

        CARD_DETAILS = T.let(:card_details, Increase::Models::CardDetails::Type::TaggedSymbol)
      end
    end
  end
end
