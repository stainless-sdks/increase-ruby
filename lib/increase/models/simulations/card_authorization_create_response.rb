# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @example
      #
      # ```ruby
      # card_authorization_create_response => {
      #   declined_transaction: Increase::Models::DeclinedTransaction,
      #   pending_transaction: Increase::Models::PendingTransaction,
      #   type: enum: Increase::Models::Simulations::CardAuthorizationCreateResponse::Type
      # }
      # ```
      class CardAuthorizationCreateResponse < Increase::BaseModel
        # @!attribute declined_transaction
        #   If the authorization attempt fails, this will contain the resulting [Declined Transaction](#declined-transactions) object. The Declined Transaction's `source` will be of `category: card_decline`.
        #
        #   @return [Increase::Models::DeclinedTransaction, nil]
        required :declined_transaction, -> { Increase::Models::DeclinedTransaction }

        # @!attribute pending_transaction
        #   If the authorization attempt succeeds, this will contain the resulting Pending Transaction object. The Pending Transaction's `source` will be of `category: card_authorization`.
        #
        #   @return [Increase::Models::PendingTransaction, nil]
        required :pending_transaction, -> { Increase::Models::PendingTransaction }

        # @!attribute type
        #   A constant representing the object's type. For this resource it will always be `inbound_card_authorization_simulation_result`.
        #
        #   @return [Symbol, Increase::Models::Simulations::CardAuthorizationCreateResponse::Type]
        required :type, enum: -> { Increase::Models::Simulations::CardAuthorizationCreateResponse::Type }

        # @!parse
        #   # The results of a Card Authorization simulation.
        #   #
        #   # @param declined_transaction [Increase::Models::DeclinedTransaction, nil] If the authorization attempt fails, this will contain the resulting
        #   #   [Declined Transaction](#declined-transactions) object. The Declined
        #   #   Transaction's `source` will be of `category: card_decline`.
        #   #
        #   # @param pending_transaction [Increase::Models::PendingTransaction, nil] If the authorization attempt succeeds, this will contain the resulting Pending
        #   #   Transaction object. The Pending Transaction's `source` will be of
        #   #   `category: card_authorization`.
        #   #
        #   # @param type [String] A constant representing the object's type. For this resource it will always be
        #   #   `inbound_card_authorization_simulation_result`.
        #   #
        #   def initialize(declined_transaction:, pending_transaction:, type:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # A constant representing the object's type. For this resource it will always be `inbound_card_authorization_simulation_result`.
        #
        # @example
        #
        # ```ruby
        # case type
        # in :inbound_card_authorization_simulation_result
        #   # ...
        # end
        # ```
        class Type < Increase::Enum
          INBOUND_CARD_AUTHORIZATION_SIMULATION_RESULT = :inbound_card_authorization_simulation_result

          finalize!
        end
      end
    end
  end
end
