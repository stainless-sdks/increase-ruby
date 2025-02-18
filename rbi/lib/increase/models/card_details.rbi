# typed: strong

module Increase
  module Models
    class CardDetails < Increase::BaseModel
      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      sig { returns(Integer) }
      def expiration_month
      end

      sig { params(_: Integer).returns(Integer) }
      def expiration_month=(_)
      end

      sig { returns(Integer) }
      def expiration_year
      end

      sig { params(_: Integer).returns(Integer) }
      def expiration_year=(_)
      end

      sig { returns(String) }
      def primary_account_number
      end

      sig { params(_: String).returns(String) }
      def primary_account_number=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(String) }
      def verification_code
      end

      sig { params(_: String).returns(String) }
      def verification_code=(_)
      end

      sig do
        params(
          card_id: String,
          expiration_month: Integer,
          expiration_year: Integer,
          primary_account_number: String,
          type: Symbol,
          verification_code: String
        ).void
      end
      def initialize(
        card_id:,
        expiration_month:,
        expiration_year:,
        primary_account_number:,
        type:,
        verification_code:
      )
      end

      sig do
        override.returns(
          {
            card_id: String,
            expiration_month: Integer,
            expiration_year: Integer,
            primary_account_number: String,
            type: Symbol,
            verification_code: String
          }
        )
      end
      def to_hash
      end

      class Type < Increase::Enum
        abstract!

        CARD_DETAILS = :card_details

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
