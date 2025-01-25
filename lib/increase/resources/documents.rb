# frozen_string_literal: true

module Increase
  module Resources
    class Documents
      # Retrieve a Document
      #
      # @param document_id [String] The identifier of the Document to retrieve.
      #
      # @param params [Increase::Models::DocumentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::Document]
      #
      def retrieve(document_id, params = {})
        @client.request(
          method: :get,
          path: ["documents/%0s", document_id],
          model: Increase::Models::Document,
          options: params[:request_options]
        )
      end

      # List Documents
      #
      # @param params [Increase::Models::DocumentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::DocumentListParams::Category] :category
      #
      #   @option params [Increase::Models::DocumentListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :entity_id Filter Documents to ones belonging to the specified Entity.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Page<Increase::Models::Document>]
      #
      def list(params = {})
        parsed, options = Increase::Models::DocumentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "documents",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Document,
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
