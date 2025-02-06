# frozen_string_literal: true

module Increase
  module Resources
    class Groups
      # Returns details for the currently authenticated Group.
      #
      # @param params [Increase::Models::GroupRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Group]
      #
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "groups/current",
          model: Increase::Models::Group,
          options: params[:request_options]
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
