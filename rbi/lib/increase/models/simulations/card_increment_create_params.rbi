# typed: strong

module Increase
  module Models
    module Simulations
      class CardIncrementCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # #/components/schemas/sandbox_increment_a_card_authorization_parameters/properties/amount
        sig { returns(Integer) }
        attr_accessor :amount

        # #/components/schemas/sandbox_increment_a_card_authorization_parameters/properties/card_payment_id
        sig { returns(String) }
        attr_accessor :card_payment_id

        # #/components/schemas/sandbox_increment_a_card_authorization_parameters/properties/event_subscription_id
        sig { returns(T.nilable(String)) }
        attr_reader :event_subscription_id

        sig { params(event_subscription_id: String).void }
        attr_writer :event_subscription_id

        sig do
          params(
            amount: Integer,
            card_payment_id: String,
            event_subscription_id: String,
            request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, card_payment_id:, event_subscription_id: nil, request_options: {}); end

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
        def to_hash; end
      end
    end
  end
end
