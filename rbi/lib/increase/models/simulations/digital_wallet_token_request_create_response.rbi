# typed: strong

module Increase
  module Models
    module Simulations
      class DigitalWalletTokenRequestCreateResponse < Increase::BaseModel
        sig { returns(T.nilable(Symbol)) }
        def decline_reason
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def decline_reason=(_)
        end

        sig { returns(T.nilable(String)) }
        def digital_wallet_token_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def digital_wallet_token_id=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { params(decline_reason: T.nilable(Symbol), digital_wallet_token_id: T.nilable(String), type: Symbol).void }
        def initialize(decline_reason:, digital_wallet_token_id:, type:)
        end

        sig do
          override
            .returns({decline_reason: T.nilable(Symbol), digital_wallet_token_id: T.nilable(String), type: Symbol})
        end
        def to_hash
        end

        class DeclineReason < Increase::Enum
          abstract!

          # The card is not active.
          CARD_NOT_ACTIVE = T.let(:card_not_active, T.nilable(Symbol))

          # The card does not have a two-factor authentication method.
          NO_VERIFICATION_METHOD = T.let(:no_verification_method, T.nilable(Symbol))

          # Your webhook timed out when evaluating the token provisioning attempt.
          WEBHOOK_TIMED_OUT = T.let(:webhook_timed_out, T.nilable(Symbol))

          # Your webhook declined the token provisioning attempt.
          WEBHOOK_DECLINED = T.let(:webhook_declined, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Type < Increase::Enum
          abstract!

          INBOUND_DIGITAL_WALLET_TOKEN_REQUEST_SIMULATION_RESULT = :inbound_digital_wallet_token_request_simulation_result

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
