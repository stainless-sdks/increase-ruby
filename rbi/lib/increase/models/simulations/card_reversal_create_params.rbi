# typed: strong

module Increase
  module Models
    module Simulations
      class CardReversalCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(String) }
        attr_accessor :card_payment_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :amount

        sig { params(amount: Integer).void }
        attr_writer :amount

        sig do
          params(
            card_payment_id: String,
            amount: Integer,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(card_payment_id:, amount: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              card_payment_id: String,
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
end
