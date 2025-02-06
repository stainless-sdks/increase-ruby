# typed: strong

module Increase
  module Models
    class PendingTransactionListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(Increase::Models::PendingTransactionListParams::Category)) }
      attr_reader :category

      sig { params(category: Increase::Models::PendingTransactionListParams::Category).void }
      attr_writer :category

      sig { returns(T.nilable(Increase::Models::PendingTransactionListParams::CreatedAt)) }
      attr_reader :created_at

      sig { params(created_at: Increase::Models::PendingTransactionListParams::CreatedAt).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :route_id

      sig { params(route_id: String).void }
      attr_writer :route_id

      sig { returns(T.nilable(Increase::Models::PendingTransactionListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::Models::PendingTransactionListParams::Status).void }
      attr_writer :status

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
        ).void
      end
      def initialize(
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
        override.returns(
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

          # Account Transfer Instruction: details will be under the `account_transfer_instruction` object.
          ACCOUNT_TRANSFER_INSTRUCTION = :account_transfer_instruction

          # ACH Transfer Instruction: details will be under the `ach_transfer_instruction` object.
          ACH_TRANSFER_INSTRUCTION = :ach_transfer_instruction

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION = :card_authorization

          # Check Deposit Instruction: details will be under the `check_deposit_instruction` object.
          CHECK_DEPOSIT_INSTRUCTION = :check_deposit_instruction

          # Check Transfer Instruction: details will be under the `check_transfer_instruction` object.
          CHECK_TRANSFER_INSTRUCTION = :check_transfer_instruction

          # Inbound Funds Hold: details will be under the `inbound_funds_hold` object.
          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          # Real-Time Payments Transfer Instruction: details will be under the `real_time_payments_transfer_instruction` object.
          REAL_TIME_PAYMENTS_TRANSFER_INSTRUCTION = :real_time_payments_transfer_instruction

          # Wire Transfer Instruction: details will be under the `wire_transfer_instruction` object.
          WIRE_TRANSFER_INSTRUCTION = :wire_transfer_instruction

          # Inbound Wire Transfer Reversal: details will be under the `inbound_wire_transfer_reversal` object.
          INBOUND_WIRE_TRANSFER_REVERSAL = :inbound_wire_transfer_reversal

          # The Pending Transaction was made for an undocumented or deprecated reason.
          OTHER = :other

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
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

          # The Pending Transaction is still awaiting confirmation.
          PENDING = :pending

          # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
          COMPLETE = :complete

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
