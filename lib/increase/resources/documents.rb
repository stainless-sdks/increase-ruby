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
        req = {}
        req[:method] = :get
        req[:path] = "/documents/#{document_id}"
        req[:model] = Increase::Models::Document
        @client.request(req, opts)
      end
    end
  end
end
