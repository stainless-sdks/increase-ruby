# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmissionListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/paths//proof_of_authorization_request_submissions/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//proof_of_authorization_request_submissions/get/parameters/3/schema
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # #/paths//proof_of_authorization_request_submissions/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # #/paths//proof_of_authorization_request_submissions/get/parameters/2/schema
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
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        proof_of_authorization_request_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              cursor: String,
              idempotency_key: String,
              limit: Integer,
              proof_of_authorization_request_id: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
