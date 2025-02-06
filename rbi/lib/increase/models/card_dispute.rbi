# typed: strong

module Increase
  module Models
    class CardDispute < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Increase::Models::CardDispute::Acceptance)) }
      attr_accessor :acceptance

      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :disputed_transaction_id

      sig { returns(String) }
      attr_accessor :explanation

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T.nilable(Increase::Models::CardDispute::Loss)) }
      attr_accessor :loss

      sig { returns(T.nilable(Increase::Models::CardDispute::Rejection)) }
      attr_accessor :rejection

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(Increase::Models::CardDispute::Win)) }
      attr_accessor :win

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
        attr_accessor :accepted_at

        sig { returns(String) }
        attr_accessor :card_dispute_id

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { params(accepted_at: Time, card_dispute_id: String, transaction_id: String).void }
        def initialize(accepted_at:, card_dispute_id:, transaction_id:)
        end

        sig { override.returns({accepted_at: Time, card_dispute_id: String, transaction_id: String}) }
        def to_hash
        end
      end

      class Loss < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :card_dispute_id

        sig { returns(String) }
        attr_accessor :explanation

        sig { returns(Time) }
        attr_accessor :lost_at

        sig { returns(String) }
        attr_accessor :transaction_id

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
        attr_accessor :card_dispute_id

        sig { returns(String) }
        attr_accessor :explanation

        sig { returns(Time) }
        attr_accessor :rejected_at

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
        attr_accessor :card_dispute_id

        sig { returns(Time) }
        attr_accessor :won_at

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
