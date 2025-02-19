# typed: strong

module Increase
  module Models
    module Simulations
      class CardFuelConfirmationCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(String) }
        def card_payment_id
        end

        sig { params(_: String).returns(String) }
        def card_payment_id=(_)
        end

        sig do
          params(
            amount: Integer,
            card_payment_id: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(amount:, card_payment_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              amount: Integer,
              card_payment_id: String,
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
