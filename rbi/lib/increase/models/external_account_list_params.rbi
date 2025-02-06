# typed: strong

module Increase
  module Models
    class ExternalAccountListParams < Increase::BaseModel
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

      sig { returns(T.nilable(String)) }
      attr_reader :routing_number

      sig { params(routing_number: String).void }
      attr_writer :routing_number

      sig { returns(T.nilable(Increase::Models::ExternalAccountListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::Models::ExternalAccountListParams::Status).void }
      attr_writer :status

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          routing_number: String,
          status: Increase::Models::ExternalAccountListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        routing_number: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
