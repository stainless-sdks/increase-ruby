# typed: strong

module Increase
  module Models
    class AccountListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::AccountListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: Increase::Models::AccountListParams::CreatedAt)
          .returns(Increase::Models::AccountListParams::CreatedAt)
      end
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(String)) }
      def informational_entity_id
      end

      sig { params(_: String).returns(String) }
      def informational_entity_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(String)) }
      def program_id
      end

      sig { params(_: String).returns(String) }
      def program_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::AccountListParams::Status)) }
      def status
      end

      sig do
        params(_: Increase::Models::AccountListParams::Status).returns(Increase::Models::AccountListParams::Status)
      end
      def status=(_)
      end

      sig do
        params(
            created_at: Increase::Models::AccountListParams::CreatedAt,
            cursor: String,
            entity_id: String,
            idempotency_key: String,
            informational_entity_id: String,
            limit: Integer,
            program_id: String,
            status: Increase::Models::AccountListParams::Status,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

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

        sig { params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class) }
        def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
      end

      class Status < Increase::BaseModel
        sig { returns(T.nilable(T::Array[Symbol])) }
        def in_
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def in_=(_)
        end

        sig { params(in_: T::Array[Symbol]).returns(T.attached_class) }
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Symbol]}) }
        def to_hash
        end

        class In < Increase::Enum
          abstract!

          # Closed Accounts on which no new activity can occur.
          CLOSED = :closed

          # Open Accounts that are ready to use.
          OPEN = :open

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
