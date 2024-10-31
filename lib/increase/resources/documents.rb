# frozen_string_literal: true

module Increase
  module Resources
    class Documents
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve a Document
      #
      # @param document_id [String] The identifier of the Document to retrieve.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Document]
      def retrieve(document_id, opts = {})
        req = {
          method: :get,
          path: "/documents/#{document_id}",
          model: Increase::Models::Document
        }
        @client.request(req, opts)
      end

      # List Documents
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Category, nil] :category
      #   @option params [CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [String, nil] :entity_id Filter Documents to ones belonging to the specified Entity.
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Document>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/documents",
          query: params,
          page: Increase::Page,
          model: Increase::Models::Document
        }
        @client.request(req, opts)
      end
    end
  end
end
