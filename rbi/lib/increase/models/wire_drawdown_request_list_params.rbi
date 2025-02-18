# typed: strong

module Increase
  module Models
    class WireDrawdownRequestListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

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

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            status: Symbol,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The drawdown request is queued to be submitted to Fedwire.
        PENDING_SUBMISSION = :pending_submission

        # The drawdown request has been sent and the recipient should respond in some way.
        PENDING_RESPONSE = :pending_response

        # The drawdown request has been fulfilled by the recipient.
        FULFILLED = :fulfilled

        # The drawdown request has been refused by the recipient.
        REFUSED = :refused

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
