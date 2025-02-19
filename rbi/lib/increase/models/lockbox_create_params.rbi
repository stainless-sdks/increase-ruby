# typed: strong

module Increase
  module Models
    class LockboxCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def recipient_name
      end

      sig { params(_: String).returns(String) }
      def recipient_name=(_)
      end

      sig do
        params(
            account_id: String,
            description: String,
            recipient_name: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .void
      end
      def initialize(account_id:, description: nil, recipient_name: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {account_id: String, description: String, recipient_name: String, request_options: Increase::RequestOptions}
          )
      end
      def to_hash
      end
    end
  end
end
