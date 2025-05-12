# typed: strong

module Increase
  module Models
    module Simulations
      class CardIncrementCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Increase::Simulations::CardIncrementCreateParams,
              Increase::Internal::AnyHash
            )
          end

        # The amount of the increment in minor units in the card authorization's currency.
        sig { returns(Integer) }
        attr_accessor :amount

        # The identifier of the Card Payment to create a increment on.
        sig { returns(String) }
        attr_accessor :card_payment_id

        # The identifier of the Event Subscription to use. If provided, will override the
        # default real time event subscription. Because you can only create one real time
        # decision event subscription, you can use this field to route events to any
        # specified event subscription for testing purposes.
        sig { returns(T.nilable(String)) }
        attr_reader :event_subscription_id

        sig { params(event_subscription_id: String).void }
        attr_writer :event_subscription_id

        sig do
          params(
            amount: Integer,
            card_payment_id: String,
            event_subscription_id: String,
            request_options: Increase::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount of the increment in minor units in the card authorization's currency.
          amount:,
          # The identifier of the Card Payment to create a increment on.
          card_payment_id:,
          # The identifier of the Event Subscription to use. If provided, will override the
          # default real time event subscription. Because you can only create one real time
          # decision event subscription, you can use this field to route events to any
          # specified event subscription for testing purposes.
          event_subscription_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
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
