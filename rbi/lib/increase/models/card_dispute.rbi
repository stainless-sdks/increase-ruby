# typed: strong

module Increase
  module Models
    class CardDispute < Increase::Internal::Type::BaseModel
      # #/components/schemas/card_dispute/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/card_dispute/properties/acceptance
      sig { returns(T.nilable(Increase::Models::CardDispute::Acceptance)) }
      attr_reader :acceptance

      sig do
        params(
          acceptance: T.nilable(T.any(Increase::Models::CardDispute::Acceptance, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :acceptance

      # #/components/schemas/card_dispute/properties/amount
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount

      # #/components/schemas/card_dispute/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/card_dispute/properties/disputed_transaction_id
      sig { returns(String) }
      attr_accessor :disputed_transaction_id

      # #/components/schemas/card_dispute/properties/explanation
      sig { returns(String) }
      attr_accessor :explanation

      # #/components/schemas/card_dispute/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/card_dispute/properties/loss
      sig { returns(T.nilable(Increase::Models::CardDispute::Loss)) }
      attr_reader :loss

      sig { params(loss: T.nilable(T.any(Increase::Models::CardDispute::Loss, Increase::Internal::AnyHash))).void }
      attr_writer :loss

      # #/components/schemas/card_dispute/properties/rejection
      sig { returns(T.nilable(Increase::Models::CardDispute::Rejection)) }
      attr_reader :rejection

      sig do
        params(rejection: T.nilable(T.any(Increase::Models::CardDispute::Rejection, Increase::Internal::AnyHash)))
          .void
      end
      attr_writer :rejection

      # #/components/schemas/card_dispute/properties/status
      sig { returns(Increase::Models::CardDispute::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/card_dispute/properties/type
      sig { returns(Increase::Models::CardDispute::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/card_dispute/properties/win
      sig { returns(T.nilable(Increase::Models::CardDispute::Win)) }
      attr_reader :win

      sig { params(win: T.nilable(T.any(Increase::Models::CardDispute::Win, Increase::Internal::AnyHash))).void }
      attr_writer :win

      # #/components/schemas/card_dispute
      sig do
        params(
          id: String,
          acceptance: T.nilable(T.any(Increase::Models::CardDispute::Acceptance, Increase::Internal::AnyHash)),
          amount: T.nilable(Integer),
          created_at: Time,
          disputed_transaction_id: String,
          explanation: String,
          idempotency_key: T.nilable(String),
          loss: T.nilable(T.any(Increase::Models::CardDispute::Loss, Increase::Internal::AnyHash)),
          rejection: T.nilable(T.any(Increase::Models::CardDispute::Rejection, Increase::Internal::AnyHash)),
          status: Increase::Models::CardDispute::Status::OrSymbol,
          type: Increase::Models::CardDispute::Type::OrSymbol,
          win: T.nilable(T.any(Increase::Models::CardDispute::Win, Increase::Internal::AnyHash))
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      ); end
      sig do
        override
          .returns(
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
              status: Increase::Models::CardDispute::Status::TaggedSymbol,
              type: Increase::Models::CardDispute::Type::TaggedSymbol,
              win: T.nilable(Increase::Models::CardDispute::Win)
            }
          )
      end
      def to_hash; end

      class Acceptance < Increase::Internal::Type::BaseModel
        # #/components/schemas/card_dispute/properties/acceptance/anyOf/0/properties/accepted_at
        sig { returns(Time) }
        attr_accessor :accepted_at

        # #/components/schemas/card_dispute/properties/acceptance/anyOf/0/properties/card_dispute_id
        sig { returns(String) }
        attr_accessor :card_dispute_id

        # #/components/schemas/card_dispute/properties/acceptance/anyOf/0/properties/transaction_id
        sig { returns(String) }
        attr_accessor :transaction_id

        # #/components/schemas/card_dispute/properties/acceptance
        sig do
          params(accepted_at: Time, card_dispute_id: String, transaction_id: String).returns(T.attached_class)
        end
        def self.new(accepted_at:, card_dispute_id:, transaction_id:); end

        sig { override.returns({accepted_at: Time, card_dispute_id: String, transaction_id: String}) }
        def to_hash; end
      end

      class Loss < Increase::Internal::Type::BaseModel
        # #/components/schemas/card_dispute/properties/loss/anyOf/0/properties/card_dispute_id
        sig { returns(String) }
        attr_accessor :card_dispute_id

        # #/components/schemas/card_dispute/properties/loss/anyOf/0/properties/explanation
        sig { returns(String) }
        attr_accessor :explanation

        # #/components/schemas/card_dispute/properties/loss/anyOf/0/properties/lost_at
        sig { returns(Time) }
        attr_accessor :lost_at

        # #/components/schemas/card_dispute/properties/loss/anyOf/0/properties/transaction_id
        sig { returns(String) }
        attr_accessor :transaction_id

        # #/components/schemas/card_dispute/properties/loss
        sig do
          params(card_dispute_id: String, explanation: String, lost_at: Time, transaction_id: String)
            .returns(T.attached_class)
        end
        def self.new(card_dispute_id:, explanation:, lost_at:, transaction_id:); end

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
        def to_hash; end
      end

      class Rejection < Increase::Internal::Type::BaseModel
        # #/components/schemas/card_dispute/properties/rejection/anyOf/0/properties/card_dispute_id
        sig { returns(String) }
        attr_accessor :card_dispute_id

        # #/components/schemas/card_dispute/properties/rejection/anyOf/0/properties/explanation
        sig { returns(String) }
        attr_accessor :explanation

        # #/components/schemas/card_dispute/properties/rejection/anyOf/0/properties/rejected_at
        sig { returns(Time) }
        attr_accessor :rejected_at

        # #/components/schemas/card_dispute/properties/rejection
        sig do
          params(card_dispute_id: String, explanation: String, rejected_at: Time).returns(T.attached_class)
        end
        def self.new(card_dispute_id:, explanation:, rejected_at:); end

        sig { override.returns({card_dispute_id: String, explanation: String, rejected_at: Time}) }
        def to_hash; end
      end

      # #/components/schemas/card_dispute/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardDispute::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::CardDispute::Status::TaggedSymbol) }

        # The Card Dispute is pending review.
        PENDING_REVIEWING = T.let(:pending_reviewing, Increase::Models::CardDispute::Status::TaggedSymbol)

        # Increase has requested more information related to the Card Dispute from you.
        PENDING_USER_INFORMATION =
          T.let(:pending_user_information, Increase::Models::CardDispute::Status::TaggedSymbol)

        # The Card Dispute has been accepted and your funds have been returned. The card dispute will eventually transition into `won` or `lost` depending on the outcome.
        ACCEPTED = T.let(:accepted, Increase::Models::CardDispute::Status::TaggedSymbol)

        # The Card Dispute has been rejected.
        REJECTED = T.let(:rejected, Increase::Models::CardDispute::Status::TaggedSymbol)

        # The Card Dispute has been lost and funds previously credited from the acceptance have been debited.
        LOST = T.let(:lost, Increase::Models::CardDispute::Status::TaggedSymbol)

        # The Card Dispute has been won and no further action can be taken.
        WON = T.let(:won, Increase::Models::CardDispute::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CardDispute::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/card_dispute/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardDispute::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::CardDispute::Type::TaggedSymbol) }

        CARD_DISPUTE = T.let(:card_dispute, Increase::Models::CardDispute::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CardDispute::Type::TaggedSymbol]) }
        def self.values; end
      end

      class Win < Increase::Internal::Type::BaseModel
        # #/components/schemas/card_dispute/properties/win/anyOf/0/properties/card_dispute_id
        sig { returns(String) }
        attr_accessor :card_dispute_id

        # #/components/schemas/card_dispute/properties/win/anyOf/0/properties/won_at
        sig { returns(Time) }
        attr_accessor :won_at

        # #/components/schemas/card_dispute/properties/win
        sig { params(card_dispute_id: String, won_at: Time).returns(T.attached_class) }
        def self.new(card_dispute_id:, won_at:); end

        sig { override.returns({card_dispute_id: String, won_at: Time}) }
        def to_hash; end
      end
    end
  end
end
