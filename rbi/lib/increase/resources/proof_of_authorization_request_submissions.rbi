# typed: strong

module Increase
  module Resources
    class ProofOfAuthorizationRequestSubmissions
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
            authorizer_company: String,
            authorizer_ip_address: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::ProofOfAuthorizationRequestSubmission)
      end
      def create(
        authorization_terms:,
        authorized_at:,
        authorizer_email:,
        authorizer_name:,
        customer_has_been_offboarded:,
        proof_of_authorization_request_id:,
        validated_account_ownership_via_credential:,
        validated_account_ownership_with_account_statement:,
        validated_account_ownership_with_microdeposit:,
        authorizer_company: nil,
        authorizer_ip_address: nil,
        request_options: {}
      )
      end

      sig do
        params(
            proof_of_authorization_request_submission_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::ProofOfAuthorizationRequestSubmission)
      end
      def retrieve(proof_of_authorization_request_submission_id, request_options: {})
      end

      sig do
        params(
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            proof_of_authorization_request_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Page[Increase::Models::ProofOfAuthorizationRequestSubmission])
      end
      def list(cursor: nil, idempotency_key: nil, limit: nil, proof_of_authorization_request_id: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
