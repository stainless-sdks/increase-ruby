# typed: strong

module Increase
  module Models
    class CheckTransferListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/paths//check_transfers/get/parameters/2/schema
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(Increase::Models::CheckTransferListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(
          created_at: T.any(Increase::Models::CheckTransferListParams::CreatedAt, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :created_at

      # #/paths//check_transfers/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//check_transfers/get/parameters/3/schema
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # #/paths//check_transfers/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::Models::CheckTransferListParams::Status)) }
      attr_reader :status

      sig { params(status: T.any(Increase::Models::CheckTransferListParams::Status, Increase::Internal::AnyHash)).void }
      attr_writer :status

      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::CheckTransferListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::CheckTransferListParams::Status, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
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
      ); end
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
      def to_hash; end

      class CreatedAt < Increase::Internal::Type::BaseModel
        # #/paths//check_transfers/get/parameters/5/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # #/paths//check_transfers/get/parameters/6/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # #/paths//check_transfers/get/parameters/7/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # #/paths//check_transfers/get/parameters/8/schema
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
        # #/paths//check_transfers/get/parameters/4/schema
        sig { returns(T.nilable(T::Array[Increase::Models::CheckTransferListParams::Status::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::CheckTransferListParams::Status::In::OrSymbol]).void }
        attr_writer :in_

        sig do
          params(in_: T::Array[Increase::Models::CheckTransferListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil); end

        sig { override.returns({in_: T::Array[Increase::Models::CheckTransferListParams::Status::In::OrSymbol]}) }
        def to_hash; end

        # #/paths//check_transfers/get/parameters/4/schema/items
        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransferListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol) }

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

          sig { override.returns(T::Array[Increase::Models::CheckTransferListParams::Status::In::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
