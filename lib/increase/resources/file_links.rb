# frozen_string_literal: true

module Increase
  module Resources
    class FileLinks
      # Create a File Link
      #
      # @param params [Increase::Models::FileLinkCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :file_id The File to create a File Link for.
      #
      #   @option params [Time] :expires_at The time at which the File Link will expire. The default is 1 hour from the time
      #     of the request. The maxiumum is 1 day from the time of the request.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::FileLink]
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

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
