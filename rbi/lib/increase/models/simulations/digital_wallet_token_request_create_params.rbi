# typed: strong

module Increase
  module Models
    module Simulations
      class DigitalWalletTokenRequestCreateParams < Increase::BaseModel
        extend Increase::Type::RequestParameters::Converter
        include Increase::RequestParameters

        # The identifier of the Card to be authorized.
        sig { returns(String) }
        attr_accessor :card_id

        sig do
          params(card_id: String, request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash))
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
