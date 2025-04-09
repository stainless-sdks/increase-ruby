# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::CardDisputes#action
      class CardDisputeActionParams < Increase::Internal::Type::BaseModel
        # @!parse
        #   extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # @!attribute status
        #   #/components/schemas/sandbox_advance_the_state_of_a_card_dispute_parameters/properties/status
        #
        #   @return [Symbol, Increase::Models::Simulations::CardDisputeActionParams::Status]
        required :status, enum: -> { Increase::Models::Simulations::CardDisputeActionParams::Status }

        # @!attribute [r] explanation
        #   #/components/schemas/sandbox_advance_the_state_of_a_card_dispute_parameters/properties/explanation
        #
        #   @return [String, nil]
        optional :explanation, String

        # @!parse
        #   # @return [String]
        #   attr_writer :explanation

        # @!parse
        #   # @param status [Symbol, Increase::Models::Simulations::CardDisputeActionParams::Status]
        #   # @param explanation [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(status:, explanation: nil, request_options: {}, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/sandbox_advance_the_state_of_a_card_dispute_parameters/properties/status
        module Status
          extend Increase::Internal::Type::Enum

          # Increase has requested more information related to the Card Dispute from you.
          PENDING_USER_INFORMATION = :pending_user_information

          # The Card Dispute has been accepted and your funds have been returned. The card dispute will eventually transition into `won` or `lost` depending on the outcome.
          ACCEPTED = :accepted

          # The Card Dispute has been rejected.
          REJECTED = :rejected

          # The Card Dispute has been lost and funds previously credited from the acceptance have been debited.
          LOST = :lost

          # The Card Dispute has been won and no further action can be taken.
          WON = :won

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
