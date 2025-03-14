# typed: strong

module Increase
  module Models
    module Simulations
      class CardReversalCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The identifier of the Card Payment to create a reversal on.
        sig { returns(String) }
        def card_payment_id
        end

        sig { params(_: String).returns(String) }
        def card_payment_id=(_)
        end

        # The amount of the reversal in minor units in the card authorization's currency.
        #   This defaults to the authorization amount.
        sig { returns(T.nilable(Integer)) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig do
          params(
            card_payment_id: String,
            amount: Integer,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(card_payment_id:, amount: nil, request_options: {})
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
