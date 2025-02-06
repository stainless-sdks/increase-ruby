# typed: strong

module Increase
  module Models
    class AccountListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::AccountListParams::CreatedAt)) }
      attr_reader :created_at

      sig { params(created_at: Increase::Models::AccountListParams::CreatedAt).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig { returns(T.nilable(String)) }
      attr_reader :informational_entity_id

      sig { params(informational_entity_id: String).void }
      attr_writer :informational_entity_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :program_id

      sig { params(program_id: String).void }
      attr_writer :program_id

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          created_at: Increase::Models::AccountListParams::CreatedAt,
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          informational_entity_id: String,
          limit: Integer,
          program_id: String,
          status: Symbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        created_at: nil,
        cursor: nil,
        entity_id: nil,
        idempotency_key: nil,
        informational_entity_id: nil,
        limit: nil,
        program_id: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_at: Increase::Models::AccountListParams::CreatedAt,
            cursor: String,
            entity_id: String,
            idempotency_key: String,
            informational_entity_id: String,
            limit: Integer,
            program_id: String,
            status: Symbol,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CreatedAt < Increase::BaseModel
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

        sig { params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).void }
        def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
      end

      class Status < Increase::Enum
        abstract!

        # Closed Accounts on which no new activity can occur.
        CLOSED = :closed

        # Open Accounts that are ready to use.
        OPEN = :open

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
