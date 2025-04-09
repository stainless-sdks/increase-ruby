# typed: strong

module Increase
  module Models
    class CardDisputeCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_card_dispute_parameters/properties/disputed_transaction_id
      sig { returns(String) }
      attr_accessor :disputed_transaction_id

      # #/components/schemas/create_a_card_dispute_parameters/properties/explanation
      sig { returns(String) }
      attr_accessor :explanation

      # #/components/schemas/create_a_card_dispute_parameters/properties/amount
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount

      sig { params(amount: Integer).void }
      attr_writer :amount

      sig do
        params(
          disputed_transaction_id: String,
          explanation: String,
          amount: Integer,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(disputed_transaction_id:, explanation:, amount: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              disputed_transaction_id: String,
              explanation: String,
              amount: Integer,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
