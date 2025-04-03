# frozen_string_literal: true

module Increase
  module Resources
    class ProofOfAuthorizationRequestSubmissions
      # Submit Proof of Authorization
      #
      # @overload create(authorization_terms:, authorized_at:, authorizer_email:, authorizer_name:, customer_has_been_offboarded:, proof_of_authorization_request_id:, validated_account_ownership_via_credential:, validated_account_ownership_with_account_statement:, validated_account_ownership_with_microdeposit:, additional_evidence_file_id: nil, authorizer_company: nil, authorizer_ip_address: nil, request_options: {})
      #
      # @param authorization_terms [String]
      # @param authorized_at [Time]
      # @param authorizer_email [String]
      # @param authorizer_name [String]
      # @param customer_has_been_offboarded [Boolean]
      # @param proof_of_authorization_request_id [String]
      # @param validated_account_ownership_via_credential [Boolean]
      # @param validated_account_ownership_with_account_statement [Boolean]
      # @param validated_account_ownership_with_microdeposit [Boolean]
      # @param additional_evidence_file_id [String]
      # @param authorizer_company [String]
      # @param authorizer_ip_address [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ProofOfAuthorizationRequestSubmission]
      #
      # @see Increase::Models::ProofOfAuthorizationRequestSubmissionCreateParams
      def create(params)
        parsed, options =
          Increase::Models::ProofOfAuthorizationRequestSubmissionCreateParams.dump_request(params)
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
      # @overload retrieve(proof_of_authorization_request_submission_id, request_options: {})
      #
      # @param proof_of_authorization_request_submission_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ProofOfAuthorizationRequestSubmission]
      #
      # @see Increase::Models::ProofOfAuthorizationRequestSubmissionRetrieveParams
      def retrieve(proof_of_authorization_request_submission_id, params = {})
        @client.request(
          method: :get,
          path: [
            "proof_of_authorization_request_submissions/%1$s",
            proof_of_authorization_request_submission_id
          ],
          model: Increase::Models::ProofOfAuthorizationRequestSubmission,
          options: params[:request_options]
        )
      end

      # List Proof of Authorization Request Submissions
      #
      # @overload list(cursor: nil, idempotency_key: nil, limit: nil, proof_of_authorization_request_id: nil, request_options: {})
      #
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param proof_of_authorization_request_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::ProofOfAuthorizationRequestSubmission>]
      #
      # @see Increase::Models::ProofOfAuthorizationRequestSubmissionListParams
      def list(params = {})
        parsed, options = Increase::Models::ProofOfAuthorizationRequestSubmissionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "proof_of_authorization_request_submissions",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::ProofOfAuthorizationRequestSubmission,
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
