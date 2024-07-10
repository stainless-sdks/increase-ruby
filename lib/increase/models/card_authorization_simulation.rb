# frozen_string_literal: true

module Increase
  module Models
    class CardAuthorizationSimulation < BaseModel
      # @!attribute [rw] declined_transaction
      #   If the authorization attempt fails, this will contain the resulting [Declined Transaction](#declined-transactions) object. The Declined Transaction's `source` will be of `category: card_decline`.
      #   @return [Increase::Models::DeclinedTransaction]
      required :declined_transaction, -> { Increase::Models::DeclinedTransaction }

      # @!attribute [rw] pending_transaction
      #   If the authorization attempt succeeds, this will contain the resulting Pending Transaction object. The Pending Transaction's `source` will be of `category: card_authorization`.
      #   @return [Increase::Models::PendingTransaction]
      required :pending_transaction, -> { Increase::Models::PendingTransaction }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_card_authorization_simulation_result`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_card_authorization_simulation_result)
    end
  end
end
