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
          request = {}
          request[:method] = :post
          request[:path] = "/entities/#{entity_id}/supplemental_documents"
          body_params = [:file_id]
          request[:body] = params.filter { |k, _| body_params.include?(k) }
          request[:model] = Increase::Models::Entity
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
