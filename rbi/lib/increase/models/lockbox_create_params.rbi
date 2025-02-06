# typed: strong

module Increase
  module Models
    class LockboxCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(String)) }
      attr_reader :recipient_name

      sig { params(recipient_name: String).void }
      attr_writer :recipient_name

      sig do
        params(
          account_id: String,
          description: String,
          recipient_name: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(account_id:, description: nil, recipient_name: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            account_id: String,
            description: String,
            recipient_name: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
