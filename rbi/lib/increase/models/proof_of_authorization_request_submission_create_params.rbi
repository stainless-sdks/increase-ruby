# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmissionCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :authorization_terms

      sig { returns(Time) }
      attr_accessor :authorized_at

      sig { returns(String) }
      attr_accessor :authorizer_email

      sig { returns(String) }
      attr_accessor :authorizer_name

      sig { returns(T::Boolean) }
      attr_accessor :customer_has_been_offboarded

      sig { returns(String) }
      attr_accessor :proof_of_authorization_request_id

      sig { returns(T::Boolean) }
      attr_accessor :validated_account_ownership_via_credential

      sig { returns(T::Boolean) }
      attr_accessor :validated_account_ownership_with_account_statement

      sig { returns(T::Boolean) }
      attr_accessor :validated_account_ownership_with_microdeposit

      sig { returns(T.nilable(String)) }
      attr_reader :authorizer_company

      sig { params(authorizer_company: String).void }
      attr_writer :authorizer_company

      sig { returns(T.nilable(String)) }
      attr_reader :authorizer_ip_address

      sig { params(authorizer_ip_address: String).void }
      attr_writer :authorizer_ip_address

      sig do
        params(
          authorization_terms: String,
          authorized_at: Time,
          authorizer_email: String,
          authorizer_name: String,
          customer_has_been_offboarded: T::Boolean,
          proof_of_authorization_request_id: String,
          validated_account_ownership_via_credential: T::Boolean,
          validated_account_ownership_with_account_statement: T::Boolean,
          validated_account_ownership_with_microdeposit: T::Boolean,
          authorizer_company: String,
          authorizer_ip_address: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        authorization_terms:,
        authorized_at:,
        authorizer_email:,
        authorizer_name:,
        customer_has_been_offboarded:,
        proof_of_authorization_request_id:,
        validated_account_ownership_via_credential:,
        validated_account_ownership_with_account_statement:,
        validated_account_ownership_with_microdeposit:,
        authorizer_company: nil,
        authorizer_ip_address: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            authorization_terms: String,
            authorized_at: Time,
            authorizer_email: String,
            authorizer_name: String,
            customer_has_been_offboarded: T::Boolean,
            proof_of_authorization_request_id: String,
            validated_account_ownership_via_credential: T::Boolean,
            validated_account_ownership_with_account_statement: T::Boolean,
            validated_account_ownership_with_microdeposit: T::Boolean,
            authorizer_company: String,
            authorizer_ip_address: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
