# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollmentCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(String) }
      def email_address
      end

      sig { params(_: String).returns(String) }
      def email_address=(_)
      end

      sig do
        params(
          account_id: String,
          email_address: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
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
