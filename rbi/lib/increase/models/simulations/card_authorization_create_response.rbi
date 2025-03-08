# typed: strong

module Increase
  module Models
    module Simulations
      class CardAuthorizationCreateResponse < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction)) }
        def declined_transaction
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction))
            .returns(T.nilable(Increase::Models::DeclinedTransaction))
        end
        def declined_transaction=(_)
        end

        sig { returns(T.nilable(Increase::Models::PendingTransaction)) }
        def pending_transaction
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction))
            .returns(T.nilable(Increase::Models::PendingTransaction))
        end
        def pending_transaction=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(
              declined_transaction: T.nilable(Increase::Models::DeclinedTransaction),
              pending_transaction: T.nilable(Increase::Models::PendingTransaction),
              type: Symbol
            )
            .returns(T.attached_class)
        end
        def self.new(declined_transaction:, pending_transaction:, type:)
        end

        sig do
          override
            .returns(
              {
                declined_transaction: T.nilable(Increase::Models::DeclinedTransaction),
                pending_transaction: T.nilable(Increase::Models::PendingTransaction),
                type: Symbol
              }
            )
        end
        def to_hash
        end

        class Type < Increase::Enum
          abstract!

          INBOUND_CARD_AUTHORIZATION_SIMULATION_RESULT = :inbound_card_authorization_simulation_result

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
