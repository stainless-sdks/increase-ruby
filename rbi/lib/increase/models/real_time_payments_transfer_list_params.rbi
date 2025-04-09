# typed: strong

module Increase
  module Models
    class RealTimePaymentsTransferListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/paths//real_time_payments_transfers/get/parameters/2/schema
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransferListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(
          created_at: T.any(Increase::Models::RealTimePaymentsTransferListParams::CreatedAt, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :created_at

      # #/paths//real_time_payments_transfers/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//real_time_payments_transfers/get/parameters/3/schema
      sig { returns(T.nilable(String)) }
      attr_reader :external_account_id

      sig { params(external_account_id: String).void }
      attr_writer :external_account_id

      # #/paths//real_time_payments_transfers/get/parameters/4/schema
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # #/paths//real_time_payments_transfers/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransferListParams::Status)) }
      attr_reader :status

      sig do
        params(
          status: T.any(Increase::Models::RealTimePaymentsTransferListParams::Status, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :status

      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::RealTimePaymentsTransferListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          external_account_id: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::RealTimePaymentsTransferListParams::Status, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id: nil,
        created_at: nil,
        cursor: nil,
        external_account_id: nil,
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
              created_at: Increase::Models::RealTimePaymentsTransferListParams::CreatedAt,
              cursor: String,
              external_account_id: String,
              idempotency_key: String,
              limit: Integer,
              status: Increase::Models::RealTimePaymentsTransferListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class CreatedAt < Increase::Internal::Type::BaseModel
        # #/paths//real_time_payments_transfers/get/parameters/6/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # #/paths//real_time_payments_transfers/get/parameters/7/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # #/paths//real_time_payments_transfers/get/parameters/8/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # #/paths//real_time_payments_transfers/get/parameters/9/schema
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
        # #/paths//real_time_payments_transfers/get/parameters/5/schema
        sig { returns(T.nilable(T::Array[Increase::Models::RealTimePaymentsTransferListParams::Status::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::RealTimePaymentsTransferListParams::Status::In::OrSymbol]).void }
        attr_writer :in_

        sig do
          params(in_: T::Array[Increase::Models::RealTimePaymentsTransferListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil); end

        sig do
          override
            .returns({in_: T::Array[Increase::Models::RealTimePaymentsTransferListParams::Status::In::OrSymbol]})
        end
        def to_hash; end

        # #/paths//real_time_payments_transfers/get/parameters/5/schema/items
        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::RealTimePaymentsTransferListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::RealTimePaymentsTransferListParams::Status::In::TaggedSymbol) }

          # The transfer is pending approval.
          PENDING_APPROVAL =
            T.let(:pending_approval, Increase::Models::RealTimePaymentsTransferListParams::Status::In::TaggedSymbol)

          # The transfer has been canceled.
          CANCELED =
            T.let(:canceled, Increase::Models::RealTimePaymentsTransferListParams::Status::In::TaggedSymbol)

          # The transfer is pending review by Increase.
          PENDING_REVIEWING =
            T.let(:pending_reviewing, Increase::Models::RealTimePaymentsTransferListParams::Status::In::TaggedSymbol)

          # The transfer requires attention from an Increase operator.
          REQUIRES_ATTENTION =
            T.let(:requires_attention, Increase::Models::RealTimePaymentsTransferListParams::Status::In::TaggedSymbol)

          # The transfer was rejected by the network or the recipient's bank.
          REJECTED =
            T.let(:rejected, Increase::Models::RealTimePaymentsTransferListParams::Status::In::TaggedSymbol)

          # The transfer is queued to be submitted to Real-Time Payments.
          PENDING_SUBMISSION =
            T.let(:pending_submission, Increase::Models::RealTimePaymentsTransferListParams::Status::In::TaggedSymbol)

          # The transfer has been submitted and is pending a response from Real-Time Payments.
          SUBMITTED =
            T.let(:submitted, Increase::Models::RealTimePaymentsTransferListParams::Status::In::TaggedSymbol)

          # The transfer has been sent successfully and is complete.
          COMPLETE =
            T.let(:complete, Increase::Models::RealTimePaymentsTransferListParams::Status::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::RealTimePaymentsTransferListParams::Status::In::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
