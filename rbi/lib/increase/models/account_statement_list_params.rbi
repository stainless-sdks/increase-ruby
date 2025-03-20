# typed: strong

module Increase
  module Models
    class AccountStatementListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # Filter Account Statements to those belonging to the specified Account.
      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
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

      sig { returns(T.nilable(Increase::Models::AccountStatementListParams::StatementPeriodStart)) }
      def statement_period_start
      end

      sig do
        params(
          _: T.any(Increase::Models::AccountStatementListParams::StatementPeriodStart, Increase::Util::AnyHash)
        )
          .returns(
            T.any(Increase::Models::AccountStatementListParams::StatementPeriodStart, Increase::Util::AnyHash)
          )
      end
      def statement_period_start=(_)
      end

      sig do
        params(
          account_id: String,
          cursor: String,
          limit: Integer,
          statement_period_start: Increase::Models::AccountStatementListParams::StatementPeriodStart,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(account_id: nil, cursor: nil, limit: nil, statement_period_start: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              account_id: String,
              cursor: String,
              limit: Integer,
              statement_period_start: Increase::Models::AccountStatementListParams::StatementPeriodStart,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class StatementPeriodStart < Increase::BaseModel
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
