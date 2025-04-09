# typed: strong

module Increase
  module Models
    module Simulations
      class DigitalWalletTokenRequestCreateResponse < Increase::Internal::Type::BaseModel
        # #/components/schemas/inbound_digital_wallet_token_request_simulation_result/properties/decline_reason
        sig do
          returns(
            T.nilable(
              Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason::TaggedSymbol
            )
          )
        end
        attr_accessor :decline_reason

        # #/components/schemas/inbound_digital_wallet_token_request_simulation_result/properties/digital_wallet_token_id
        sig { returns(T.nilable(String)) }
        attr_accessor :digital_wallet_token_id

        # #/components/schemas/inbound_digital_wallet_token_request_simulation_result/properties/type
        sig { returns(Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type::TaggedSymbol) }
        attr_accessor :type

        # #/paths//simulations/digital_wallet_token_requests/post/responses/200/content/application/json/schema
        sig do
          params(
            decline_reason: T.nilable(Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason::OrSymbol),
            digital_wallet_token_id: T.nilable(String),
            type: Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(decline_reason:, digital_wallet_token_id:, type:); end

        sig do
          override
            .returns(
              {
                decline_reason: T.nilable(
                  Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason::TaggedSymbol
                ),
                digital_wallet_token_id: T.nilable(String),
                type: Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type::TaggedSymbol
              }
            )
        end
        def to_hash; end

        # #/components/schemas/inbound_digital_wallet_token_request_simulation_result/properties/decline_reason
        module DeclineReason
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason::TaggedSymbol
              )
            end

          # The card is not active.
          CARD_NOT_ACTIVE =
            T.let(
              :card_not_active,
              Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason::TaggedSymbol
            )

          # The card does not have a two-factor authentication method.
          NO_VERIFICATION_METHOD =
            T.let(
              :no_verification_method,
              Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason::TaggedSymbol
            )

          # Your webhook timed out when evaluating the token provisioning attempt.
          WEBHOOK_TIMED_OUT =
            T.let(
              :webhook_timed_out,
              Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason::TaggedSymbol
            )

          # Your webhook declined the token provisioning attempt.
          WEBHOOK_DECLINED =
            T.let(
              :webhook_declined,
              Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # #/components/schemas/inbound_digital_wallet_token_request_simulation_result/properties/type
        module Type
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type::TaggedSymbol
              )
            end

          INBOUND_DIGITAL_WALLET_TOKEN_REQUEST_SIMULATION_RESULT =
            T.let(
              :inbound_digital_wallet_token_request_simulation_result,
              Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type::TaggedSymbol]
              )
          end
          def self.values; end
        end
      end
    end
  end
end
