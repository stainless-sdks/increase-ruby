# typed: strong

module Increase
  module Models
    class DigitalCardProfileListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

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

      sig { returns(T.nilable(Increase::Models::DigitalCardProfileListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::Models::DigitalCardProfileListParams::Status).void }
      attr_writer :status

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
