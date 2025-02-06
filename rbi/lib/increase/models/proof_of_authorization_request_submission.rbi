# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmission < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :authorization_terms

      sig { returns(Time) }
      attr_accessor :authorized_at

      sig { returns(T.nilable(String)) }
      attr_accessor :authorizer_company

      sig { returns(T.nilable(String)) }
      attr_accessor :authorizer_email

      sig { returns(T.nilable(String)) }
      attr_accessor :authorizer_ip_address

      sig { returns(T.nilable(String)) }
      attr_accessor :authorizer_name

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :customer_has_been_offboarded

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(String) }
      attr_accessor :proof_of_authorization_request_id

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :validated_account_ownership_via_credential

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :validated_account_ownership_with_account_statement

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :validated_account_ownership_with_microdeposit

      sig do
        params(
          id: String,
          authorization_terms: String,
          authorized_at: Time,
          authorizer_company: T.nilable(String),
          authorizer_email: T.nilable(String),
          authorizer_ip_address: T.nilable(String),
          authorizer_name: T.nilable(String),
          created_at: Time,
          customer_has_been_offboarded: T.nilable(T::Boolean),
          idempotency_key: T.nilable(String),
          proof_of_authorization_request_id: String,
          status: Symbol,
          type: Symbol,
          updated_at: Time,
          validated_account_ownership_via_credential: T.nilable(T::Boolean),
          validated_account_ownership_with_account_statement: T.nilable(T::Boolean),
          validated_account_ownership_with_microdeposit: T.nilable(T::Boolean)
        ).void
      end
      def initialize(
        id:,
        authorization_terms:,
        authorized_at:,
        authorizer_company:,
        authorizer_email:,
        authorizer_ip_address:,
        authorizer_name:,
        created_at:,
        customer_has_been_offboarded:,
        idempotency_key:,
        proof_of_authorization_request_id:,
        status:,
        type:,
        updated_at:,
        validated_account_ownership_via_credential:,
        validated_account_ownership_with_account_statement:,
        validated_account_ownership_with_microdeposit:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            authorization_terms: String,
            authorized_at: Time,
            authorizer_company: T.nilable(String),
            authorizer_email: T.nilable(String),
            authorizer_ip_address: T.nilable(String),
            authorizer_name: T.nilable(String),
            created_at: Time,
            customer_has_been_offboarded: T.nilable(T::Boolean),
            idempotency_key: T.nilable(String),
            proof_of_authorization_request_id: String,
            status: Symbol,
            type: Symbol,
            updated_at: Time,
            validated_account_ownership_via_credential: T.nilable(T::Boolean),
            validated_account_ownership_with_account_statement: T.nilable(T::Boolean),
            validated_account_ownership_with_microdeposit: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The proof of authorization request submission is pending review.
        PENDING_REVIEW = :pending_review

        # The proof of authorization request submission was rejected.
        REJECTED = :rejected

        # The proof of authorization request submission was canceled and replaced with another.
        CANCELED = :canceled

        # The proof of authorization request submission is pending sending.
        PENDING_SENDING = :pending_sending

        # The proof of authorization request submission was sent.
        SENT = :sent

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        PROOF_OF_AUTHORIZATION_REQUEST_SUBMISSION = :proof_of_authorization_request_submission

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
