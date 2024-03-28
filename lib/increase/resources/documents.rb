# frozen_string_literal: true

module Increase
  module Resources
    class DocumentsResource
      def initialize(client:)
        @client = client
      end

      # Retrieve a Document
      #
      # @param document_id [String] The identifier of the Document to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Document]
      def retrieve(document_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/documents/#{document_id}"
        request[:model] = Increase::Models::Document
        request.merge!(opts)
        @client.request(request)
      end

      # List Documents
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :category
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :entity_id Filter Documents to ones belonging to the specified Entity.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Document]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/documents"
        query_params = [:category, :created_at, :cursor, :entity_id, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::Document
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
