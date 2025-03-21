# typed: strong

module Increase
  module Models
    module Simulations
      class CardRefundCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The identifier for the Transaction to refund. The Transaction's source must have
        #   a category of card_settlement.
        sig { returns(String) }
        attr_accessor :transaction_id

        sig do
          params(
            transaction_id: String,
            request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(transaction_id:, request_options: {})
        end

        sig { override.returns({transaction_id: String, request_options: Increase::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
