# typed: strong

module Increase
  module Models
    class CardDispute < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(Increase::Models::CardDispute::Acceptance)) }
      def acceptance
      end

      sig do
        params(_: T.nilable(Increase::Models::CardDispute::Acceptance)).returns(T.nilable(Increase::Models::CardDispute::Acceptance))
      end
      def acceptance=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def disputed_transaction_id
      end

      sig { params(_: String).returns(String) }
      def disputed_transaction_id=(_)
      end

      sig { returns(String) }
      def explanation
      end

      sig { params(_: String).returns(String) }
      def explanation=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(Increase::Models::CardDispute::Loss)) }
      def loss
      end

      sig do
        params(_: T.nilable(Increase::Models::CardDispute::Loss)).returns(T.nilable(Increase::Models::CardDispute::Loss))
      end
      def loss=(_)
      end

      sig { returns(T.nilable(Increase::Models::CardDispute::Rejection)) }
      def rejection
      end

      sig do
        params(_: T.nilable(Increase::Models::CardDispute::Rejection)).returns(T.nilable(Increase::Models::CardDispute::Rejection))
      end
      def rejection=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(T.nilable(Increase::Models::CardDispute::Win)) }
      def win
      end

      sig do
        params(_: T.nilable(Increase::Models::CardDispute::Win)).returns(T.nilable(Increase::Models::CardDispute::Win))
      end
      def win=(_)
      end

      sig do
        params(
          id: String,
          acceptance: T.nilable(Increase::Models::CardDispute::Acceptance),
          amount: T.nilable(Integer),
          created_at: Time,
          disputed_transaction_id: String,
          explanation: String,
          idempotency_key: T.nilable(String),
          loss: T.nilable(Increase::Models::CardDispute::Loss),
          rejection: T.nilable(Increase::Models::CardDispute::Rejection),
          status: Symbol,
          type: Symbol,
          win: T.nilable(Increase::Models::CardDispute::Win)
        ).void
      end
      def initialize(
        id:,
        acceptance:,
        amount:,
        created_at:,
        disputed_transaction_id:,
        explanation:,
        idempotency_key:,
        loss:,
        rejection:,
        status:,
        type:,
        win:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            acceptance: T.nilable(Increase::Models::CardDispute::Acceptance),
            amount: T.nilable(Integer),
            created_at: Time,
            disputed_transaction_id: String,
            explanation: String,
            idempotency_key: T.nilable(String),
            loss: T.nilable(Increase::Models::CardDispute::Loss),
            rejection: T.nilable(Increase::Models::CardDispute::Rejection),
            status: Symbol,
            type: Symbol,
            win: T.nilable(Increase::Models::CardDispute::Win)
          }
        )
      end
      def to_hash
      end

      class Acceptance < Increase::BaseModel
        sig { returns(Time) }
        def accepted_at
        end

        sig { params(_: Time).returns(Time) }
        def accepted_at=(_)
        end

        sig { returns(String) }
        def card_dispute_id
        end

        sig { params(_: String).returns(String) }
        def card_dispute_id=(_)
        end

        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig { params(accepted_at: Time, card_dispute_id: String, transaction_id: String).void }
        def initialize(accepted_at:, card_dispute_id:, transaction_id:)
        end

        sig { override.returns({accepted_at: Time, card_dispute_id: String, transaction_id: String}) }
        def to_hash
        end
      end

      class Loss < Increase::BaseModel
        sig { returns(String) }
        def card_dispute_id
        end

        sig { params(_: String).returns(String) }
        def card_dispute_id=(_)
        end

        sig { returns(String) }
        def explanation
        end

        sig { params(_: String).returns(String) }
        def explanation=(_)
        end

        sig { returns(Time) }
        def lost_at
        end

        sig { params(_: Time).returns(Time) }
        def lost_at=(_)
        end

        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig do
          params(card_dispute_id: String, explanation: String, lost_at: Time, transaction_id: String).void
        end
        def initialize(card_dispute_id:, explanation:, lost_at:, transaction_id:)
        end

        sig do
          override.returns(
            {
              card_dispute_id: String,
              explanation: String,
              lost_at: Time,
              transaction_id: String
            }
          )
        end
        def to_hash
        end
      end

      class Rejection < Increase::BaseModel
        sig { returns(String) }
        def card_dispute_id
        end

        sig { params(_: String).returns(String) }
        def card_dispute_id=(_)
        end

        sig { returns(String) }
        def explanation
        end

        sig { params(_: String).returns(String) }
        def explanation=(_)
        end

        sig { returns(Time) }
        def rejected_at
        end

        sig { params(_: Time).returns(Time) }
        def rejected_at=(_)
        end

        sig { params(card_dispute_id: String, explanation: String, rejected_at: Time).void }
        def initialize(card_dispute_id:, explanation:, rejected_at:)
        end

        sig { override.returns({card_dispute_id: String, explanation: String, rejected_at: Time}) }
        def to_hash
        end
      end

      class Status < Increase::Enum
        abstract!

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        CARD_DISPUTE = :card_dispute

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Win < Increase::BaseModel
        sig { returns(String) }
        def card_dispute_id
        end

        sig { params(_: String).returns(String) }
        def card_dispute_id=(_)
        end

        sig { returns(Time) }
        def won_at
        end

        sig { params(_: Time).returns(Time) }
        def won_at=(_)
        end

        sig { params(card_dispute_id: String, won_at: Time).void }
        def initialize(card_dispute_id:, won_at:)
        end

        sig { override.returns({card_dispute_id: String, won_at: Time}) }
        def to_hash
        end
      end
    end
  end
end
