# frozen_string_literal: true

module Increase
  module Resources
    class ProofOfAuthorizationRequestSubmissions
      # Submit Proof of Authorization
      #
      # @param params [Increase::Models::ProofOfAuthorizationRequestSubmissionCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :authorization_terms Terms of authorization.
      #
      #   @option params [Time] :authorized_at Time of authorization.
      #
      #   @option params [String] :authorizer_email Email of the authorizer.
      #
      #   @option params [String] :authorizer_name Name of the authorizer.
      #
      #   @option params [Boolean] :customer_has_been_offboarded Whether the customer has been offboarded or suspended.
      #
      #   @option params [String] :proof_of_authorization_request_id ID of the proof of authorization request.
      #
      #   @option params [Boolean] :validated_account_ownership_via_credential Whether the account ownership was validated via credential (e.g. Plaid).
      #
      #   @option params [Boolean] :validated_account_ownership_with_account_statement Whether the account ownership was validated with an account statement.
      #
      #   @option params [Boolean] :validated_account_ownership_with_microdeposit Whether the account ownership was validated with a microdeposit.
      #
      #   @option params [String] :authorizer_company Company of the authorizer.
      #
      #   @option params [String] :authorizer_ip_address IP address of the authorizer.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::ProofOfAuthorizationRequestSubmission]
      #
      def create(params)
        parsed, options = Increase::Models::ProofOfAuthorizationRequestSubmissionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "proof_of_authorization_request_submissions",
          body: parsed,
          model: Increase::Models::ProofOfAuthorizationRequestSubmission,
          options: options
        )
      end

      # Retrieve a Proof of Authorization Request Submission
      #
      # @param proof_of_authorization_request_submission_id [String] The identifier of the Proof of Authorization Request Submission.
      #
      # @param params [Increase::Models::ProofOfAuthorizationRequestSubmissionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::ProofOfAuthorizationRequestSubmission]
      #
      def retrieve(proof_of_authorization_request_submission_id, params = {})
        @client.request(
          method: :get,
          path: [
            "proof_of_authorization_request_submissions/%0s",
            proof_of_authorization_request_submission_id
          ],
          model: Increase::Models::ProofOfAuthorizationRequestSubmission,
          options: params[:request_options]
        )
      end

      # List Proof of Authorization Request Submissions
      #
      # @param params [Increase::Models::ProofOfAuthorizationRequestSubmissionListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [String] :proof_of_authorization_request_id ID of the proof of authorization request.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Page<Increase::Models::ProofOfAuthorizationRequestSubmission>]
      #
      def list(params = {})
        parsed, options = Increase::Models::ProofOfAuthorizationRequestSubmissionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "proof_of_authorization_request_submissions",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::ProofOfAuthorizationRequestSubmission,
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
