# frozen_string_literal: true

module Increase
  module Resources
    class Intrafi
      # @return [Increase::Resources::Intrafi::AccountEnrollments]
      attr_reader :account_enrollments

      # @return [Increase::Resources::Intrafi::Balances]
      attr_reader :balances

      # @return [Increase::Resources::Intrafi::Exclusions]
      attr_reader :exclusions

      def initialize(client:)
        @client = client
        @account_enrollments = Increase::Resources::Intrafi::AccountEnrollments.new(client: client)
        @balances = Increase::Resources::Intrafi::Balances.new(client: client)
        @exclusions = Increase::Resources::Intrafi::Exclusions.new(client: client)
      end
    end
  end
end
