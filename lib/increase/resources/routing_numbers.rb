# frozen_string_literal: true

module Increase
  module Resources
    class RoutingNumbers
      def initialize(client:)
        @client = client
      end

      # You can use this API to confirm if a routing number is valid, such as when a
      #   user is providing you with bank account details. Since routing numbers uniquely
      #   identify a bank, this will always return 0 or 1 entry. In Sandbox, the only
      #   valid routing number for this method is 110000000.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :routing_number Filter financial institutions by routing number.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RoutingNumber]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/routing_numbers"
        query_params = [:routing_number, :cursor, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::RoutingNumber
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
