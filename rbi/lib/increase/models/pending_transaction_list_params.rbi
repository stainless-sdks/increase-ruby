# typed: strong

module Increase
  module Models
    class PendingTransactionListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # Filter pending transactions to those belonging to the specified Account.
      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::PendingTransactionListParams::Category)) }
      def category
      end

      sig do
        params(_: Increase::Models::PendingTransactionListParams::Category)
          .returns(Increase::Models::PendingTransactionListParams::Category)
      end
      def category=(_)
      end

      sig { returns(T.nilable(Increase::Models::PendingTransactionListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: Increase::Models::PendingTransactionListParams::CreatedAt)
          .returns(Increase::Models::PendingTransactionListParams::CreatedAt)
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

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      # Filter pending transactions to those belonging to the specified Route.
      sig { returns(T.nilable(String)) }
      def route_id
      end

      sig { params(_: String).returns(String) }
      def route_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::PendingTransactionListParams::Status)) }
      def status
      end

      sig do
        params(_: Increase::Models::PendingTransactionListParams::Status)
          .returns(Increase::Models::PendingTransactionListParams::Status)
      end
      def status=(_)
      end

      sig do
        params(
          account_id: String,
          category: Increase::Models::PendingTransactionListParams::Category,
          created_at: Increase::Models::PendingTransactionListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          route_id: String,
          status: Increase::Models::PendingTransactionListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

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
      def to_hash
      end

      class Category < Increase::BaseModel
        # Return results whose value is in the provided list. For GET requests, this
        #   should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::PendingTransactionListParams::Category::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::PendingTransactionListParams::Category::In::OrSymbol])
            .returns(T::Array[Increase::Models::PendingTransactionListParams::Category::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::PendingTransactionListParams::Category::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::PendingTransactionListParams::Category::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::PendingTransactionListParams::Category::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::PendingTransactionListParams::Category::In::TaggedSymbol) }

          # Account Transfer Instruction: details will be under the `account_transfer_instruction` object.
          ACCOUNT_TRANSFER_INSTRUCTION =
            T.let(
              :account_transfer_instruction,
              Increase::Models::PendingTransactionListParams::Category::In::OrSymbol
            )

          # ACH Transfer Instruction: details will be under the `ach_transfer_instruction` object.
          ACH_TRANSFER_INSTRUCTION =
            T.let(:ach_transfer_instruction, Increase::Models::PendingTransactionListParams::Category::In::OrSymbol)

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION =
            T.let(:card_authorization, Increase::Models::PendingTransactionListParams::Category::In::OrSymbol)

          # Check Deposit Instruction: details will be under the `check_deposit_instruction` object.
          CHECK_DEPOSIT_INSTRUCTION =
            T.let(:check_deposit_instruction, Increase::Models::PendingTransactionListParams::Category::In::OrSymbol)

          # Check Transfer Instruction: details will be under the `check_transfer_instruction` object.
          CHECK_TRANSFER_INSTRUCTION =
            T.let(:check_transfer_instruction, Increase::Models::PendingTransactionListParams::Category::In::OrSymbol)

          # Inbound Funds Hold: details will be under the `inbound_funds_hold` object.
          INBOUND_FUNDS_HOLD =
            T.let(:inbound_funds_hold, Increase::Models::PendingTransactionListParams::Category::In::OrSymbol)

          # Real-Time Payments Transfer Instruction: details will be under the `real_time_payments_transfer_instruction` object.
          REAL_TIME_PAYMENTS_TRANSFER_INSTRUCTION =
            T.let(
              :real_time_payments_transfer_instruction,
              Increase::Models::PendingTransactionListParams::Category::In::OrSymbol
            )

          # Wire Transfer Instruction: details will be under the `wire_transfer_instruction` object.
          WIRE_TRANSFER_INSTRUCTION =
            T.let(:wire_transfer_instruction, Increase::Models::PendingTransactionListParams::Category::In::OrSymbol)

          # Inbound Wire Transfer Reversal: details will be under the `inbound_wire_transfer_reversal` object.
          INBOUND_WIRE_TRANSFER_REVERSAL =
            T.let(
              :inbound_wire_transfer_reversal,
              Increase::Models::PendingTransactionListParams::Category::In::OrSymbol
            )

          # The Pending Transaction was made for an undocumented or deprecated reason.
          OTHER = T.let(:other, Increase::Models::PendingTransactionListParams::Category::In::OrSymbol)
        end
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
        # Filter Pending Transactions for those with the specified status. By default only
        #   Pending Transactions in with status `pending` will be returned. For GET
        #   requests, this should be encoded as a comma-delimited string, such as
        #   `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::PendingTransactionListParams::Status::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::PendingTransactionListParams::Status::In::OrSymbol])
            .returns(T::Array[Increase::Models::PendingTransactionListParams::Status::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::PendingTransactionListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::PendingTransactionListParams::Status::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PendingTransactionListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::PendingTransactionListParams::Status::In::TaggedSymbol) }

          # The Pending Transaction is still awaiting confirmation.
          PENDING = T.let(:pending, Increase::Models::PendingTransactionListParams::Status::In::OrSymbol)

          # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
          COMPLETE = T.let(:complete, Increase::Models::PendingTransactionListParams::Status::In::OrSymbol)
        end
      end
    end
  end
end
