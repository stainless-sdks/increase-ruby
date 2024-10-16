# frozen_string_literal: true

module Increase
  module Models
    class CardAuthorizationCreateResponse < BaseModel
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
      #   @return [Symbol, Increase::Models::CardAuthorizationCreateResponse::Type]
      required :type, enum: -> { Increase::Models::CardAuthorizationCreateResponse::Type }

      # A constant representing the object's type. For this resource it will always be `inbound_card_authorization_simulation_result`.
      class Type < Increase::Enum
        INBOUND_CARD_AUTHORIZATION_SIMULATION_RESULT = :inbound_card_authorization_simulation_result
      end

      # Create a new instance of CardAuthorizationCreateResponse from a Hash of raw
      #   data.
      #
      # @overload initialize(declined_transaction: nil, pending_transaction: nil, type: nil)
      # @param declined_transaction [Object] If the authorization attempt fails, this will contain the resulting
      #   [Declined Transaction](#declined-transactions) object. The Declined
      #   Transaction's `source` will be of `category: card_decline`.
      # @param pending_transaction [Object] If the authorization attempt succeeds, this will contain the resulting Pending
      #   Transaction object. The Pending Transaction's `source` will be of
      #   `category: card_authorization`.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `inbound_card_authorization_simulation_result`.
      def initialize(data = {})
        super
      end
    end
  end
end
