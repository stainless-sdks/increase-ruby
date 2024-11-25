# frozen_string_literal: true

module Increase
  module Resources
    class ProofOfAuthorizationRequests
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve a Proof of Authorization Request
      #
      # @param proof_of_authorization_request_id [String] The identifier of the Proof of Authorization Request.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ProofOfAuthorizationRequest]
      def retrieve(proof_of_authorization_request_id, opts = {})
        req = {
          method: :get,
          path: "/proof_of_authorization_requests/#{proof_of_authorization_request_id}",
          model: Increase::Models::ProofOfAuthorizationRequest
        }
        @client.request(req, opts)
      end

      # List Proof of Authorization Requests
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Increase::Models::ProofOfAuthorizationRequestListParams::CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::ProofOfAuthorizationRequest>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/proof_of_authorization_requests",
          query: params,
          page: Increase::Page,
          model: Increase::Models::ProofOfAuthorizationRequest
        }
        @client.request(req, opts)
      end
    end
  end
end
