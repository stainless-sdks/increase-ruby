# frozen_string_literal: true

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmissionCreateParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute authorization_terms
      #   Terms of authorization.
      #
      #   @return [String]
      required :authorization_terms, String

      # @!attribute authorized_at
      #   Time of authorization.
      #
      #   @return [Time]
      required :authorized_at, Time

      # @!attribute authorizer_email
      #   Email of the authorizer.
      #
      #   @return [String]
      required :authorizer_email, String

      # @!attribute authorizer_name
      #   Name of the authorizer.
      #
      #   @return [String]
      required :authorizer_name, String

      # @!attribute customer_has_been_offboarded
      #   Whether the customer has been offboarded or suspended.
      #
      #   @return [Boolean]
      required :customer_has_been_offboarded, Increase::BooleanModel

      # @!attribute proof_of_authorization_request_id
      #   ID of the proof of authorization request.
      #
      #   @return [String]
      required :proof_of_authorization_request_id, String

      # @!attribute validated_account_ownership_via_credential
      #   Whether the account ownership was validated via credential (e.g. Plaid).
      #
      #   @return [Boolean]
      required :validated_account_ownership_via_credential, Increase::BooleanModel

      # @!attribute validated_account_ownership_with_account_statement
      #   Whether the account ownership was validated with an account statement.
      #
      #   @return [Boolean]
      required :validated_account_ownership_with_account_statement, Increase::BooleanModel

      # @!attribute validated_account_ownership_with_microdeposit
      #   Whether the account ownership was validated with a microdeposit.
      #
      #   @return [Boolean]
      required :validated_account_ownership_with_microdeposit, Increase::BooleanModel

      # @!attribute [r] authorizer_company
      #   Company of the authorizer.
      #
      #   @return [String, nil]
      optional :authorizer_company, String

      # @!parse
      #   # @return [String]
      #   attr_writer :authorizer_company

      # @!attribute [r] authorizer_ip_address
      #   IP address of the authorizer.
      #
      #   @return [String, nil]
      optional :authorizer_ip_address, String

      # @!parse
      #   # @return [String]
      #   attr_writer :authorizer_ip_address

      # @!parse
      #   # @param authorization_terms [String]
      #   # @param authorized_at [String]
      #   # @param authorizer_email [String]
      #   # @param authorizer_name [String]
      #   # @param customer_has_been_offboarded [Boolean]
      #   # @param proof_of_authorization_request_id [String]
      #   # @param validated_account_ownership_via_credential [Boolean]
      #   # @param validated_account_ownership_with_account_statement [Boolean]
      #   # @param validated_account_ownership_with_microdeposit [Boolean]
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
      #     authorizer_company: nil,
      #     authorizer_ip_address: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
