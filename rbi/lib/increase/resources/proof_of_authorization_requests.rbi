# typed: strong

module Increase
  module Resources
    class ProofOfAuthorizationRequests
      # Retrieve a Proof of Authorization Request
      sig do
        params(
          proof_of_authorization_request_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::ProofOfAuthorizationRequest)
      end
      def retrieve(
        # The identifier of the Proof of Authorization Request.
        proof_of_authorization_request_id,
        request_options: {}
      )
      end

      # List Proof of Authorization Requests
      sig do
        params(
          created_at: Increase::Models::ProofOfAuthorizationRequestListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::ProofOfAuthorizationRequest])
      end
      def list(
        created_at: nil,
        # Return the page of entries after this one.
        cursor: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
        #   objects.
        limit: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
