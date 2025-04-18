# frozen_string_literal: true

module Increase
  module Resources
    class FileLinks
      # @api private
      private def initialize_resources; end

      # Create a File Link
      #
      # @overload create(file_id:, expires_at: nil, request_options: {})
      #
      # @param file_id [String]
      # @param expires_at [Time]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::FileLink]
      #
      # @see Increase::Models::FileLinkCreateParams
      def create(params)
        parsed, options = Increase::Models::FileLinkCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "file_links",
          body: parsed,
          model: Increase::Models::FileLink,
          options: options
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
