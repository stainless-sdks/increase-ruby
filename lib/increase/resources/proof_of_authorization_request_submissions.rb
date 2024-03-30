# frozen_string_literal: true

module Increase
  module Resources
    class ProofOfAuthorizationRequestSubmissions
      def initialize(client:)
        @client = client
      end

      # Submit Proof of Authorization
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :authorization_terms Terms of authorization.
      # @option params [String] :authorized_at Time of authorization.
      # @option params [String] :authorizer_email Email of the authorizer.
      # @option params [String] :authorizer_name Name of the authorizer.
      # @option params [Boolean] :customer_has_been_offboarded Whether the customer has been offboarded or suspended.
      # @option params [String] :proof_of_authorization_request_id ID of the proof of authorization request.
      # @option params [Boolean] :validated_account_ownership_via_credential Whether the account ownership was validated via credential (e.g. Plaid).
      # @option params [Boolean] :validated_account_ownership_with_account_statement Whether the account ownership was validated with an account statement.
      # @option params [Boolean] :validated_account_ownership_with_microdeposit Whether the account ownership was validated with a microdeposit.
      # @option params [String] :authorizer_company Company of the authorizer.
      # @option params [String] :authorizer_ip_address IP address of the authorizer.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ProofOfAuthorizationRequestSubmission]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/proof_of_authorization_request_submissions"
        body_params = [
          :authorization_terms,
          :authorized_at,
          :authorizer_email,
          :authorizer_name,
          :customer_has_been_offboarded,
          :proof_of_authorization_request_id,
          :validated_account_ownership_via_credential,
          :validated_account_ownership_with_account_statement,
          :validated_account_ownership_with_microdeposit,
          :authorizer_company,
          :authorizer_ip_address
        ]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::ProofOfAuthorizationRequestSubmission
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a Proof of Authorization Request Submission
      #
      # @param proof_of_authorization_request_submission_id [String] The identifier of the Proof of Authorization Request Submission.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ProofOfAuthorizationRequestSubmission]
      def retrieve(proof_of_authorization_request_submission_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] =
          "/proof_of_authorization_request_submissions/#{proof_of_authorization_request_submission_id}"
        request[:model] = Increase::Models::ProofOfAuthorizationRequestSubmission
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
