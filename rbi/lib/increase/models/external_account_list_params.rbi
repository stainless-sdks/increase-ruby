# typed: strong

module Increase
  module Models
    class ExternalAccountListParams < Increase::BaseModel
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

      sig { returns(T.nilable(String)) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      sig { returns(T.nilable(Increase::Models::ExternalAccountListParams::Status)) }
      def status
      end

      sig do
        params(_: Increase::Models::ExternalAccountListParams::Status)
          .returns(Increase::Models::ExternalAccountListParams::Status)
      end
      def status=(_)
      end

      sig do
        params(
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            routing_number: String,
            status: Increase::Models::ExternalAccountListParams::Status,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .void
      end
      def initialize(cursor: nil, idempotency_key: nil, limit: nil, routing_number: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              cursor: String,
              idempotency_key: String,
              limit: Integer,
              routing_number: String,
              status: Increase::Models::ExternalAccountListParams::Status,
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

          # The External Account is active.
          ACTIVE = :active

          # The External Account is archived and won't appear in the dashboard.
          ARCHIVED = :archived

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
