# frozen_string_literal: true

module Increase
  module Resources
    class Documents
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
    end
  end
end
