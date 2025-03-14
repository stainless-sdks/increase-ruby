# typed: strong

module Increase
  module Models
    class ProofOfAuthorizationRequestSubmissionCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def authorization_terms
      end

      sig { params(_: String).returns(String) }
      def authorization_terms=(_)
      end

      sig { returns(Time) }
      def authorized_at
      end

      sig { params(_: Time).returns(Time) }
      def authorized_at=(_)
      end

      sig { returns(String) }
      def authorizer_email
      end

      sig { params(_: String).returns(String) }
      def authorizer_email=(_)
      end

      sig { returns(String) }
      def authorizer_name
      end

      sig { params(_: String).returns(String) }
      def authorizer_name=(_)
      end

      sig { returns(T::Boolean) }
      def customer_has_been_offboarded
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def customer_has_been_offboarded=(_)
      end

      sig { returns(String) }
      def proof_of_authorization_request_id
      end

      sig { params(_: String).returns(String) }
      def proof_of_authorization_request_id=(_)
      end

      sig { returns(T::Boolean) }
      def validated_account_ownership_via_credential
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def validated_account_ownership_via_credential=(_)
      end

      sig { returns(T::Boolean) }
      def validated_account_ownership_with_account_statement
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def validated_account_ownership_with_account_statement=(_)
      end

      sig { returns(T::Boolean) }
      def validated_account_ownership_with_microdeposit
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def validated_account_ownership_with_microdeposit=(_)
      end

      sig { returns(T.nilable(String)) }
      def additional_evidence_file_id
      end

      sig { params(_: String).returns(String) }
      def additional_evidence_file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def authorizer_company
      end

      sig { params(_: String).returns(String) }
      def authorizer_company=(_)
      end

      sig { returns(T.nilable(String)) }
      def authorizer_ip_address
      end

      sig { params(_: String).returns(String) }
      def authorizer_ip_address=(_)
      end

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
          additional_evidence_file_id: String,
          authorizer_company: String,
          authorizer_ip_address: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        authorization_terms:,
        authorized_at:,
        authorizer_email:,
        authorizer_name:,
        customer_has_been_offboarded:,
        proof_of_authorization_request_id:,
        validated_account_ownership_via_credential:,
        validated_account_ownership_with_account_statement:,
        validated_account_ownership_with_microdeposit:,
        additional_evidence_file_id: nil,
        authorizer_company: nil,
        authorizer_ip_address: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
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
              additional_evidence_file_id: String,
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
