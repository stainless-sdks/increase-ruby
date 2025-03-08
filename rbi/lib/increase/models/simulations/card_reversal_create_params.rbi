# typed: strong

module Increase
  module Models
    module Simulations
      class CardReversalCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(String) }
        def card_payment_id
        end

        sig { params(_: String).returns(String) }
        def card_payment_id=(_)
        end

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

        sig { override.returns({card_payment_id: String, amount: Integer, request_options: Increase::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
