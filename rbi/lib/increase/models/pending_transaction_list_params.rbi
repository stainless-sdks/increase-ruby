# typed: strong

module Increase
  module Models
    class PendingTransactionListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/paths//pending_transactions/get/parameters/2/schema
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(Increase::Models::PendingTransactionListParams::Category)) }
      attr_reader :category

      sig do
        params(
          category: T.any(Increase::Models::PendingTransactionListParams::Category, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :category

      sig { returns(T.nilable(Increase::Models::PendingTransactionListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(
          created_at: T.any(Increase::Models::PendingTransactionListParams::CreatedAt, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :created_at

      # #/paths//pending_transactions/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//pending_transactions/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # #/paths//pending_transactions/get/parameters/3/schema
      sig { returns(T.nilable(String)) }
      attr_reader :route_id

      sig { params(route_id: String).void }
      attr_writer :route_id

      sig { returns(T.nilable(Increase::Models::PendingTransactionListParams::Status)) }
      attr_reader :status

      sig do
        params(status: T.any(Increase::Models::PendingTransactionListParams::Status, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :status

      sig do
        params(
          account_id: String,
          category: T.any(Increase::Models::PendingTransactionListParams::Category, Increase::Internal::AnyHash),
          created_at: T.any(Increase::Models::PendingTransactionListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          route_id: String,
          status: T.any(Increase::Models::PendingTransactionListParams::Status, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id: nil,
        category: nil,
        created_at: nil,
        cursor: nil,
        limit: nil,
        route_id: nil,
        status: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              account_id: String,
              category: Increase::Models::PendingTransactionListParams::Category,
              created_at: Increase::Models::PendingTransactionListParams::CreatedAt,
              cursor: String,
              limit: Integer,
              route_id: String,
              status: Increase::Models::PendingTransactionListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class Category < Increase::Internal::Type::BaseModel
        # #/paths//pending_transactions/get/parameters/4/schema
        sig { returns(T.nilable(T::Array[Increase::Models::PendingTransactionListParams::Category::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::PendingTransactionListParams::Category::In::OrSymbol]).void }
        attr_writer :in_

        sig do
          params(in_: T::Array[Increase::Models::PendingTransactionListParams::Category::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil); end

        sig { override.returns({in_: T::Array[Increase::Models::PendingTransactionListParams::Category::In::OrSymbol]}) }
        def to_hash; end

        # #/paths//pending_transactions/get/parameters/4/schema/items
        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::PendingTransactionListParams::Category::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol) }

          # Account Transfer Instruction: details will be under the `account_transfer_instruction` object.
          ACCOUNT_TRANSFER_INSTRUCTION =
            T.let(
              :account_transfer_instruction,
              Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol
            )

          # ACH Transfer Instruction: details will be under the `ach_transfer_instruction` object.
          ACH_TRANSFER_INSTRUCTION =
            T.let(
              :ach_transfer_instruction,
              Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol
            )

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION =
            T.let(:card_authorization, Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol)

          # Check Deposit Instruction: details will be under the `check_deposit_instruction` object.
          CHECK_DEPOSIT_INSTRUCTION =
            T.let(
              :check_deposit_instruction,
              Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol
            )

          # Check Transfer Instruction: details will be under the `check_transfer_instruction` object.
          CHECK_TRANSFER_INSTRUCTION =
            T.let(
              :check_transfer_instruction,
              Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol
            )

          # Inbound Funds Hold: details will be under the `inbound_funds_hold` object.
          INBOUND_FUNDS_HOLD =
            T.let(:inbound_funds_hold, Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol)

          # Real-Time Payments Transfer Instruction: details will be under the `real_time_payments_transfer_instruction` object.
          REAL_TIME_PAYMENTS_TRANSFER_INSTRUCTION =
            T.let(
              :real_time_payments_transfer_instruction,
              Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol
            )

          # Wire Transfer Instruction: details will be under the `wire_transfer_instruction` object.
          WIRE_TRANSFER_INSTRUCTION =
            T.let(
              :wire_transfer_instruction,
              Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol
            )

          # Inbound Wire Transfer Reversal: details will be under the `inbound_wire_transfer_reversal` object.
          INBOUND_WIRE_TRANSFER_REVERSAL =
            T.let(
              :inbound_wire_transfer_reversal,
              Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol
            )

          # The Pending Transaction was made for an undocumented or deprecated reason.
          OTHER = T.let(:other, Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol]) }
          def self.values; end
        end
      end

      class CreatedAt < Increase::Internal::Type::BaseModel
        # #/paths//pending_transactions/get/parameters/6/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # #/paths//pending_transactions/get/parameters/7/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # #/paths//pending_transactions/get/parameters/8/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # #/paths//pending_transactions/get/parameters/9/schema
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
        # #/paths//pending_transactions/get/parameters/5/schema
        sig { returns(T.nilable(T::Array[Increase::Models::PendingTransactionListParams::Status::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::PendingTransactionListParams::Status::In::OrSymbol]).void }
        attr_writer :in_

        sig do
          params(in_: T::Array[Increase::Models::PendingTransactionListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil); end

        sig { override.returns({in_: T::Array[Increase::Models::PendingTransactionListParams::Status::In::OrSymbol]}) }
        def to_hash; end

        # #/paths//pending_transactions/get/parameters/5/schema/items
        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransactionListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::PendingTransactionListParams::Status::In::TaggedSymbol) }

          # The Pending Transaction is still awaiting confirmation.
          PENDING = T.let(:pending, Increase::Models::PendingTransactionListParams::Status::In::TaggedSymbol)

          # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
          COMPLETE = T.let(:complete, Increase::Models::PendingTransactionListParams::Status::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::PendingTransactionListParams::Status::In::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
