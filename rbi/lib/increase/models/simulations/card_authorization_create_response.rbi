# typed: strong

module Increase
  module Models
    module Simulations
      class CardAuthorizationCreateResponse < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction)) }
        attr_accessor :declined_transaction

        sig { returns(T.nilable(Increase::Models::PendingTransaction)) }
        attr_accessor :pending_transaction

        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          params(
            declined_transaction: T.nilable(Increase::Models::DeclinedTransaction),
            pending_transaction: T.nilable(Increase::Models::PendingTransaction),
            type: Symbol
          ).void
        end
        def initialize(declined_transaction:, pending_transaction:, type:)
        end

        sig do
          override.returns(
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
