# typed: strong

module Increase
  module Models
    class AccountStatementListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/paths//account_statements/get/parameters/2/schema
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # #/paths//account_statements/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//account_statements/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::Models::AccountStatementListParams::StatementPeriodStart)) }
      attr_reader :statement_period_start

      sig do
        params(
          statement_period_start: T.any(Increase::Models::AccountStatementListParams::StatementPeriodStart, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :statement_period_start

      sig do
        params(
          account_id: String,
          cursor: String,
          limit: Integer,
          statement_period_start: T.any(Increase::Models::AccountStatementListParams::StatementPeriodStart, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id: nil,
        cursor: nil,
        limit: nil,
        statement_period_start: nil,
        request_options: {}
      )
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
      def to_hash; end

      class StatementPeriodStart < Increase::Internal::Type::BaseModel
        # #/paths//account_statements/get/parameters/3/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # #/paths//account_statements/get/parameters/4/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # #/paths//account_statements/get/parameters/5/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # #/paths//account_statements/get/parameters/6/schema
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
    end
  end
end
