# typed: strong

module Increase
  module Models
    class IntrafiAccountEnrollmentCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifier for the account to be added to IntraFi.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The contact email for the account owner, to be shared with IntraFi.
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
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(account_id:, email_address:, request_options: {})
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
