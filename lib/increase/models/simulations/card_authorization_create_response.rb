# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::CardAuthorizations#create
      class CardAuthorizationCreateResponse < Increase::Internal::Type::BaseModel
        # @!attribute declined_transaction
        #   #/components/schemas/inbound_card_authorization_simulation_result/properties/declined_transaction
        #
        #   @return [Increase::Models::DeclinedTransaction, nil]
        required :declined_transaction, -> { Increase::Models::DeclinedTransaction }, nil?: true

        # @!attribute pending_transaction
        #   #/components/schemas/inbound_card_authorization_simulation_result/properties/pending_transaction
        #
        #   @return [Increase::Models::PendingTransaction, nil]
        required :pending_transaction, -> { Increase::Models::PendingTransaction }, nil?: true

        # @!attribute type
        #   #/components/schemas/inbound_card_authorization_simulation_result/properties/type
        #
        #   @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateResponse::Type]
        required :type, enum: -> { Increase::Models::Simulations::CardAuthorizationCreateResponse::Type }

        # @!parse
        #   # #/paths//simulations/card_authorizations/post/responses/200/content/application/json/schema
        #   #
        #   # @param declined_transaction [Increase::Models::DeclinedTransaction, nil]
        #   # @param pending_transaction [Increase::Models::PendingTransaction, nil]
        #   # @param type [Symbol, Increase::Models::Simulations::CardAuthorizationCreateResponse::Type]
        #   #
        #   def initialize(declined_transaction:, pending_transaction:, type:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_card_authorization_simulation_result/properties/type
        #
        # @see Increase::Models::Simulations::CardAuthorizationCreateResponse#type
        module Type
          extend Increase::Internal::Type::Enum

          INBOUND_CARD_AUTHORIZATION_SIMULATION_RESULT = :inbound_card_authorization_simulation_result

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
