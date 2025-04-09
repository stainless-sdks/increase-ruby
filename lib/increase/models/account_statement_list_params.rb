# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::AccountStatements#list
    class AccountStatementListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] account_id
      #   #/paths//account_statements/get/parameters/2/schema
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] cursor
      #   #/paths//account_statements/get/parameters/0/schema
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] limit
      #   #/paths//account_statements/get/parameters/1/schema
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] statement_period_start
      #
      #   @return [Increase::Models::AccountStatementListParams::StatementPeriodStart, nil]
      optional :statement_period_start,
               -> { Increase::Models::AccountStatementListParams::StatementPeriodStart }

      # @!parse
      #   # @return [Increase::Models::AccountStatementListParams::StatementPeriodStart]
      #   attr_writer :statement_period_start

      # @!parse
      #   # @param account_id [String]
      #   # @param cursor [String]
      #   # @param limit [Integer]
      #   # @param statement_period_start [Increase::Models::AccountStatementListParams::StatementPeriodStart]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_id: nil, cursor: nil, limit: nil, statement_period_start: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class StatementPeriodStart < Increase::Internal::Type::BaseModel
        # @!attribute [r] after
        #   #/paths//account_statements/get/parameters/3/schema
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   #/paths//account_statements/get/parameters/4/schema
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   #/paths//account_statements/get/parameters/5/schema
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   #/paths//account_statements/get/parameters/6/schema
        #
        #   @return [Time, nil]
        optional :on_or_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_before

        # @!parse
        #   # @param after [Time]
        #   # @param before [Time]
        #   # @param on_or_after [Time]
        #   # @param on_or_before [Time]
        #   #
        #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
