# frozen_string_literal: true

module Increase
  module Resources
    class IntrafiResource
      attr_reader :account_enrollments, :balances, :exclusions

      def initialize(client:)
        @client = client
        @account_enrollments = Increase::Resources::Intrafi::AccountEnrollmentsResource.new(client: client)
        @balances = Increase::Resources::Intrafi::BalancesResource.new(client: client)
        @exclusions = Increase::Resources::Intrafi::ExclusionsResource.new(client: client)
      end
    end
  end
end
