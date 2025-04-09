# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::ProofOfAuthorizationRequestSubmissions#create
    class ProofOfAuthorizationRequestSubmissionCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute authorization_terms
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/authorization_terms
      #
      #   @return [String]
      required :authorization_terms, String

      # @!attribute authorized_at
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/authorized_at
      #
      #   @return [Time]
      required :authorized_at, Time

      # @!attribute authorizer_email
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/authorizer_email
      #
      #   @return [String]
      required :authorizer_email, String

      # @!attribute authorizer_name
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/authorizer_name
      #
      #   @return [String]
      required :authorizer_name, String

      # @!attribute customer_has_been_offboarded
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/customer_has_been_offboarded
      #
      #   @return [Boolean]
      required :customer_has_been_offboarded, Increase::Internal::Type::Boolean

      # @!attribute proof_of_authorization_request_id
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/proof_of_authorization_request_id
      #
      #   @return [String]
      required :proof_of_authorization_request_id, String

      # @!attribute validated_account_ownership_via_credential
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/validated_account_ownership_via_credential
      #
      #   @return [Boolean]
      required :validated_account_ownership_via_credential, Increase::Internal::Type::Boolean

      # @!attribute validated_account_ownership_with_account_statement
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/validated_account_ownership_with_account_statement
      #
      #   @return [Boolean]
      required :validated_account_ownership_with_account_statement, Increase::Internal::Type::Boolean

      # @!attribute validated_account_ownership_with_microdeposit
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/validated_account_ownership_with_microdeposit
      #
      #   @return [Boolean]
      required :validated_account_ownership_with_microdeposit, Increase::Internal::Type::Boolean

      # @!attribute [r] additional_evidence_file_id
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/additional_evidence_file_id
      #
      #   @return [String, nil]
      optional :additional_evidence_file_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :additional_evidence_file_id

      # @!attribute [r] authorizer_company
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/authorizer_company
      #
      #   @return [String, nil]
      optional :authorizer_company, String

      # @!parse
      #   # @return [String]
      #   attr_writer :authorizer_company

      # @!attribute [r] authorizer_ip_address
      #   #/components/schemas/submit_proof_of_authorization_parameters/properties/authorizer_ip_address
      #
      #   @return [String, nil]
      optional :authorizer_ip_address, String

      # @!parse
      #   # @return [String]
      #   attr_writer :authorizer_ip_address

      # @!parse
      #   # @param authorization_terms [String]
      #   # @param authorized_at [Time]
      #   # @param authorizer_email [String]
      #   # @param authorizer_name [String]
      #   # @param customer_has_been_offboarded [Boolean]
      #   # @param proof_of_authorization_request_id [String]
      #   # @param validated_account_ownership_via_credential [Boolean]
      #   # @param validated_account_ownership_with_account_statement [Boolean]
      #   # @param validated_account_ownership_with_microdeposit [Boolean]
      #   # @param additional_evidence_file_id [String]
      #   # @param authorizer_company [String]
      #   # @param authorizer_ip_address [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     authorization_terms:,
      #     authorized_at:,
      #     authorizer_email:,
      #     authorizer_name:,
      #     customer_has_been_offboarded:,
      #     proof_of_authorization_request_id:,
      #     validated_account_ownership_via_credential:,
      #     validated_account_ownership_with_account_statement:,
      #     validated_account_ownership_with_microdeposit:,
      #     additional_evidence_file_id: nil,
      #     authorizer_company: nil,
      #     authorizer_ip_address: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
