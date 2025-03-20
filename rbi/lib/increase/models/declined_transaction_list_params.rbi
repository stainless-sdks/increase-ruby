# typed: strong

module Increase
  module Models
    class DeclinedTransactionListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # Filter Declined Transactions to ones belonging to the specified Account.
      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::DeclinedTransactionListParams::Category)) }
      def category
      end

      sig do
        params(_: T.any(Increase::Models::DeclinedTransactionListParams::Category, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::DeclinedTransactionListParams::Category, Increase::Util::AnyHash))
      end
      def category=(_)
      end

      sig { returns(T.nilable(Increase::Models::DeclinedTransactionListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: T.any(Increase::Models::DeclinedTransactionListParams::CreatedAt, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::DeclinedTransactionListParams::CreatedAt, Increase::Util::AnyHash))
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

      # Filter Declined Transactions to those belonging to the specified route.
      sig { returns(T.nilable(String)) }
      def route_id
      end

      sig { params(_: String).returns(String) }
      def route_id=(_)
      end

      sig do
        params(
          account_id: String,
          category: Increase::Models::DeclinedTransactionListParams::Category,
          created_at: Increase::Models::DeclinedTransactionListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          route_id: String,
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
        request_options: {}
      )
      end

      sig do
        override
          .returns(
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
        # Return results whose value is in the provided list. For GET requests, this
        #   should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol])
            .returns(T::Array[Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransactionListParams::Category::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::DeclinedTransactionListParams::Category::In::TaggedSymbol) }

          # ACH Decline: details will be under the `ach_decline` object.
          ACH_DECLINE =
            T.let(:ach_decline, Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol)

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE =
            T.let(:card_decline, Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol)

          # Check Decline: details will be under the `check_decline` object.
          CHECK_DECLINE =
            T.let(:check_decline, Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol)

          # Inbound Real-Time Payments Transfer Decline: details will be under the `inbound_real_time_payments_transfer_decline` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_DECLINE =
            T.let(
              :inbound_real_time_payments_transfer_decline,
              Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol
            )

          # Wire Decline: details will be under the `wire_decline` object.
          WIRE_DECLINE =
            T.let(:wire_decline, Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol)

          # Check Deposit Rejection: details will be under the `check_deposit_rejection` object.
          CHECK_DEPOSIT_REJECTION =
            T.let(:check_deposit_rejection, Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol)

          # The Declined Transaction was made for an undocumented or deprecated reason.
          OTHER = T.let(:other, Increase::Models::DeclinedTransactionListParams::Category::In::OrSymbol)
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
    end
  end
end
