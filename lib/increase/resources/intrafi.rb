# frozen_string_literal: true

module Increase
  module Resources
    class Intrafi
      attr_reader :account_enrollments, :balances, :exclusions

      def initialize(client:)
        @client = client
        @account_enrollments = Increase::Resources::Intrafi::AccountEnrollments.new(client: client)
        @balances = Increase::Resources::Intrafi::Balances.new(client: client)
        @exclusions = Increase::Resources::Intrafi::Exclusions.new(client: client)
      end
    end
  end
end
