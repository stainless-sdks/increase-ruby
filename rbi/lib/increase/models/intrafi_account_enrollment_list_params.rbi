# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollmentListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(Increase::Models::IntrafiAccountEnrollmentListParams::Status)) }
      def status
      end

      sig do
        params(_: Increase::Models::IntrafiAccountEnrollmentListParams::Status)
          .returns(Increase::Models::IntrafiAccountEnrollmentListParams::Status)
      end
      def status=(_)
      end

      sig do
        params(
            account_id: String,
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            status: Increase::Models::IntrafiAccountEnrollmentListParams::Status,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .void
      end
      def initialize(account_id: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
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
        def in_
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def in_=(_)
        end

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
