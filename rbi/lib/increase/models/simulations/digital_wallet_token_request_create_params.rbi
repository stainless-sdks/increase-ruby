# typed: strong

module Increase
  module Models
    module Simulations
      class DigitalWalletTokenRequestCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        sig do
          params(
            card_id: String,
            request_options: T.any(
              Increase::RequestOptions,
              T::Hash[Symbol, T.anything]
            )
          )
            .returns(T.attached_class)
        end
        def self.new(card_id:, request_options: {})
        end

        sig { override.returns({card_id: String, request_options: Increase::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
