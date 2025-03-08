# typed: strong

module Increase
  module Models
    module Simulations
      class CardAuthorizationExpirationCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(String) }
        def card_payment_id
        end

        sig { params(_: String).returns(String) }
        def card_payment_id=(_)
        end

        sig do
          params(
              card_payment_id: String,
              request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
            )
            .returns(T.attached_class)
        end
        def self.new(card_payment_id:, request_options: {})
        end

        sig { override.returns({card_payment_id: String, request_options: Increase::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
