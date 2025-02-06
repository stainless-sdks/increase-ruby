# typed: strong

module Increase
  module Models
    class CardDisputeListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::CardDisputeListParams::CreatedAt)) }
      attr_reader :created_at

      sig { params(created_at: Increase::Models::CardDisputeListParams::CreatedAt).void }
      attr_writer :created_at

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

      sig { returns(T.nilable(Increase::Models::CardDisputeListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::Models::CardDisputeListParams::Status).void }
      attr_writer :status

      sig do
        params(
          created_at: Increase::Models::CardDisputeListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::CardDisputeListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_at: Increase::Models::CardDisputeListParams::CreatedAt,
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            status: Increase::Models::CardDisputeListParams::Status,
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

          # The Card Dispute is pending review.
          PENDING_REVIEWING = :pending_reviewing

          # Increase has requested more information related to the Card Dispute from you.
          PENDING_USER_INFORMATION = :pending_user_information

          # The Card Dispute has been accepted and your funds have been returned. The card dispute will eventually transition into `won` or `lost` depending on the outcome.
          ACCEPTED = :accepted

          # The Card Dispute has been rejected.
          REJECTED = :rejected

          # The Card Dispute has been lost and funds previously credited from the acceptance have been debited.
          LOST = :lost

          # The Card Dispute has been won and no further action can be taken.
          WON = :won

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
