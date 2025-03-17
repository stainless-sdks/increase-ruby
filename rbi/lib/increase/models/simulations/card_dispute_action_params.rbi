# typed: strong

module Increase
  module Models
    module Simulations
      class CardDisputeActionParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { returns(T.nilable(String)) }
        def explanation
        end

        sig { params(_: String).returns(String) }
        def explanation=(_)
        end

        sig do
          params(
            status: Symbol,
            explanation: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(status:, explanation: nil, request_options: {})
        end

        sig do
          override.returns({status: Symbol, explanation: String, request_options: Increase::RequestOptions})
        end
        def to_hash
        end

        class Status < Increase::Enum
          abstract!

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
