# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmission < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def additional_evidence_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def additional_evidence_file_id=(_)
      end

      sig { returns(String) }
      def authorization_terms
      end

      sig { params(_: String).returns(String) }
      def authorization_terms=(_)
      end

      sig { returns(Time) }
      def authorized_at
      end

      sig { params(_: Time).returns(Time) }
      def authorized_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def authorizer_company
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def authorizer_company=(_)
      end

      sig { returns(T.nilable(String)) }
      def authorizer_email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def authorizer_email=(_)
      end

      sig { returns(T.nilable(String)) }
      def authorizer_ip_address
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def authorizer_ip_address=(_)
      end

      sig { returns(T.nilable(String)) }
      def authorizer_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def authorizer_name=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def customer_has_been_offboarded
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def customer_has_been_offboarded=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(String) }
      def proof_of_authorization_request_id
      end

      sig { params(_: String).returns(String) }
      def proof_of_authorization_request_id=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_via_credential
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_via_credential=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_with_account_statement
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_with_account_statement=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_with_microdeposit
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_with_microdeposit=(_)
      end

      sig do
        params(
          id: String,
          additional_evidence_file_id: T.nilable(String),
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
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        additional_evidence_file_id:,
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
        override
          .returns(
            {
              id: String,
              additional_evidence_file_id: T.nilable(String),
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        PROOF_OF_AUTHORIZATION_REQUEST_SUBMISSION = :proof_of_authorization_request_submission

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
