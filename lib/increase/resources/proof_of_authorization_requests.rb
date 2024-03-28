# frozen_string_literal: true

module Increase
  module Resources
    class ProofOfAuthorizationRequestsResource
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

      # List Proof of Authorization Requests
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ProofOfAuthorizationRequest]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/proof_of_authorization_requests"
        query_params = [:created_at, :cursor, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::ProofOfAuthorizationRequest
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
