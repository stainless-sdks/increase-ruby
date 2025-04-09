# typed: strong

module Increase
  module Models
    class DigitalCardProfileListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/paths//digital_card_profiles/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//digital_card_profiles/get/parameters/3/schema
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # #/paths//digital_card_profiles/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::Models::DigitalCardProfileListParams::Status)) }
      attr_reader :status

      sig do
        params(status: T.any(Increase::Models::DigitalCardProfileListParams::Status, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :status

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::DigitalCardProfileListParams::Status, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              cursor: String,
              idempotency_key: String,
              limit: Integer,
              status: Increase::Models::DigitalCardProfileListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class Status < Increase::Internal::Type::BaseModel
        # #/paths//digital_card_profiles/get/parameters/2/schema
        sig { returns(T.nilable(T::Array[Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol]).void }
        attr_writer :in_

        sig do
          params(in_: T::Array[Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil); end

        sig { override.returns({in_: T::Array[Increase::Models::DigitalCardProfileListParams::Status::In::OrSymbol]}) }
        def to_hash; end

        # #/paths//digital_card_profiles/get/parameters/2/schema/items
        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DigitalCardProfileListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol) }

          # The Card Profile is awaiting review from Increase and/or processing by card networks.
          PENDING = T.let(:pending, Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol)

          # There is an issue with the Card Profile preventing it from use.
          REJECTED = T.let(:rejected, Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol)

          # The Card Profile can be assigned to Cards.
          ACTIVE = T.let(:active, Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol)

          # The Card Profile is no longer in use.
          ARCHIVED = T.let(:archived, Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::DigitalCardProfileListParams::Status::In::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
