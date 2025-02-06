# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmissionListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :proof_of_authorization_request_id

      sig { params(proof_of_authorization_request_id: String).void }
      attr_writer :proof_of_authorization_request_id

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          proof_of_authorization_request_id: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        proof_of_authorization_request_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            proof_of_authorization_request_id: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
