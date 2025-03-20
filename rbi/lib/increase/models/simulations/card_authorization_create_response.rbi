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
          params(_: T.nilable(T.any(Increase::Models::DeclinedTransaction, Increase::Util::AnyHash)))
            .returns(T.nilable(T.any(Increase::Models::DeclinedTransaction, Increase::Util::AnyHash)))
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
          params(_: T.nilable(T.any(Increase::Models::PendingTransaction, Increase::Util::AnyHash)))
            .returns(T.nilable(T.any(Increase::Models::PendingTransaction, Increase::Util::AnyHash)))
        end
        def pending_transaction=(_)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_card_authorization_simulation_result`.
        sig { returns(Increase::Models::Simulations::CardAuthorizationCreateResponse::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Increase::Models::Simulations::CardAuthorizationCreateResponse::Type::TaggedSymbol)
            .returns(Increase::Models::Simulations::CardAuthorizationCreateResponse::Type::TaggedSymbol)
        end
        def type=(_)
        end

        # The results of a Card Authorization simulation.
        sig do
          params(
            declined_transaction: T.nilable(Increase::Models::DeclinedTransaction),
            pending_transaction: T.nilable(Increase::Models::PendingTransaction),
            type: Increase::Models::Simulations::CardAuthorizationCreateResponse::Type::TaggedSymbol
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
                type: Increase::Models::Simulations::CardAuthorizationCreateResponse::Type::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_card_authorization_simulation_result`.
        module Type
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::Simulations::CardAuthorizationCreateResponse::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::Simulations::CardAuthorizationCreateResponse::Type::TaggedSymbol) }

          INBOUND_CARD_AUTHORIZATION_SIMULATION_RESULT =
            T.let(
              :inbound_card_authorization_simulation_result,
              Increase::Models::Simulations::CardAuthorizationCreateResponse::Type::TaggedSymbol
            )

          class << self
            sig do
              override
                .returns(T::Array[Increase::Models::Simulations::CardAuthorizationCreateResponse::Type::TaggedSymbol])
            end
            def values
            end
          end
        end
      end
    end
  end
end
