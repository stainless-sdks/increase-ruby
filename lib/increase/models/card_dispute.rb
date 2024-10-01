# frozen_string_literal: true

module Increase
  module Models
    class CardDispute < BaseModel
      # @!attribute [rw] id
      #   The Card Dispute identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] acceptance
      #   If the Card Dispute's status is `accepted`, this will contain details of the successful dispute.
      #   @return [Increase::Models::CardDispute::Acceptance]
      required :acceptance, -> { Increase::Models::CardDispute::Acceptance }

      # @!attribute [rw] amount
      #   The amount of the dispute, if provided, or the transaction amount otherwise.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was created.
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] disputed_transaction_id
      #   The identifier of the Transaction that was disputed.
      #   @return [String]
      required :disputed_transaction_id, String

      # @!attribute [rw] explanation
      #   Why you disputed the Transaction in question.
      #   @return [String]
      required :explanation, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] loss
      #   If the Card Dispute's status is `lost`, this will contain details of the lost dispute.
      #   @return [Increase::Models::CardDispute::Loss]
      required :loss, -> { Increase::Models::CardDispute::Loss }

      # @!attribute [rw] rejection
      #   If the Card Dispute's status is `rejected`, this will contain details of the unsuccessful dispute.
      #   @return [Increase::Models::CardDispute::Rejection]
      required :rejection, -> { Increase::Models::CardDispute::Rejection }

      # @!attribute [rw] status
      #   The results of the Dispute investigation.
      #   @return [Symbol, Increase::Models::CardDispute::Status]
      required :status, enum: -> { Increase::Models::CardDispute::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `card_dispute`.
      #   @return [Symbol, Increase::Models::CardDispute::Type]
      required :type, enum: -> { Increase::Models::CardDispute::Type }

      # @!attribute [rw] win
      #   If the Card Dispute's status is `won`, this will contain details of the won dispute.
      #   @return [Increase::Models::CardDispute::Win]
      required :win, -> { Increase::Models::CardDispute::Win }

      class Acceptance < BaseModel
        # @!attribute [rw] accepted_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was accepted.
        #   @return [DateTime]
        required :accepted_at, DateTime

        # @!attribute [rw] card_dispute_id
        #   The identifier of the Card Dispute that was accepted.
        #   @return [String]
        required :card_dispute_id, String

        # @!attribute [rw] transaction_id
        #   The identifier of the Transaction that was created to return the disputed funds to your account.
        #   @return [String]
        required :transaction_id, String
      end

      class Loss < BaseModel
        # @!attribute [rw] card_dispute_id
        #   The identifier of the Card Dispute that was lost.
        #   @return [String]
        required :card_dispute_id, String

        # @!attribute [rw] explanation
        #   Why the Card Dispute was lost.
        #   @return [String]
        required :explanation, String

        # @!attribute [rw] lost_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was lost.
        #   @return [DateTime]
        required :lost_at, DateTime

        # @!attribute [rw] transaction_id
        #   The identifier of the Transaction that was created to debit the disputed funds from your account.
        #   @return [String]
        required :transaction_id, String
      end

      class Rejection < BaseModel
        # @!attribute [rw] card_dispute_id
        #   The identifier of the Card Dispute that was rejected.
        #   @return [String]
        required :card_dispute_id, String

        # @!attribute [rw] explanation
        #   Why the Card Dispute was rejected.
        #   @return [String]
        required :explanation, String

        # @!attribute [rw] rejected_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was rejected.
        #   @return [DateTime]
        required :rejected_at, DateTime
      end

      # The results of the Dispute investigation.
      class Status < Increase::Enum
        # The Card Dispute is pending review.
        PENDING_REVIEWING = :pending_reviewing

        # The Card Dispute has been accepted and your funds have been returned. The card dispute will eventually transition into `won` or `lost` depending on the outcome.
        ACCEPTED = :accepted

        # The Card Dispute has been rejected.
        REJECTED = :rejected

        # The Card Dispute has been lost and funds previously credited from the acceptance have been debited.
        LOST = :lost

        # The Card Dispute has been won and no further action can be taken.
        WON = :won
      end

      # A constant representing the object's type. For this resource it will always be `card_dispute`.
      class Type < Increase::Enum
        CARD_DISPUTE = :card_dispute
      end

      class Win < BaseModel
        # @!attribute [rw] card_dispute_id
        #   The identifier of the Card Dispute that was won.
        #   @return [String]
        required :card_dispute_id, String

        # @!attribute [rw] won_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was won.
        #   @return [DateTime]
        required :won_at, DateTime
      end
    end
  end
end
