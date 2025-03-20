# typed: strong

module Increase
  module Models
    class CardDisputeListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::CardDisputeListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: T.any(Increase::Models::CardDisputeListParams::CreatedAt, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::CardDisputeListParams::CreatedAt, Increase::Util::AnyHash))
      end
      def created_at=(_)
      end

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      # Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(Increase::Models::CardDisputeListParams::Status)) }
      def status
      end

      sig do
        params(_: T.any(Increase::Models::CardDisputeListParams::Status, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::CardDisputeListParams::Status, Increase::Util::AnyHash))
      end
      def status=(_)
      end

      sig do
        params(
          created_at: Increase::Models::CardDisputeListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::CardDisputeListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
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
        # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        # Return results on or after this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        # Return results on or before this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
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
        # Filter Card Disputes for those with the specified status or statuses. For GET
        #   requests, this should be encoded as a comma-delimited string, such as
        #   `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::CardDisputeListParams::Status::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::CardDisputeListParams::Status::In::OrSymbol])
            .returns(T::Array[Increase::Models::CardDisputeListParams::Status::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::CardDisputeListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::CardDisputeListParams::Status::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardDisputeListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CardDisputeListParams::Status::In::TaggedSymbol) }

          # The Card Dispute is pending review.
          PENDING_REVIEWING =
            T.let(:pending_reviewing, Increase::Models::CardDisputeListParams::Status::In::TaggedSymbol)

          # Increase has requested more information related to the Card Dispute from you.
          PENDING_USER_INFORMATION =
            T.let(:pending_user_information, Increase::Models::CardDisputeListParams::Status::In::TaggedSymbol)

          # The Card Dispute has been accepted and your funds have been returned. The card dispute will eventually transition into `won` or `lost` depending on the outcome.
          ACCEPTED = T.let(:accepted, Increase::Models::CardDisputeListParams::Status::In::TaggedSymbol)

          # The Card Dispute has been rejected.
          REJECTED = T.let(:rejected, Increase::Models::CardDisputeListParams::Status::In::TaggedSymbol)

          # The Card Dispute has been lost and funds previously credited from the acceptance have been debited.
          LOST = T.let(:lost, Increase::Models::CardDisputeListParams::Status::In::TaggedSymbol)

          # The Card Dispute has been won and no further action can be taken.
          WON = T.let(:won, Increase::Models::CardDisputeListParams::Status::In::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::CardDisputeListParams::Status::In::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
