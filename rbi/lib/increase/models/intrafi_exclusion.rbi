# typed: strong

module Increase
  module Models
    class IntrafiExclusion < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def bank_name
      end

      sig { params(_: String).returns(String) }
      def bank_name=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def excluded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def excluded_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def fdic_certificate_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def fdic_certificate_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Time)) }
      def submitted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def submitted_at=(_)
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
            bank_name: String,
            created_at: Time,
            entity_id: String,
            excluded_at: T.nilable(Time),
            fdic_certificate_number: T.nilable(String),
            idempotency_key: T.nilable(String),
            status: Symbol,
            submitted_at: T.nilable(Time),
            type: Symbol
          )
          .void
      end
      def initialize(
        id:,
        bank_name:,
        created_at:,
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
        override
          .returns(
            {
              id: String,
              bank_name: String,
              created_at: Time,
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
