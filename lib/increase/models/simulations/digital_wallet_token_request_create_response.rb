# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class DigitalWalletTokenRequestCreateResponse < Increase::BaseModel
        # @!attribute decline_reason
        #   If the simulated tokenization attempt was declined, this field contains details
        #     as to why.
        #
        #   @return [Symbol, Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason, nil]
        required :decline_reason,
                 enum: -> { Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason },
                 nil?: true

        # @!attribute digital_wallet_token_id
        #   If the simulated tokenization attempt was accepted, this field contains the id
        #     of the Digital Wallet Token that was created.
        #
        #   @return [String, nil]
        required :digital_wallet_token_id, String, nil?: true

        # @!attribute type
        #   A constant representing the object's type. For this resource it will always be
        #     `inbound_digital_wallet_token_request_simulation_result`.
        #
        #   @return [Symbol, Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type]
        required :type, enum: -> { Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type }

        # @!parse
        #   # The results of a Digital Wallet Token simulation.
        #   #
        #   # @param decline_reason [Symbol, Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::DeclineReason, nil]
        #   # @param digital_wallet_token_id [String, nil]
        #   # @param type [Symbol, Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse::Type]
        #   #
        #   def initialize(decline_reason:, digital_wallet_token_id:, type:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        # If the simulated tokenization attempt was declined, this field contains details
        #   as to why.
        class DeclineReason < Increase::Enum
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
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # A constant representing the object's type. For this resource it will always be
        #   `inbound_digital_wallet_token_request_simulation_result`.
        class Type < Increase::Enum
          INBOUND_DIGITAL_WALLET_TOKEN_REQUEST_SIMULATION_RESULT = :inbound_digital_wallet_token_request_simulation_result

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
