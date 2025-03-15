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

      # Retrieve a File Link
      #
      # @param file_link_id [String] The identifier of the File Link.
      #
      # @param params [Increase::Models::FileLinkRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::FileLink]
      def retrieve(file_link_id, params = {})
        @client.request(
          method: :get,
          path: ["file_links/%0s", file_link_id],
          model: Increase::Models::FileLink,
          options: params[:request_options]
        )
      end

      # List File Links
      #
      # @param params [Increase::Models::FileLinkListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :file_id The identifier of the File to list File Links for.
      #
      #   @option params [Increase::Models::FileLinkListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::FileLink>]
      def list(params)
        parsed, options = Increase::Models::FileLinkListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "file_links",
          query: parsed,
          page: Increase::Page,
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
