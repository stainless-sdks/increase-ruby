# frozen_string_literal: true

module Increase
  module Resources
    class ProofOfAuthorizationRequests
      def initialize(client:)
        @client = client
      end

      # Retrieve a Proof of Authorization Request
      #
      # @param proof_of_authorization_request_id [String] The identifier of the Proof of Authorization Request.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ProofOfAuthorizationRequest]
      def retrieve(proof_of_authorization_request_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/proof_of_authorization_requests/#{proof_of_authorization_request_id}"
        request[:model] = Increase::Models::ProofOfAuthorizationRequest
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
