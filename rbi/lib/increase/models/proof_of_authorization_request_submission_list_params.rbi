# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmissionListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      # Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      # ID of the proof of authorization request.
      sig { returns(T.nilable(String)) }
      def proof_of_authorization_request_id
      end

      sig { params(_: String).returns(String) }
      def proof_of_authorization_request_id=(_)
      end

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          proof_of_authorization_request_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(cursor: nil, idempotency_key: nil, limit: nil, proof_of_authorization_request_id: nil, request_options: {})
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
      def to_hash
      end
    end
  end
end
