# typed: strong

module Increase
  module Models
    class CardDisputeCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The Transaction you wish to dispute. This Transaction must have a `source_type`
      #   of `card_settlement`.
      sig { returns(String) }
      def disputed_transaction_id
      end

      sig { params(_: String).returns(String) }
      def disputed_transaction_id=(_)
      end

      # Why you are disputing this Transaction.
      sig { returns(String) }
      def explanation
      end

      sig { params(_: String).returns(String) }
      def explanation=(_)
      end

      # The monetary amount of the part of the transaction that is being disputed. This
      #   is optional and will default to the full amount of the transaction if not
      #   provided. If provided, the amount must be less than or equal to the amount of
      #   the transaction.
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig do
        params(
          disputed_transaction_id: String,
          explanation: String,
          amount: Integer,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(disputed_transaction_id:, explanation:, amount: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              disputed_transaction_id: String,
              explanation: String,
              amount: Integer,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
