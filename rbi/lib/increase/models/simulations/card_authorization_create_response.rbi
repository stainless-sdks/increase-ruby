# typed: strong

module Increase
  module Models
    module Simulations
      class CardAuthorizationCreateResponse < Increase::BaseModel
        # If the authorization attempt fails, this will contain the resulting
        #   [Declined Transaction](#declined-transactions) object. The Declined
        #   Transaction's `source` will be of `category: card_decline`.
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction)) }
        def declined_transaction
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction))
            .returns(T.nilable(Increase::Models::DeclinedTransaction))
        end
        def declined_transaction=(_)
        end

        # If the authorization attempt succeeds, this will contain the resulting Pending
        #   Transaction object. The Pending Transaction's `source` will be of
        #   `category: card_authorization`.
        sig { returns(T.nilable(Increase::Models::PendingTransaction)) }
        def pending_transaction
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction))
            .returns(T.nilable(Increase::Models::PendingTransaction))
        end
        def pending_transaction=(_)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_card_authorization_simulation_result`.
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # The results of a Card Authorization simulation.
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

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_card_authorization_simulation_result`.
        class Type < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          INBOUND_CARD_AUTHORIZATION_SIMULATION_RESULT = :inbound_card_authorization_simulation_result
        end
      end
    end
  end
end
