# frozen_string_literal: true

module Increase
  module Resources
    class SupplementalDocuments
      def initialize(client:)
        @client = client
      end

      # Create a supplemental document for an Entity
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :entity_id The identifier of the Entity to associate with the supplemental document.
      # @option params [String] :file_id The identifier of the File containing the document.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::EntitySupplementalDocument]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/entity_supplemental_documents",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::EntitySupplementalDocument
        }
        @client.request(req, opts)
      end

      # List Entity Supplemental Document Submissions
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :entity_id The identifier of the Entity to list supplemental documents for.
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::EntitySupplementalDocument>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/entity_supplemental_documents",
          query: params,
          page: Increase::Page,
          model: Increase::Models::EntitySupplementalDocument
        }
        @client.request(req, opts)
      end
    end
  end
end
