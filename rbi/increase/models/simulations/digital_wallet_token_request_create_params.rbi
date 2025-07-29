# typed: strong

module Increase
  module Models
    module Simulations
      class DigitalWalletTokenRequestCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(Increase::Simulations::DigitalWalletTokenRequestCreateParams, Increase::Internal::AnyHash) }

        # The identifier of the Card to be authorized.
        sig { returns(String) }
        attr_accessor :card_id

        sig { params(card_id: String, request_options: Increase::RequestOptions::OrHash).returns(T.attached_class) }
        def self.new(
          # The identifier of the Card to be authorized.
        card_id:,
          request_options: {}
        ); end

        sig { override.returns({card_id: String, request_options: Increase::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
