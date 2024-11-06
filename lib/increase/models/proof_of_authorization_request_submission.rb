# frozen_string_literal: true

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmission < Increase::BaseModel
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

      # @!parse
      #   # Create a new instance of ProofOfAuthorizationRequestSubmission from a Hash of
      #   #   raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The Proof of Authorization Request Submission identifier.
      #   #   @option data [String] :authorization_terms Terms of authorization.
      #   #   @option data [String] :authorized_at Time of authorization.
      #   #   @option data [String] :authorizer_company Company of the authorizer.
      #   #   @option data [String] :authorizer_email Email of the authorizer.
      #   #   @option data [String] :authorizer_ip_address IP address of the authorizer.
      #   #   @option data [String] :authorizer_name Name of the authorizer.
      #   #   @option data [String] :created_at The time the Proof of Authorization Request Submission was created.
      #   #   @option data [Hash] :customer_has_been_offboarded Whether the customer has been offboarded.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [String] :proof_of_authorization_request_id ID of the proof of authorization request.
      #   #   @option data [String] :status Status of the proof of authorization request submission.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `proof_of_authorization_request_submission`.
      #   #   @option data [String] :updated_at The time the Proof of Authorization Request Submission was last updated.
      #   #   @option data [Hash] :validated_account_ownership_via_credential Whether account ownership was validated via credential (for instance, Plaid).
      #   #   @option data [Hash] :validated_account_ownership_with_account_statement Whether account ownership was validated with an account statement.
      #   #   @option data [Hash] :validated_account_ownership_with_microdeposit Whether account ownership was validated with microdeposit.
      #   def initialize(data = {}) = super
    end
  end
end
