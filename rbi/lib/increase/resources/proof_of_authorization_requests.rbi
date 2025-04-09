# typed: strong

module Increase
  module Resources
    class ProofOfAuthorizationRequests
      # Retrieve a Proof of Authorization Request
      sig do
        params(
          proof_of_authorization_request_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ProofOfAuthorizationRequest)
      end
      def retrieve(
        # #/paths//proof_of_authorization_requests/{proof_of_authorization_request_id}/get/parameters/0/schema
        proof_of_authorization_request_id,
        request_options: {}
      ); end
      # List Proof of Authorization Requests
      sig do
        params(
          created_at: T.any(Increase::Models::ProofOfAuthorizationRequestListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::ProofOfAuthorizationRequest])
      end
      def list(
        created_at: nil,
        # #/paths//proof_of_authorization_requests/get/parameters/0/schema
        cursor: nil,
        # #/paths//proof_of_authorization_requests/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
