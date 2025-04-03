# frozen_string_literal: true

module Increase
  module Resources
    class ProofOfAuthorizationRequests
      # Retrieve a Proof of Authorization Request
      #
      # @overload retrieve(proof_of_authorization_request_id, request_options: {})
      #
      # @param proof_of_authorization_request_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ProofOfAuthorizationRequest]
      #
      # @see Increase::Models::ProofOfAuthorizationRequestRetrieveParams
      def retrieve(proof_of_authorization_request_id, params = {})
        @client.request(
          method: :get,
          path: ["proof_of_authorization_requests/%1$s", proof_of_authorization_request_id],
          model: Increase::Models::ProofOfAuthorizationRequest,
          options: params[:request_options]
        )
      end

      # List Proof of Authorization Requests
      #
      # @overload list(created_at: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param created_at [Increase::Models::ProofOfAuthorizationRequestListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::ProofOfAuthorizationRequest>]
      #
      # @see Increase::Models::ProofOfAuthorizationRequestListParams
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

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
