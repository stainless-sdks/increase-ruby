# typed: strong

module Increase
  module Models
    class ExternalAccountListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/paths//external_accounts/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//external_accounts/get/parameters/4/schema
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # #/paths//external_accounts/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # #/paths//external_accounts/get/parameters/3/schema
      sig { returns(T.nilable(String)) }
      attr_reader :routing_number

      sig { params(routing_number: String).void }
      attr_writer :routing_number

      sig { returns(T.nilable(Increase::Models::ExternalAccountListParams::Status)) }
      attr_reader :status

      sig do
        params(status: T.any(Increase::Models::ExternalAccountListParams::Status, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :status

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          routing_number: String,
          status: T.any(Increase::Models::ExternalAccountListParams::Status, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        routing_number: nil,
        status: nil,
        request_options: {}
      )
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
      def to_hash; end

      class Status < Increase::Internal::Type::BaseModel
        # #/paths//external_accounts/get/parameters/2/schema
        sig { returns(T.nilable(T::Array[Increase::Models::ExternalAccountListParams::Status::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::ExternalAccountListParams::Status::In::OrSymbol]).void }
        attr_writer :in_

        sig do
          params(in_: T::Array[Increase::Models::ExternalAccountListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil); end

        sig { override.returns({in_: T::Array[Increase::Models::ExternalAccountListParams::Status::In::OrSymbol]}) }
        def to_hash; end

        # #/paths//external_accounts/get/parameters/2/schema/items
        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::ExternalAccountListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::ExternalAccountListParams::Status::In::TaggedSymbol) }

          # The External Account is active.
          ACTIVE = T.let(:active, Increase::Models::ExternalAccountListParams::Status::In::TaggedSymbol)

          # The External Account is archived and won't appear in the dashboard.
          ARCHIVED = T.let(:archived, Increase::Models::ExternalAccountListParams::Status::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::ExternalAccountListParams::Status::In::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
