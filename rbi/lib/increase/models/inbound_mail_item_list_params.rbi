# typed: strong

module Increase
  module Models
    class InboundMailItemListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::InboundMailItemListParams::CreatedAt)) }
      attr_reader :created_at

      sig { params(created_at: Increase::Models::InboundMailItemListParams::CreatedAt).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :lockbox_id

      sig { params(lockbox_id: String).void }
      attr_writer :lockbox_id

      sig do
        params(
          created_at: Increase::Models::InboundMailItemListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          lockbox_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(created_at: nil, cursor: nil, limit: nil, lockbox_id: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            created_at: Increase::Models::InboundMailItemListParams::CreatedAt,
            cursor: String,
            limit: Integer,
            lockbox_id: String,
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
    end
  end
end
