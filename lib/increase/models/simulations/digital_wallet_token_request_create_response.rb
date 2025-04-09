# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::DigitalWalletTokenRequests#create
      class DigitalWalletTokenRequestCreateResponse < Increase::Internal::Type::BaseModel
        # @!attribute decline_reason
        #   #/components/schemas/inbound_digital_wallet_token_request_simulation_result/properties/decline_reason
        #
        #   @return [Symbol, Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason, nil]
        required :decline_reason,
                 enum: -> { Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason },
                 nil?: true

        # @!attribute digital_wallet_token_id
        #   #/components/schemas/inbound_digital_wallet_token_request_simulation_result/properties/digital_wallet_token_id
        #
        #   @return [String, nil]
        required :digital_wallet_token_id, String, nil?: true

        # @!attribute type
        #   #/components/schemas/inbound_digital_wallet_token_request_simulation_result/properties/type
        #
        #   @return [Symbol, Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type]
        required :type, enum: -> { Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type }

        # @!parse
        #   # #/paths//simulations/digital_wallet_token_requests/post/responses/200/content/application/json/schema
        #   #
        #   # @param decline_reason [Symbol, Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason, nil]
        #   # @param digital_wallet_token_id [String, nil]
        #   # @param type [Symbol, Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type]
        #   #
        #   def initialize(decline_reason:, digital_wallet_token_id:, type:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_digital_wallet_token_request_simulation_result/properties/decline_reason
        #
        # @see Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse#decline_reason
        module DeclineReason
          extend Increase::Internal::Type::Enum

          # The card is not active.
          CARD_NOT_ACTIVE = :card_not_active

          # The card does not have a two-factor authentication method.
          NO_VERIFICATION_METHOD = :no_verification_method

          # Your webhook timed out when evaluating the token provisioning attempt.
          WEBHOOK_TIMED_OUT = :webhook_timed_out

          # Your webhook declined the token provisioning attempt.
          WEBHOOK_DECLINED = :webhook_declined

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/inbound_digital_wallet_token_request_simulation_result/properties/type
        #
        # @see Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse#type
        module Type
          extend Increase::Internal::Type::Enum

          INBOUND_DIGITAL_WALLET_TOKEN_REQUEST_SIMULATION_RESULT =
            :inbound_digital_wallet_token_request_simulation_result

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
