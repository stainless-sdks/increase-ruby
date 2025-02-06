# typed: strong

module Increase
  module Models
    class PhysicalCardProfileListParams < Increase::BaseModel
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

      sig { returns(T.nilable(Increase::Models::PhysicalCardProfileListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::Models::PhysicalCardProfileListParams::Status).void }
      attr_writer :status

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::PhysicalCardProfileListParams::Status,
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
            status: Increase::Models::PhysicalCardProfileListParams::Status,
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

          # The Card Profile has not yet been processed by Increase.
          PENDING_CREATING = :pending_creating

          # The card profile is awaiting review by Increase.
          PENDING_REVIEWING = :pending_reviewing

          # There is an issue with the Physical Card Profile preventing it from use.
          REJECTED = :rejected

          # The card profile is awaiting submission to the fulfillment provider.
          PENDING_SUBMITTING = :pending_submitting

          # The Physical Card Profile has been submitted to the fulfillment provider and is ready to use.
          ACTIVE = :active

          # The Physical Card Profile has been archived.
          ARCHIVED = :archived

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
