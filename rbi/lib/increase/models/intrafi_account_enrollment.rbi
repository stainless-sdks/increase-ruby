# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollment < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(String) }
      def intrafi_id
      end

      sig { params(_: String).returns(String) }
      def intrafi_id=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
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
          account_id: String,
          created_at: Time,
          idempotency_key: T.nilable(String),
          intrafi_id: String,
          status: Symbol,
          type: Symbol
        ).void
      end
      def initialize(id:, account_id:, created_at:, idempotency_key:, intrafi_id:, status:, type:)
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            created_at: Time,
            idempotency_key: T.nilable(String),
            intrafi_id: String,
            status: Symbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The account is being added to the IntraFi network.
        PENDING_ENROLLING = :pending_enrolling

        # The account has been enrolled with IntraFi.
        ENROLLED = :enrolled

        # The account is being unenrolled from IntraFi's deposit sweep.
        PENDING_UNENROLLING = :pending_unenrolling

        # The account was once enrolled, but is no longer enrolled at IntraFi.
        UNENROLLED = :unenrolled

        # Something unexpected happened with this account. Contact Increase support.
        REQUIRES_ATTENTION = :requires_attention

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        INTRAFI_ACCOUNT_ENROLLMENT = :intrafi_account_enrollment

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
