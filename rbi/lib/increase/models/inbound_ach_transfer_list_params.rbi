# typed: strong

module Increase
  module Models
    class InboundACHTransferListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def account_number_id
      end

      sig { params(_: String).returns(String) }
      def account_number_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::InboundACHTransferListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: Increase::Models::InboundACHTransferListParams::CreatedAt)
          .returns(Increase::Models::InboundACHTransferListParams::CreatedAt)
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

      sig { returns(T.nilable(Increase::Models::InboundACHTransferListParams::Status)) }
      def status
      end

      sig do
        params(_: Increase::Models::InboundACHTransferListParams::Status)
          .returns(Increase::Models::InboundACHTransferListParams::Status)
      end
      def status=(_)
      end

      sig do
        params(
          account_id: String,
          account_number_id: String,
          created_at: Increase::Models::InboundACHTransferListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          status: Increase::Models::InboundACHTransferListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id: nil,
        account_number_id: nil,
        created_at: nil,
        cursor: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              account_id: String,
              account_number_id: String,
              created_at: Increase::Models::InboundACHTransferListParams::CreatedAt,
              cursor: String,
              limit: Integer,
              status: Increase::Models::InboundACHTransferListParams::Status,
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

        sig do
          params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
        end
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

          # The Inbound ACH Transfer is awaiting action, will transition automatically if no action is taken.
          PENDING = :pending

          # The Inbound ACH Transfer has been declined.
          DECLINED = :declined

          # The Inbound ACH Transfer is accepted.
          ACCEPTED = :accepted

          # The Inbound ACH Transfer has been returned.
          RETURNED = :returned

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
