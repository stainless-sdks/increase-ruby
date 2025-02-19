# typed: strong

module Increase
  module Models
    class DigitalCardProfileListParams < Increase::BaseModel
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

      sig { returns(T.nilable(Increase::Models::DigitalCardProfileListParams::Status)) }
      def status
      end

      sig do
        params(_: Increase::Models::DigitalCardProfileListParams::Status).returns(Increase::Models::DigitalCardProfileListParams::Status)
      end
      def status=(_)
      end

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::DigitalCardProfileListParams::Status,
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
            status: Increase::Models::DigitalCardProfileListParams::Status,
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

          # The Card Profile is awaiting review from Increase and/or processing by card networks.
          PENDING = :pending

          # There is an issue with the Card Profile preventing it from use.
          REJECTED = :rejected

          # The Card Profile can be assigned to Cards.
          ACTIVE = :active

          # The Card Profile is no longer in use.
          ARCHIVED = :archived

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
