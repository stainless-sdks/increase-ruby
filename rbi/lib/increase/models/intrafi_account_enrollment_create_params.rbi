# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollmentCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/enroll_an_account_in_the_intrafi_deposit_sweep_network_parameters/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/enroll_an_account_in_the_intrafi_deposit_sweep_network_parameters/properties/email_address
      sig { returns(String) }
      attr_accessor :email_address

      sig do
        params(
          account_id: String,
          email_address: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(account_id:, email_address:, request_options: {}); end

      sig do
        override.returns(
          {
            account_id: String,
            email_address: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
