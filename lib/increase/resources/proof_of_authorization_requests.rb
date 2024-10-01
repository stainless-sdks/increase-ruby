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
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ProofOfAuthorizationRequest]
      def retrieve(proof_of_authorization_request_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/proof_of_authorization_requests/#{proof_of_authorization_request_id}"
        req[:model] = Increase::Models::ProofOfAuthorizationRequest
        @client.request(req, opts)
      end

      # List Proof of Authorization Requests
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::ProofOfAuthorizationRequest>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/proof_of_authorization_requests"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::ProofOfAuthorizationRequest
        @client.request(req, opts)
      end

      class CreatedAt < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end
    end
  end
end
