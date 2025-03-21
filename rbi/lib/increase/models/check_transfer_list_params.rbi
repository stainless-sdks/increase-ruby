# typed: strong

module Increase
  module Models
    class CheckTransferListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # Filter Check Transfers to those that originated from the specified Account.
      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckTransferListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: T.any(Increase::Models::CheckTransferListParams::CreatedAt, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::CheckTransferListParams::CreatedAt, Increase::Util::AnyHash))
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

      sig { returns(T.nilable(Increase::Models::CheckTransferListParams::Status)) }
      def status
      end

      sig do
        params(_: T.any(Increase::Models::CheckTransferListParams::Status, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::CheckTransferListParams::Status, Increase::Util::AnyHash))
      end
      def status=(_)
      end

      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::CheckTransferListParams::CreatedAt, Increase::Util::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::CheckTransferListParams::Status, Increase::Util::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id: nil,
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
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
              created_at: Increase::Models::CheckTransferListParams::CreatedAt,
              cursor: String,
              idempotency_key: String,
              limit: Integer,
              status: Increase::Models::CheckTransferListParams::Status,
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
        # Filter Check Transfers to those that have the specified status. For GET
        #   requests, this should be encoded as a comma-delimited string, such as
        #   `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::CheckTransferListParams::Status::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::CheckTransferListParams::Status::In::OrSymbol])
            .returns(T::Array[Increase::Models::CheckTransferListParams::Status::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::CheckTransferListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::CheckTransferListParams::Status::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransferListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol) }

          # The transfer is awaiting approval.
          PENDING_APPROVAL =
            T.let(:pending_approval, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol)

          # The transfer has been canceled.
          CANCELED = T.let(:canceled, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol)

          # The transfer is pending submission.
          PENDING_SUBMISSION =
            T.let(:pending_submission, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol)

          # The transfer requires attention from an Increase operator.
          REQUIRES_ATTENTION =
            T.let(:requires_attention, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol)

          # The transfer has been rejected.
          REJECTED = T.let(:rejected, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol)

          # The check is queued for mailing.
          PENDING_MAILING =
            T.let(:pending_mailing, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol)

          # The check has been mailed.
          MAILED = T.let(:mailed, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol)

          # The check has been deposited.
          DEPOSITED = T.let(:deposited, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol)

          # A stop-payment was requested for this check.
          STOPPED = T.let(:stopped, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol)

          # The transfer has been returned.
          RETURNED = T.let(:returned, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
