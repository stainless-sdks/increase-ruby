# typed: strong

module Increase
  module Models
    class CardDisputeCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :disputed_transaction_id

      sig { returns(String) }
      attr_accessor :explanation

      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      sig do
        params(
          disputed_transaction_id: String,
          explanation: String,
          amount: Integer,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(disputed_transaction_id:, explanation:, amount: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            disputed_transaction_id: String,
            explanation: String,
            amount: Integer,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
