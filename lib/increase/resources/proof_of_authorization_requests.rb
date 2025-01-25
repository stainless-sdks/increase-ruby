# frozen_string_literal: true

module Increase
  module Resources
    class ProofOfAuthorizationRequests
      # Retrieve a Proof of Authorization Request
      #
      # @param proof_of_authorization_request_id [String] The identifier of the Proof of Authorization Request.
      #
      # @param params [Increase::Models::ProofOfAuthorizationRequestRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::ProofOfAuthorizationRequest]
      #
      def retrieve(proof_of_authorization_request_id, params = {})
        @client.request(
          method: :get,
          path: ["proof_of_authorization_requests/%0s", proof_of_authorization_request_id],
          model: Increase::Models::ProofOfAuthorizationRequest,
          options: params[:request_options]
        )
      end

      # List Proof of Authorization Requests
      #
      # @param params [Increase::Models::ProofOfAuthorizationRequestListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::Models::ProofOfAuthorizationRequestListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Page<Increase::Models::ProofOfAuthorizationRequest>]
      #
      def list(params = {})
        parsed, options = Increase::Models::ProofOfAuthorizationRequestListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "proof_of_authorization_requests",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::ProofOfAuthorizationRequest,
          options: options
        )
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
