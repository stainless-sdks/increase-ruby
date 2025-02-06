# typed: strong

module Increase
  module Models
    class AccountStatementListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::Models::AccountStatementListParams::StatementPeriodStart)) }
      attr_reader :statement_period_start

      sig do
        params(statement_period_start: Increase::Models::AccountStatementListParams::StatementPeriodStart).void
      end
      attr_writer :statement_period_start

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
