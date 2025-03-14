# typed: strong

module Increase
  module Models
    module Simulations
      class CardSettlementCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The identifier of the Card to create a settlement on.
        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        # The identifier of the Pending Transaction for the Card Authorization you wish to
        #   settle.
        sig { returns(String) }
        def pending_transaction_id
        end

        sig { params(_: String).returns(String) }
        def pending_transaction_id=(_)
        end

        # The amount to be settled. This defaults to the amount of the Pending Transaction
        #   being settled.
        sig { returns(T.nilable(Integer)) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig do
          params(
            card_id: String,
            pending_transaction_id: String,
            amount: Integer,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(card_id:, pending_transaction_id:, amount: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                card_id: String,
                pending_transaction_id: String,
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
end
