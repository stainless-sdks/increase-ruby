# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollment < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(String) }
      attr_accessor :intrafi_id

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          account_id: String,
          idempotency_key: T.nilable(String),
          intrafi_id: String,
          status: Symbol,
          type: Symbol
        ).void
      end
      def initialize(id:, account_id:, idempotency_key:, intrafi_id:, status:, type:)
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
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
