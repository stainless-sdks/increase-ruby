# frozen_string_literal: true

module Increase
  module Resources
    class Entities
      class SupplementalDocuments
        def initialize(client:)
          @client = client
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
        # @return [Increase::Page<Increase::Models::SupplementalDocumentListResponse>]
        def list(params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/entity_supplemental_documents"
          req[:query] = params
          req[:page] = Increase::Page
          req[:model] = Increase::Models::SupplementalDocumentListResponse
          @client.request(req, opts)
        end
      end
    end
  end
end
