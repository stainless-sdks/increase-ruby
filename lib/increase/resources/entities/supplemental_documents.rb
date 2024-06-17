# frozen_string_literal: true

module Increase
  module Resources
    class Entities
      class SupplementalDocuments
        def initialize(client:)
          @client = client
        end

        # Create a supplemental document for an Entity
        # 
        # @param entity_id [String] The identifier of the Entity to associate with the supplemental document.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :file_id The identifier of the File containing the document.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::Entity]
        def create(entity_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/entities/#{entity_id}/supplemental_documents"
          req[:body] = params
          req[:model] = Increase::Models::Entity
          @client.request(req, opts)
        end

        # List Entity Supplemental Document Submissions
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :entity_id The identifier of the Entity to list supplemental documents for.
        # @option params [String] :cursor Return the page of entries after this one.
        # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
        #   that object. This value is unique across Increase and is used to ensure that a
        #   request is only processed once. Learn more about
        #   [idempotency](https://increase.com/documentation/idempotency-keys).
        # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
        #   objects.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Page<Increase::Models::SupplementalDocument>]
        def list(params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/entity_supplemental_documents"
          req[:query] = params
          req[:page] = Increase::Page
          req[:model] = Increase::Models::SupplementalDocument
          @client.request(req, opts)
        end
      end
    end
  end
end
