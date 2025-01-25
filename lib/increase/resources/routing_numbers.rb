# frozen_string_literal: true

module Increase
  module Resources
    class RoutingNumbers
      # You can use this API to confirm if a routing number is valid, such as when a
      #   user is providing you with bank account details. Since routing numbers uniquely
      #   identify a bank, this will always return 0 or 1 entry. In Sandbox, the only
      #   valid routing number for this method is 110000000.
      #
      # @param params [Increase::Models::RoutingNumberListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :routing_number Filter financial institutions by routing number.
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Page<Increase::Models::RoutingNumberListResponse>]
      #
      def list(params)
        parsed, options = Increase::Models::RoutingNumberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "routing_numbers",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::RoutingNumberListResponse,
          options: options
        )
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
