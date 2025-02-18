# typed: strong

module Increase
  module Models
    class AccountStatementListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

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
        params(_: Increase::Models::AccountStatementListParams::StatementPeriodStart).returns(Increase::Models::AccountStatementListParams::StatementPeriodStart)
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
        ).void
      end
      def initialize(
        account_id: nil,
        cursor: nil,
        limit: nil,
        statement_period_start: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
        sig { returns(T.nilable(Time)) }
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_before
        end

        sig { params(_: Time).returns(Time) }
        def on_or_before=(_)
        end

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
