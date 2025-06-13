# typed: strong

module Increase
  module Models
    module Simulations
      class CardReversalCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(Increase::Simulations::CardReversalCreateParams, Increase::Internal::AnyHash) }

        # The identifier of the Card Payment to create a reversal on.
        sig { returns(String) }
        attr_accessor :card_payment_id

        # The amount of the reversal in minor units in the card authorization's currency.
        # This defaults to the authorization amount.
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount

        sig { params(amount: Integer).void }
        attr_writer :amount

        sig do
          params(card_payment_id: String, amount: Integer, request_options: Increase::RequestOptions::OrHash)
            .returns(T.attached_class)
        end
        def self.new(
          # The identifier of the Card Payment to create a reversal on.
        card_payment_id:,
          # The amount of the reversal in minor units in the card authorization's currency.
        # This defaults to the authorization amount.
        amount: nil,
          request_options: {}
        ); end

        sig { override.returns({card_payment_id: String, amount: Integer, request_options: Increase::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
