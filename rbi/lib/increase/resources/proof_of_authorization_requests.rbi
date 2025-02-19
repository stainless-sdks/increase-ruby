# typed: strong

module Increase
  module Resources
    class ProofOfAuthorizationRequests
      sig do
        params(
          proof_of_authorization_request_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::ProofOfAuthorizationRequest)
      end
      def retrieve(proof_of_authorization_request_id, request_options: {})
      end

      sig do
        params(
          created_at: Increase::Models::ProofOfAuthorizationRequestListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::ProofOfAuthorizationRequest])
      end
      def list(created_at: nil, cursor: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
