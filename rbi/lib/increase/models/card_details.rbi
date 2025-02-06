# typed: strong

module Increase
  module Models
    class CardDetails < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :card_id

      sig { returns(Integer) }
      attr_accessor :expiration_month

      sig { returns(Integer) }
      attr_accessor :expiration_year

      sig { returns(String) }
      attr_accessor :primary_account_number

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :verification_code

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
