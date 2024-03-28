# frozen_string_literal: true

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmission < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] authorization_terms
      required :authorization_terms, String

      # @!attribute [rw] authorized_at
      required :authorized_at, String

      # @!attribute [rw] authorizer_company
      required :authorizer_company, String

      # @!attribute [rw] authorizer_email
      required :authorizer_email, String

      # @!attribute [rw] authorizer_ip_address
      required :authorizer_ip_address, String

      # @!attribute [rw] authorizer_name
      required :authorizer_name, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] customer_has_been_offboarded
      required :customer_has_been_offboarded, Increase::BooleanModel

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] proof_of_authorization_request_id
      required :proof_of_authorization_request_id, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:pending_review, :rejected, :pending_sending, :sent])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:proof_of_authorization_request_submission])

      # @!attribute [rw] updated_at
      required :updated_at, String

      # @!attribute [rw] validated_account_ownership_via_credential
      required :validated_account_ownership_via_credential, Increase::BooleanModel

      # @!attribute [rw] validated_account_ownership_with_account_statement
      required :validated_account_ownership_with_account_statement, Increase::BooleanModel

      # @!attribute [rw] validated_account_ownership_with_microdeposit
      required :validated_account_ownership_with_microdeposit, Increase::BooleanModel
    end
  end
end
