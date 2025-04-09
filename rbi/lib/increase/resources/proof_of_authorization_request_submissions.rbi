# typed: strong

module Increase
  module Resources
    class ProofOfAuthorizationRequestSubmissions
      # Submit Proof of Authorization
      sig do
        params(
          authorization_terms: String,
          authorized_at: Time,
          authorizer_email: String,
          authorizer_name: String,
          customer_has_been_offboarded: T::Boolean,
          proof_of_authorization_request_id: String,
          validated_account_ownership_via_credential: T::Boolean,
          validated_account_ownership_with_account_statement: T::Boolean,
          validated_account_ownership_with_microdeposit: T::Boolean,
          additional_evidence_file_id: String,
          authorizer_company: String,
          authorizer_ip_address: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ProofOfAuthorizationRequestSubmission)
      end
      def create(
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/authorization_terms
        authorization_terms:,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/authorized_at
        authorized_at:,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/authorizer_email
        authorizer_email:,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/authorizer_name
        authorizer_name:,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/customer_has_been_offboarded
        customer_has_been_offboarded:,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/proof_of_authorization_request_id
        proof_of_authorization_request_id:,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/validated_account_ownership_via_credential
        validated_account_ownership_via_credential:,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/validated_account_ownership_with_account_statement
        validated_account_ownership_with_account_statement:,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/validated_account_ownership_with_microdeposit
        validated_account_ownership_with_microdeposit:,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/additional_evidence_file_id
        additional_evidence_file_id: nil,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/authorizer_company
        authorizer_company: nil,
        # #/components/schemas/submit_proof_of_authorization_parameters/properties/authorizer_ip_address
        authorizer_ip_address: nil,
        request_options: {}
      ); end
      # Retrieve a Proof of Authorization Request Submission
      sig do
        params(
          proof_of_authorization_request_submission_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ProofOfAuthorizationRequestSubmission)
      end
      def retrieve(
        # #/paths//proof_of_authorization_request_submissions/{proof_of_authorization_request_submission_id}/get/parameters/0/schema
        proof_of_authorization_request_submission_id,
        request_options: {}
      ); end
      # List Proof of Authorization Request Submissions
      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          proof_of_authorization_request_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::ProofOfAuthorizationRequestSubmission])
      end
      def list(
        # #/paths//proof_of_authorization_request_submissions/get/parameters/0/schema
        cursor: nil,
        # #/paths//proof_of_authorization_request_submissions/get/parameters/3/schema
        idempotency_key: nil,
        # #/paths//proof_of_authorization_request_submissions/get/parameters/1/schema
        limit: nil,
        # #/paths//proof_of_authorization_request_submissions/get/parameters/2/schema
        proof_of_authorization_request_id: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
