# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollmentCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(String) }
      attr_accessor :email_address

      sig do
        params(
          account_id: String,
          email_address: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(account_id:, email_address:, request_options: {})
      end

      sig do
        override.returns(
          {
            account_id: String,
            email_address: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
