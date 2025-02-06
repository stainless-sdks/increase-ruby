# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollmentListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::Models::IntrafiAccountEnrollmentListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::Models::IntrafiAccountEnrollmentListParams::Status).void }
      attr_writer :status

      sig do
        params(
          account_id: String,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::IntrafiAccountEnrollmentListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        account_id: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            status: Increase::Models::IntrafiAccountEnrollmentListParams::Status,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Status < Increase::BaseModel
        sig { returns(T.nilable(T::Array[Symbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Symbol]).void }
        attr_writer :in_

        sig { params(in_: T::Array[Symbol]).void }
        def initialize(in_: nil)
        end

        sig { override.returns({in_: T::Array[Symbol]}) }
        def to_hash
        end

        class In < Increase::Enum
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
      end
    end
  end
end
