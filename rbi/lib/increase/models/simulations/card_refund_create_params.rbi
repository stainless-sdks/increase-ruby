# typed: strong

module Increase
  module Models
    module Simulations
      class CardRefundCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # #/components/schemas/sandbox_refund_a_card_transaction_parameters/properties/transaction_id
        sig { returns(String) }
        attr_accessor :transaction_id

        sig do
          params(
            transaction_id: String,
            request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(transaction_id:, request_options: {}); end

        sig { override.returns({transaction_id: String, request_options: Increase::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
