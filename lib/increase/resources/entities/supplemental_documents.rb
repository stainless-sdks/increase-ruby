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
      end
    end
  end
end
