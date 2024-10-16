# frozen_string_literal: true

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmission < BaseModel
      # @!attribute [rw] id
      #   The Proof of Authorization Request Submission identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] authorization_terms
      #   Terms of authorization.
      #   @return [String]
      required :authorization_terms, String

      # @!attribute [rw] authorized_at
      #   Time of authorization.
      #   @return [Time]
      required :authorized_at, Time

      # @!attribute [rw] authorizer_company
      #   Company of the authorizer.
      #   @return [String]
      required :authorizer_company, String

      # @!attribute [rw] authorizer_email
      #   Email of the authorizer.
      #   @return [String]
      required :authorizer_email, String

      # @!attribute [rw] authorizer_ip_address
      #   IP address of the authorizer.
      #   @return [String]
      required :authorizer_ip_address, String

      # @!attribute [rw] authorizer_name
      #   Name of the authorizer.
      #   @return [String]
      required :authorizer_name, String

      # @!attribute [rw] created_at
      #   The time the Proof of Authorization Request Submission was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] customer_has_been_offboarded
      #   Whether the customer has been offboarded.
      #   @return [Boolean]
      required :customer_has_been_offboarded, Increase::BooleanModel

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] proof_of_authorization_request_id
      #   ID of the proof of authorization request.
      #   @return [String]
      required :proof_of_authorization_request_id, String

      # @!attribute [rw] status
      #   Status of the proof of authorization request submission.
      #   @return [Symbol, Increase::Models::ProofOfAuthorizationRequestSubmission::Status]
      required :status, enum: -> { Increase::Models::ProofOfAuthorizationRequestSubmission::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `proof_of_authorization_request_submission`.
      #   @return [Symbol, Increase::Models::ProofOfAuthorizationRequestSubmission::Type]
      required :type, enum: -> { Increase::Models::ProofOfAuthorizationRequestSubmission::Type }

      # @!attribute [rw] updated_at
      #   The time the Proof of Authorization Request Submission was last updated.
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] validated_account_ownership_via_credential
      #   Whether account ownership was validated via credential (for instance, Plaid).
      #   @return [Boolean]
      required :validated_account_ownership_via_credential, Increase::BooleanModel

      # @!attribute [rw] validated_account_ownership_with_account_statement
      #   Whether account ownership was validated with an account statement.
      #   @return [Boolean]
      required :validated_account_ownership_with_account_statement, Increase::BooleanModel

      # @!attribute [rw] validated_account_ownership_with_microdeposit
      #   Whether account ownership was validated with microdeposit.
      #   @return [Boolean]
      required :validated_account_ownership_with_microdeposit, Increase::BooleanModel

      # Status of the proof of authorization request submission.
      class Status < Increase::Enum
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
      end

      # A constant representing the object's type. For this resource it will always be `proof_of_authorization_request_submission`.
      class Type < Increase::Enum
        PROOF_OF_AUTHORIZATION_REQUEST_SUBMISSION = :proof_of_authorization_request_submission
      end

      # Create a new instance of ProofOfAuthorizationRequestSubmission from a Hash of
      #   raw data.
      #
      # @overload initialize(id: nil, authorization_terms: nil, authorized_at: nil, authorizer_company: nil, authorizer_email: nil, authorizer_ip_address: nil, authorizer_name: nil, created_at: nil, customer_has_been_offboarded: nil, idempotency_key: nil, proof_of_authorization_request_id: nil, status: nil, type: nil, updated_at: nil, validated_account_ownership_via_credential: nil, validated_account_ownership_with_account_statement: nil, validated_account_ownership_with_microdeposit: nil)
      # @param id [String] The Proof of Authorization Request Submission identifier.
      # @param authorization_terms [String] Terms of authorization.
      # @param authorized_at [String] Time of authorization.
      # @param authorizer_company [String] Company of the authorizer.
      # @param authorizer_email [String] Email of the authorizer.
      # @param authorizer_ip_address [String] IP address of the authorizer.
      # @param authorizer_name [String] Name of the authorizer.
      # @param created_at [String] The time the Proof of Authorization Request Submission was created.
      # @param customer_has_been_offboarded [Hash] Whether the customer has been offboarded.
      # @param idempotency_key [String] The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      # @param proof_of_authorization_request_id [String] ID of the proof of authorization request.
      # @param status [String] Status of the proof of authorization request submission.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `proof_of_authorization_request_submission`.
      # @param updated_at [String] The time the Proof of Authorization Request Submission was last updated.
      # @param validated_account_ownership_via_credential [Hash] Whether account ownership was validated via credential (for instance, Plaid).
      # @param validated_account_ownership_with_account_statement [Hash] Whether account ownership was validated with an account statement.
      # @param validated_account_ownership_with_microdeposit [Hash] Whether account ownership was validated with microdeposit.
      def initialize(data = {})
        super
      end
    end
  end
end
