# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmission < Increase::BaseModel
      # The Proof of Authorization Request Submission identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # File containing additional evidence.
      sig { returns(T.nilable(String)) }
      def additional_evidence_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def additional_evidence_file_id=(_)
      end

      # Terms of authorization.
      sig { returns(String) }
      def authorization_terms
      end

      sig { params(_: String).returns(String) }
      def authorization_terms=(_)
      end

      # Time of authorization.
      sig { returns(Time) }
      def authorized_at
      end

      sig { params(_: Time).returns(Time) }
      def authorized_at=(_)
      end

      # Company of the authorizer.
      sig { returns(T.nilable(String)) }
      def authorizer_company
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def authorizer_company=(_)
      end

      # Email of the authorizer.
      sig { returns(T.nilable(String)) }
      def authorizer_email
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def authorizer_email=(_)
      end

      # IP address of the authorizer.
      sig { returns(T.nilable(String)) }
      def authorizer_ip_address
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def authorizer_ip_address=(_)
      end

      # Name of the authorizer.
      sig { returns(T.nilable(String)) }
      def authorizer_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def authorizer_name=(_)
      end

      # The time the Proof of Authorization Request Submission was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # Whether the customer has been offboarded.
      sig { returns(T.nilable(T::Boolean)) }
      def customer_has_been_offboarded
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def customer_has_been_offboarded=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # ID of the proof of authorization request.
      sig { returns(String) }
      def proof_of_authorization_request_id
      end

      sig { params(_: String).returns(String) }
      def proof_of_authorization_request_id=(_)
      end

      # Status of the proof of authorization request submission.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `proof_of_authorization_request_submission`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # The time the Proof of Authorization Request Submission was last updated.
      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # Whether account ownership was validated via credential (for instance, Plaid).
      sig { returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_via_credential
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_via_credential=(_)
      end

      # Whether account ownership was validated with an account statement.
      sig { returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_with_account_statement
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_with_account_statement=(_)
      end

      # Whether account ownership was validated with microdeposit.
      sig { returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_with_microdeposit
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def validated_account_ownership_with_microdeposit=(_)
      end

      # Information submitted in response to a proof of authorization request. Per
      #   Nacha's guidance on proof of authorization, the originator must ensure that the
      #   authorization complies with applicable legal requirements, is readily
      #   identifiable as an authorization, and has clear and readily understandable
      #   terms.
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

      # Status of the proof of authorization request submission.
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

      # A constant representing the object's type. For this resource it will always be
      #   `proof_of_authorization_request_submission`.
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
