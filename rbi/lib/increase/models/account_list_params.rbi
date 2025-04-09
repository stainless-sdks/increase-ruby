# typed: strong

module Increase
  module Models
    class AccountListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      sig { returns(T.nilable(Increase::Models::AccountListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(created_at: T.any(Increase::Models::AccountListParams::CreatedAt, Increase::Internal::AnyHash)).void
      end
      attr_writer :created_at

      # #/paths//accounts/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//accounts/get/parameters/2/schema
      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      # #/paths//accounts/get/parameters/10/schema
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # #/paths//accounts/get/parameters/3/schema
      sig { returns(T.nilable(String)) }
      attr_reader :informational_entity_id

      sig { params(informational_entity_id: String).void }
      attr_writer :informational_entity_id

      # #/paths//accounts/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # #/paths//accounts/get/parameters/4/schema
      sig { returns(T.nilable(String)) }
      attr_reader :program_id

      sig { params(program_id: String).void }
      attr_writer :program_id

      sig { returns(T.nilable(Increase::Models::AccountListParams::Status)) }
      attr_reader :status

      sig { params(status: T.any(Increase::Models::AccountListParams::Status, Increase::Internal::AnyHash)).void }
      attr_writer :status

      sig do
        params(
          created_at: T.any(Increase::Models::AccountListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          informational_entity_id: String,
          limit: Integer,
          program_id: String,
          status: T.any(Increase::Models::AccountListParams::Status, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        created_at: nil,
        cursor: nil,
        entity_id: nil,
        idempotency_key: nil,
        informational_entity_id: nil,
        limit: nil,
        program_id: nil,
        status: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              created_at: Increase::Models::AccountListParams::CreatedAt,
              cursor: String,
              entity_id: String,
              idempotency_key: String,
              informational_entity_id: String,
              limit: Integer,
              program_id: String,
              status: Increase::Models::AccountListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class CreatedAt < Increase::Internal::Type::BaseModel
        # #/paths//accounts/get/parameters/6/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # #/paths//accounts/get/parameters/7/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # #/paths//accounts/get/parameters/8/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # #/paths//accounts/get/parameters/9/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

        sig do
          params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
        end
        def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil); end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash; end
      end

      class Status < Increase::Internal::Type::BaseModel
        # #/paths//accounts/get/parameters/5/schema
        sig { returns(T.nilable(T::Array[Increase::Models::AccountListParams::Status::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::AccountListParams::Status::In::OrSymbol]).void }
        attr_writer :in_

        sig { params(in_: T::Array[Increase::Models::AccountListParams::Status::In::OrSymbol]).returns(T.attached_class) }
        def self.new(in_: nil); end

        sig { override.returns({in_: T::Array[Increase::Models::AccountListParams::Status::In::OrSymbol]}) }
        def to_hash; end

        # #/paths//accounts/get/parameters/5/schema/items
        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::AccountListParams::Status::In::TaggedSymbol) }

          # Closed Accounts on which no new activity can occur.
          CLOSED = T.let(:closed, Increase::Models::AccountListParams::Status::In::TaggedSymbol)

          # Open Accounts that are ready to use.
          OPEN = T.let(:open, Increase::Models::AccountListParams::Status::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::AccountListParams::Status::In::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
