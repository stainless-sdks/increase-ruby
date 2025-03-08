# typed: strong

module Increase
  module Models
    class CardDisputeCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      def disputed_transaction_id
      end

      sig { params(_: String).returns(String) }
      def disputed_transaction_id=(_)
      end

      sig { returns(String) }
      def explanation
      end

      sig { params(_: String).returns(String) }
      def explanation=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig do
        params(
            disputed_transaction_id: String,
            explanation: String,
            amount: Integer,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .returns(T.attached_class)
      end
      def self.new(disputed_transaction_id:, explanation:, amount: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {disputed_transaction_id: String, explanation: String, amount: Integer, request_options: Increase::RequestOptions}
          )
      end
      def to_hash
      end
    end
  end
end
