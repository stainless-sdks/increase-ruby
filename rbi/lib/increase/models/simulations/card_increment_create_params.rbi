# typed: strong

module Increase
  module Models
    module Simulations
      class CardIncrementCreateParams < Increase::BaseModel
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

        sig { returns(T.nilable(String)) }
        def event_subscription_id
        end

        sig { params(_: String).returns(String) }
        def event_subscription_id=(_)
        end

        sig do
          params(
            amount: Integer,
            card_payment_id: String,
            event_subscription_id: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, card_payment_id:, event_subscription_id: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                amount: Integer,
                card_payment_id: String,
                event_subscription_id: String,
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
