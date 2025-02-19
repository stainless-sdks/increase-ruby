# typed: strong

module Increase
  module Models
    class InboundMailItemListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::InboundMailItemListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: Increase::Models::InboundMailItemListParams::CreatedAt)
          .returns(Increase::Models::InboundMailItemListParams::CreatedAt)
      end
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(String)) }
      def lockbox_id
      end

      sig { params(_: String).returns(String) }
      def lockbox_id=(_)
      end

      sig do
        params(
            created_at: Increase::Models::InboundMailItemListParams::CreatedAt,
            cursor: String,
            limit: Integer,
            lockbox_id: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .void
      end
      def initialize(created_at: nil, cursor: nil, limit: nil, lockbox_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
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
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_before
        end

        sig { params(_: Time).returns(Time) }
        def on_or_before=(_)
        end

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
