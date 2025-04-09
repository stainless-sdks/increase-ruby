# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::ProofOfAuthorizationRequestSubmissions#create
    class ProofOfAuthorizationRequestSubmission < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/proof_of_authorization_request_submission/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute additional_evidence_file_id
      #   #/components/schemas/proof_of_authorization_request_submission/properties/additional_evidence_file_id
      #
      #   @return [String, nil]
      required :additional_evidence_file_id, String, nil?: true

      # @!attribute authorization_terms
      #   #/components/schemas/proof_of_authorization_request_submission/properties/authorization_terms
      #
      #   @return [String]
      required :authorization_terms, String

      # @!attribute authorized_at
      #   #/components/schemas/proof_of_authorization_request_submission/properties/authorized_at
      #
      #   @return [Time]
      required :authorized_at, Time

      # @!attribute authorizer_company
      #   #/components/schemas/proof_of_authorization_request_submission/properties/authorizer_company
      #
      #   @return [String, nil]
      required :authorizer_company, String, nil?: true

      # @!attribute authorizer_email
      #   #/components/schemas/proof_of_authorization_request_submission/properties/authorizer_email
      #
      #   @return [String, nil]
      required :authorizer_email, String, nil?: true

      # @!attribute authorizer_ip_address
      #   #/components/schemas/proof_of_authorization_request_submission/properties/authorizer_ip_address
      #
      #   @return [String, nil]
      required :authorizer_ip_address, String, nil?: true

      # @!attribute authorizer_name
      #   #/components/schemas/proof_of_authorization_request_submission/properties/authorizer_name
      #
      #   @return [String, nil]
      required :authorizer_name, String, nil?: true

      # @!attribute created_at
      #   #/components/schemas/proof_of_authorization_request_submission/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer_has_been_offboarded
      #   #/components/schemas/proof_of_authorization_request_submission/properties/customer_has_been_offboarded
      #
      #   @return [Boolean, nil]
      required :customer_has_been_offboarded, Increase::Internal::Type::Boolean, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/proof_of_authorization_request_submission/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute proof_of_authorization_request_id
      #   #/components/schemas/proof_of_authorization_request_submission/properties/proof_of_authorization_request_id
      #
      #   @return [String]
      required :proof_of_authorization_request_id, String

      # @!attribute status
      #   #/components/schemas/proof_of_authorization_request_submission/properties/status
      #
      #   @return [Symbol, Increase::Models::ProofOfAuthorizationRequestSubmission::Status]
      required :status, enum: -> { Increase::Models::ProofOfAuthorizationRequestSubmission::Status }

      # @!attribute type
      #   #/components/schemas/proof_of_authorization_request_submission/properties/type
      #
      #   @return [Symbol, Increase::Models::ProofOfAuthorizationRequestSubmission::Type]
      required :type, enum: -> { Increase::Models::ProofOfAuthorizationRequestSubmission::Type }

      # @!attribute updated_at
      #   #/components/schemas/proof_of_authorization_request_submission/properties/updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute validated_account_ownership_via_credential
      #   #/components/schemas/proof_of_authorization_request_submission/properties/validated_account_ownership_via_credential
      #
      #   @return [Boolean, nil]
      required :validated_account_ownership_via_credential, Increase::Internal::Type::Boolean, nil?: true

      # @!attribute validated_account_ownership_with_account_statement
      #   #/components/schemas/proof_of_authorization_request_submission/properties/validated_account_ownership_with_account_statement
      #
      #   @return [Boolean, nil]
      required :validated_account_ownership_with_account_statement,
               Increase::Internal::Type::Boolean,
               nil?: true

      # @!attribute validated_account_ownership_with_microdeposit
      #   #/components/schemas/proof_of_authorization_request_submission/properties/validated_account_ownership_with_microdeposit
      #
      #   @return [Boolean, nil]
      required :validated_account_ownership_with_microdeposit, Increase::Internal::Type::Boolean, nil?: true

      # @!parse
      #   # #/components/schemas/proof_of_authorization_request_submission
      #   #
      #   # @param id [String]
      #   # @param additional_evidence_file_id [String, nil]
      #   # @param authorization_terms [String]
      #   # @param authorized_at [Time]
      #   # @param authorizer_company [String, nil]
      #   # @param authorizer_email [String, nil]
      #   # @param authorizer_ip_address [String, nil]
      #   # @param authorizer_name [String, nil]
      #   # @param created_at [Time]
      #   # @param customer_has_been_offboarded [Boolean, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param proof_of_authorization_request_id [String]
      #   # @param status [Symbol, Increase::Models::ProofOfAuthorizationRequestSubmission::Status]
      #   # @param type [Symbol, Increase::Models::ProofOfAuthorizationRequestSubmission::Type]
      #   # @param updated_at [Time]
      #   # @param validated_account_ownership_via_credential [Boolean, nil]
      #   # @param validated_account_ownership_with_account_statement [Boolean, nil]
      #   # @param validated_account_ownership_with_microdeposit [Boolean, nil]
      #   #
      #   def initialize(
      #     id:,
      #     additional_evidence_file_id:,
      #     authorization_terms:,
      #     authorized_at:,
      #     authorizer_company:,
      #     authorizer_email:,
      #     authorizer_ip_address:,
      #     authorizer_name:,
      #     created_at:,
      #     customer_has_been_offboarded:,
      #     idempotency_key:,
      #     proof_of_authorization_request_id:,
      #     status:,
      #     type:,
      #     updated_at:,
      #     validated_account_ownership_via_credential:,
      #     validated_account_ownership_with_account_statement:,
      #     validated_account_ownership_with_microdeposit:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/proof_of_authorization_request_submission/properties/status
      #
      # @see Increase::Models::ProofOfAuthorizationRequestSubmission#status
      module Status
        extend Increase::Internal::Type::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/proof_of_authorization_request_submission/properties/type
      #
      # @see Increase::Models::ProofOfAuthorizationRequestSubmission#type
      module Type
        extend Increase::Internal::Type::Enum

        PROOF_OF_AUTHORIZATION_REQUEST_SUBMISSION = :proof_of_authorization_request_submission

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
