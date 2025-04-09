# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmission < Increase::Internal::Type::BaseModel
      # #/components/schemas/proof_of_authorization_request_submission/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/proof_of_authorization_request_submission/properties/additional_evidence_file_id
      sig { returns(T.nilable(String)) }
      attr_accessor :additional_evidence_file_id

      # #/components/schemas/proof_of_authorization_request_submission/properties/authorization_terms
      sig { returns(String) }
      attr_accessor :authorization_terms

      # #/components/schemas/proof_of_authorization_request_submission/properties/authorized_at
      sig { returns(Time) }
      attr_accessor :authorized_at

      # #/components/schemas/proof_of_authorization_request_submission/properties/authorizer_company
      sig { returns(T.nilable(String)) }
      attr_accessor :authorizer_company

      # #/components/schemas/proof_of_authorization_request_submission/properties/authorizer_email
      sig { returns(T.nilable(String)) }
      attr_accessor :authorizer_email

      # #/components/schemas/proof_of_authorization_request_submission/properties/authorizer_ip_address
      sig { returns(T.nilable(String)) }
      attr_accessor :authorizer_ip_address

      # #/components/schemas/proof_of_authorization_request_submission/properties/authorizer_name
      sig { returns(T.nilable(String)) }
      attr_accessor :authorizer_name

      # #/components/schemas/proof_of_authorization_request_submission/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/proof_of_authorization_request_submission/properties/customer_has_been_offboarded
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :customer_has_been_offboarded

      # #/components/schemas/proof_of_authorization_request_submission/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/proof_of_authorization_request_submission/properties/proof_of_authorization_request_id
      sig { returns(String) }
      attr_accessor :proof_of_authorization_request_id

      # #/components/schemas/proof_of_authorization_request_submission/properties/status
      sig { returns(Increase::Models::ProofOfAuthorizationRequestSubmission::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/proof_of_authorization_request_submission/properties/type
      sig { returns(Increase::Models::ProofOfAuthorizationRequestSubmission::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/proof_of_authorization_request_submission/properties/updated_at
      sig { returns(Time) }
      attr_accessor :updated_at

      # #/components/schemas/proof_of_authorization_request_submission/properties/validated_account_ownership_via_credential
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :validated_account_ownership_via_credential

      # #/components/schemas/proof_of_authorization_request_submission/properties/validated_account_ownership_with_account_statement
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :validated_account_ownership_with_account_statement

      # #/components/schemas/proof_of_authorization_request_submission/properties/validated_account_ownership_with_microdeposit
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :validated_account_ownership_with_microdeposit

      # #/components/schemas/proof_of_authorization_request_submission
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
          status: Increase::Models::ProofOfAuthorizationRequestSubmission::Status::OrSymbol,
          type: Increase::Models::ProofOfAuthorizationRequestSubmission::Type::OrSymbol,
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
      ); end
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
              status: Increase::Models::ProofOfAuthorizationRequestSubmission::Status::TaggedSymbol,
              type: Increase::Models::ProofOfAuthorizationRequestSubmission::Type::TaggedSymbol,
              updated_at: Time,
              validated_account_ownership_via_credential: T.nilable(T::Boolean),
              validated_account_ownership_with_account_statement: T.nilable(T::Boolean),
              validated_account_ownership_with_microdeposit: T.nilable(T::Boolean)
            }
          )
      end
      def to_hash; end

      # #/components/schemas/proof_of_authorization_request_submission/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ProofOfAuthorizationRequestSubmission::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ProofOfAuthorizationRequestSubmission::Status::TaggedSymbol) }

        # The proof of authorization request submission is pending review.
        PENDING_REVIEW =
          T.let(:pending_review, Increase::Models::ProofOfAuthorizationRequestSubmission::Status::TaggedSymbol)

        # The proof of authorization request submission was rejected.
        REJECTED =
          T.let(:rejected, Increase::Models::ProofOfAuthorizationRequestSubmission::Status::TaggedSymbol)

        # The proof of authorization request submission was canceled and replaced with another.
        CANCELED =
          T.let(:canceled, Increase::Models::ProofOfAuthorizationRequestSubmission::Status::TaggedSymbol)

        # The proof of authorization request submission is pending sending.
        PENDING_SENDING =
          T.let(:pending_sending, Increase::Models::ProofOfAuthorizationRequestSubmission::Status::TaggedSymbol)

        # The proof of authorization request submission was sent.
        SENT = T.let(:sent, Increase::Models::ProofOfAuthorizationRequestSubmission::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::ProofOfAuthorizationRequestSubmission::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/proof_of_authorization_request_submission/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::ProofOfAuthorizationRequestSubmission::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::ProofOfAuthorizationRequestSubmission::Type::TaggedSymbol) }

        PROOF_OF_AUTHORIZATION_REQUEST_SUBMISSION =
          T.let(
            :proof_of_authorization_request_submission,
            Increase::Models::ProofOfAuthorizationRequestSubmission::Type::TaggedSymbol
          )

        sig { override.returns(T::Array[Increase::Models::ProofOfAuthorizationRequestSubmission::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
