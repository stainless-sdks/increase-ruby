# typed: strong

module Increase
  module Models
    module Simulations
      class CardIncrementCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :card_payment_id

        sig { returns(T.nilable(String)) }
        attr_reader :event_subscription_id

        sig { params(event_subscription_id: String).void }
        attr_writer :event_subscription_id

        sig do
          params(
            amount: Integer,
            card_payment_id: String,
            event_subscription_id: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(amount:, card_payment_id:, event_subscription_id: nil, request_options: {})
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
