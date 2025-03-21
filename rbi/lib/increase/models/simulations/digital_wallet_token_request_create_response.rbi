# typed: strong

module Increase
  module Models
    module Simulations
      class DigitalWalletTokenRequestCreateResponse < Increase::BaseModel
        # If the simulated tokenization attempt was declined, this field contains details
        #   as to why.
        sig { returns(T.nilable(Symbol)) }
        def decline_reason
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def decline_reason=(_)
        end

        # If the simulated tokenization attempt was accepted, this field contains the id
        #   of the Digital Wallet Token that was created.
        sig { returns(T.nilable(String)) }
        def digital_wallet_token_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def digital_wallet_token_id=(_)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_digital_wallet_token_request_simulation_result`.
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # The results of a Digital Wallet Token simulation.
        sig do
          params(decline_reason: T.nilable(Symbol), digital_wallet_token_id: T.nilable(String), type: Symbol)
            .returns(T.attached_class)
        end
        def self.new(decline_reason:, digital_wallet_token_id:, type:)
        end

        sig do
          override
            .returns({
                       decline_reason: T.nilable(Symbol),
                       digital_wallet_token_id: T.nilable(String),
                       type: Symbol
                     })
        end
        def to_hash
        end

        # If the simulated tokenization attempt was declined, this field contains details
        #   as to why.
        class DeclineReason < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # The card is not active.
          CARD_NOT_ACTIVE = :card_not_active

          # The card does not have a two-factor authentication method.
          NO_VERIFICATION_METHOD = :no_verification_method

          # Your webhook timed out when evaluating the token provisioning attempt.
          WEBHOOK_TIMED_OUT = :webhook_timed_out

          # Your webhook declined the token provisioning attempt.
          WEBHOOK_DECLINED = :webhook_declined
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_digital_wallet_token_request_simulation_result`.
        class Type < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          INBOUND_DIGITAL_WALLET_TOKEN_REQUEST_SIMULATION_RESULT = :inbound_digital_wallet_token_request_simulation_result
        end
      end
    end
  end
end
