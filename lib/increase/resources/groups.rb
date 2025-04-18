# frozen_string_literal: true

module Increase
  module Resources
    class Groups
      # @api private
      private def initialize_resources; end

      # Returns details for the currently authenticated Group.
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Group]
      #
      # @see Increase::Models::GroupRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "groups/current",
          model: Increase::Models::Group,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
