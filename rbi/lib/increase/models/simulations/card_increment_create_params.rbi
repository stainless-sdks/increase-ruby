# typed: strong

module Increase
  module Models
    module Simulations
      class CardIncrementCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The amount of the increment in minor units in the card authorization's currency.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The identifier of the Card Payment to create a increment on.
        sig { returns(String) }
        def card_payment_id
        end

        sig { params(_: String).returns(String) }
        def card_payment_id=(_)
        end

        # The identifier of the Event Subscription to use. If provided, will override the
        #   default real time event subscription. Because you can only create one real time
        #   decision event subscription, you can use this field to route events to any
        #   specified event subscription for testing purposes.
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
            request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
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
