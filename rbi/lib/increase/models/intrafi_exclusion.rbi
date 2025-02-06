# typed: strong

module Increase
  module Models
    class IntrafiExclusion < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :bank_name

      sig { returns(String) }
      attr_accessor :entity_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :excluded_at

      sig { returns(T.nilable(String)) }
      attr_accessor :fdic_certificate_number

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(Time)) }
      attr_accessor :submitted_at

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          bank_name: String,
          entity_id: String,
          excluded_at: T.nilable(Time),
          fdic_certificate_number: T.nilable(String),
          idempotency_key: T.nilable(String),
          status: Symbol,
          submitted_at: T.nilable(Time),
          type: Symbol
        ).void
      end
      def initialize(
        id:,
        bank_name:,
        entity_id:,
        excluded_at:,
        fdic_certificate_number:,
        idempotency_key:,
        status:,
        submitted_at:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bank_name: String,
            entity_id: String,
            excluded_at: T.nilable(Time),
            fdic_certificate_number: T.nilable(String),
            idempotency_key: T.nilable(String),
            status: Symbol,
            submitted_at: T.nilable(Time),
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The exclusion is being added to the IntraFi network.
        PENDING = :pending

        # The exclusion has been added to the IntraFi network.
        COMPLETED = :completed

        # The exclusion has been removed from the IntraFi network.
        ARCHIVED = :archived

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        INTRAFI_EXCLUSION = :intrafi_exclusion

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
