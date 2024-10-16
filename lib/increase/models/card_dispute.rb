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
      #   @return [Time]
      required :created_at, Time

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
        #   @return [Time]
        required :accepted_at, Time

        # @!attribute [rw] card_dispute_id
        #   The identifier of the Card Dispute that was accepted.
        #   @return [String]
        required :card_dispute_id, String

        # @!attribute [rw] transaction_id
        #   The identifier of the Transaction that was created to return the disputed funds to your account.
        #   @return [String]
        required :transaction_id, String

        # Create a new instance of Acceptance from a Hash of raw data.
        #
        # @overload initialize(accepted_at: nil, card_dispute_id: nil, transaction_id: nil)
        # @param accepted_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the Card Dispute was accepted.
        # @param card_dispute_id [String] The identifier of the Card Dispute that was accepted.
        # @param transaction_id [String] The identifier of the Transaction that was created to return the disputed funds
        #   to your account.
        def initialize(data = {})
          super
        end
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
        #   @return [Time]
        required :lost_at, Time

        # @!attribute [rw] transaction_id
        #   The identifier of the Transaction that was created to debit the disputed funds from your account.
        #   @return [String]
        required :transaction_id, String

        # Create a new instance of Loss from a Hash of raw data.
        #
        # @overload initialize(card_dispute_id: nil, explanation: nil, lost_at: nil, transaction_id: nil)
        # @param card_dispute_id [String] The identifier of the Card Dispute that was lost.
        # @param explanation [String] Why the Card Dispute was lost.
        # @param lost_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the Card Dispute was lost.
        # @param transaction_id [String] The identifier of the Transaction that was created to debit the disputed funds
        #   from your account.
        def initialize(data = {})
          super
        end
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
        #   @return [Time]
        required :rejected_at, Time

        # Create a new instance of Rejection from a Hash of raw data.
        #
        # @overload initialize(card_dispute_id: nil, explanation: nil, rejected_at: nil)
        # @param card_dispute_id [String] The identifier of the Card Dispute that was rejected.
        # @param explanation [String] Why the Card Dispute was rejected.
        # @param rejected_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the Card Dispute was rejected.
        def initialize(data = {})
          super
        end
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
        #   @return [Time]
        required :won_at, Time

        # Create a new instance of Win from a Hash of raw data.
        #
        # @overload initialize(card_dispute_id: nil, won_at: nil)
        # @param card_dispute_id [String] The identifier of the Card Dispute that was won.
        # @param won_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the Card Dispute was won.
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of CardDispute from a Hash of raw data.
      #
      # @overload initialize(id: nil, acceptance: nil, amount: nil, created_at: nil, disputed_transaction_id: nil, explanation: nil, idempotency_key: nil, loss: nil, rejection: nil, status: nil, type: nil, win: nil)
      # @param id [String] The Card Dispute identifier.
      # @param acceptance [Object] If the Card Dispute's status is `accepted`, this will contain details of the
      #   successful dispute.
      # @param amount [Integer] The amount of the dispute, if provided, or the transaction amount otherwise.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Card Dispute was created.
      # @param disputed_transaction_id [String] The identifier of the Transaction that was disputed.
      # @param explanation [String] Why you disputed the Transaction in question.
      # @param idempotency_key [String] The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      # @param loss [Object] If the Card Dispute's status is `lost`, this will contain details of the lost
      #   dispute.
      # @param rejection [Object] If the Card Dispute's status is `rejected`, this will contain details of the
      #   unsuccessful dispute.
      # @param status [String] The results of the Dispute investigation.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `card_dispute`.
      # @param win [Object] If the Card Dispute's status is `won`, this will contain details of the won
      #   dispute.
      def initialize(data = {})
        super
      end
    end
  end
end
