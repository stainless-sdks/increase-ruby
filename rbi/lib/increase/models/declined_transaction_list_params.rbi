# typed: strong

module Increase
  module Models
    class DeclinedTransactionListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(Increase::Models::DeclinedTransactionListParams::Category)) }
      attr_reader :category

      sig { params(category: Increase::Models::DeclinedTransactionListParams::Category).void }
      attr_writer :category

      sig { returns(T.nilable(Increase::Models::DeclinedTransactionListParams::CreatedAt)) }
      attr_reader :created_at

      sig { params(created_at: Increase::Models::DeclinedTransactionListParams::CreatedAt).void }
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

      sig do
        params(
          account_id: String,
          category: Increase::Models::DeclinedTransactionListParams::Category,
          created_at: Increase::Models::DeclinedTransactionListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          route_id: String,
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
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            category: Increase::Models::DeclinedTransactionListParams::Category,
            created_at: Increase::Models::DeclinedTransactionListParams::CreatedAt,
            cursor: String,
            limit: Integer,
            route_id: String,
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

          # ACH Decline: details will be under the `ach_decline` object.
          ACH_DECLINE = :ach_decline

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE = :card_decline

          # Check Decline: details will be under the `check_decline` object.
          CHECK_DECLINE = :check_decline

          # Inbound Real-Time Payments Transfer Decline: details will be under the `inbound_real_time_payments_transfer_decline` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_DECLINE = :inbound_real_time_payments_transfer_decline

          # Wire Decline: details will be under the `wire_decline` object.
          WIRE_DECLINE = :wire_decline

          # Check Deposit Rejection: details will be under the `check_deposit_rejection` object.
          CHECK_DEPOSIT_REJECTION = :check_deposit_rejection

          # The Declined Transaction was made for an undocumented or deprecated reason.
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
    end
  end
end
