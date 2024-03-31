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
      #   @return [String]
      required :authorized_at, String

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
      #   @return [String]
      required :created_at, String

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
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending_review, :rejected, :pending_sending, :sent)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `proof_of_authorization_request_submission`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:proof_of_authorization_request_submission)

      # @!attribute [rw] updated_at
      #   The time the Proof of Authorization Request Submission was last updated.
      #   @return [String]
      required :updated_at, String

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
    end
  end
end
