# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::CardDisputes#create
    class CardDispute < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/card_dispute/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute acceptance
      #   #/components/schemas/card_dispute/properties/acceptance
      #
      #   @return [Increase::Models::CardDispute::Acceptance, nil]
      required :acceptance, -> { Increase::Models::CardDispute::Acceptance }, nil?: true

      # @!attribute amount
      #   #/components/schemas/card_dispute/properties/amount
      #
      #   @return [Integer, nil]
      required :amount, Integer, nil?: true

      # @!attribute created_at
      #   #/components/schemas/card_dispute/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute disputed_transaction_id
      #   #/components/schemas/card_dispute/properties/disputed_transaction_id
      #
      #   @return [String]
      required :disputed_transaction_id, String

      # @!attribute explanation
      #   #/components/schemas/card_dispute/properties/explanation
      #
      #   @return [String]
      required :explanation, String

      # @!attribute idempotency_key
      #   #/components/schemas/card_dispute/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute loss
      #   #/components/schemas/card_dispute/properties/loss
      #
      #   @return [Increase::Models::CardDispute::Loss, nil]
      required :loss, -> { Increase::Models::CardDispute::Loss }, nil?: true

      # @!attribute rejection
      #   #/components/schemas/card_dispute/properties/rejection
      #
      #   @return [Increase::Models::CardDispute::Rejection, nil]
      required :rejection, -> { Increase::Models::CardDispute::Rejection }, nil?: true

      # @!attribute status
      #   #/components/schemas/card_dispute/properties/status
      #
      #   @return [Symbol, Increase::Models::CardDispute::Status]
      required :status, enum: -> { Increase::Models::CardDispute::Status }

      # @!attribute type
      #   #/components/schemas/card_dispute/properties/type
      #
      #   @return [Symbol, Increase::Models::CardDispute::Type]
      required :type, enum: -> { Increase::Models::CardDispute::Type }

      # @!attribute win
      #   #/components/schemas/card_dispute/properties/win
      #
      #   @return [Increase::Models::CardDispute::Win, nil]
      required :win, -> { Increase::Models::CardDispute::Win }, nil?: true

      # @!parse
      #   # #/components/schemas/card_dispute
      #   #
      #   # @param id [String]
      #   # @param acceptance [Increase::Models::CardDispute::Acceptance, nil]
      #   # @param amount [Integer, nil]
      #   # @param created_at [Time]
      #   # @param disputed_transaction_id [String]
      #   # @param explanation [String]
      #   # @param idempotency_key [String, nil]
      #   # @param loss [Increase::Models::CardDispute::Loss, nil]
      #   # @param rejection [Increase::Models::CardDispute::Rejection, nil]
      #   # @param status [Symbol, Increase::Models::CardDispute::Status]
      #   # @param type [Symbol, Increase::Models::CardDispute::Type]
      #   # @param win [Increase::Models::CardDispute::Win, nil]
      #   #
      #   def initialize(
      #     id:,
      #     acceptance:,
      #     amount:,
      #     created_at:,
      #     disputed_transaction_id:,
      #     explanation:,
      #     idempotency_key:,
      #     loss:,
      #     rejection:,
      #     status:,
      #     type:,
      #     win:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::CardDispute#acceptance
      class Acceptance < Increase::Internal::Type::BaseModel
        # @!attribute accepted_at
        #   #/components/schemas/card_dispute/properties/acceptance/anyOf/0/properties/accepted_at
        #
        #   @return [Time]
        required :accepted_at, Time

        # @!attribute card_dispute_id
        #   #/components/schemas/card_dispute/properties/acceptance/anyOf/0/properties/card_dispute_id
        #
        #   @return [String]
        required :card_dispute_id, String

        # @!attribute transaction_id
        #   #/components/schemas/card_dispute/properties/acceptance/anyOf/0/properties/transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # #/components/schemas/card_dispute/properties/acceptance
        #   #
        #   # @param accepted_at [Time]
        #   # @param card_dispute_id [String]
        #   # @param transaction_id [String]
        #   #
        #   def initialize(accepted_at:, card_dispute_id:, transaction_id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::CardDispute#loss
      class Loss < Increase::Internal::Type::BaseModel
        # @!attribute card_dispute_id
        #   #/components/schemas/card_dispute/properties/loss/anyOf/0/properties/card_dispute_id
        #
        #   @return [String]
        required :card_dispute_id, String

        # @!attribute explanation
        #   #/components/schemas/card_dispute/properties/loss/anyOf/0/properties/explanation
        #
        #   @return [String]
        required :explanation, String

        # @!attribute lost_at
        #   #/components/schemas/card_dispute/properties/loss/anyOf/0/properties/lost_at
        #
        #   @return [Time]
        required :lost_at, Time

        # @!attribute transaction_id
        #   #/components/schemas/card_dispute/properties/loss/anyOf/0/properties/transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # #/components/schemas/card_dispute/properties/loss
        #   #
        #   # @param card_dispute_id [String]
        #   # @param explanation [String]
        #   # @param lost_at [Time]
        #   # @param transaction_id [String]
        #   #
        #   def initialize(card_dispute_id:, explanation:, lost_at:, transaction_id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::CardDispute#rejection
      class Rejection < Increase::Internal::Type::BaseModel
        # @!attribute card_dispute_id
        #   #/components/schemas/card_dispute/properties/rejection/anyOf/0/properties/card_dispute_id
        #
        #   @return [String]
        required :card_dispute_id, String

        # @!attribute explanation
        #   #/components/schemas/card_dispute/properties/rejection/anyOf/0/properties/explanation
        #
        #   @return [String]
        required :explanation, String

        # @!attribute rejected_at
        #   #/components/schemas/card_dispute/properties/rejection/anyOf/0/properties/rejected_at
        #
        #   @return [Time]
        required :rejected_at, Time

        # @!parse
        #   # #/components/schemas/card_dispute/properties/rejection
        #   #
        #   # @param card_dispute_id [String]
        #   # @param explanation [String]
        #   # @param rejected_at [Time]
        #   #
        #   def initialize(card_dispute_id:, explanation:, rejected_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/card_dispute/properties/status
      #
      # @see Increase::Models::CardDispute#status
      module Status
        extend Increase::Internal::Type::Enum

        # The Card Dispute is pending review.
        PENDING_REVIEWING = :pending_reviewing

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

      # #/components/schemas/card_dispute/properties/type
      #
      # @see Increase::Models::CardDispute#type
      module Type
        extend Increase::Internal::Type::Enum

        CARD_DISPUTE = :card_dispute

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::CardDispute#win
      class Win < Increase::Internal::Type::BaseModel
        # @!attribute card_dispute_id
        #   #/components/schemas/card_dispute/properties/win/anyOf/0/properties/card_dispute_id
        #
        #   @return [String]
        required :card_dispute_id, String

        # @!attribute won_at
        #   #/components/schemas/card_dispute/properties/win/anyOf/0/properties/won_at
        #
        #   @return [Time]
        required :won_at, Time

        # @!parse
        #   # #/components/schemas/card_dispute/properties/win
        #   #
        #   # @param card_dispute_id [String]
        #   # @param won_at [Time]
        #   #
        #   def initialize(card_dispute_id:, won_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
