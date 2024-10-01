# frozen_string_literal: true

module Increase
  module Models
    class DigitalWalletTokenRequestCreateResponse < BaseModel
      # @!attribute [rw] decline_reason
      #   If the simulated tokenization attempt was declined, this field contains details as to why.
      #   @return [Symbol, Increase::Models::DigitalWalletTokenRequestCreateResponse::DeclineReason]
      required :decline_reason,
               enum: -> { Increase::Models::DigitalWalletTokenRequestCreateResponse::DeclineReason }

      # @!attribute [rw] digital_wallet_token_id
      #   If the simulated tokenization attempt was accepted, this field contains the id of the Digital Wallet Token that was created.
      #   @return [String]
      required :digital_wallet_token_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_digital_wallet_token_request_simulation_result`.
      #   @return [Symbol, Increase::Models::DigitalWalletTokenRequestCreateResponse::Type]
      required :type, enum: -> { Increase::Models::DigitalWalletTokenRequestCreateResponse::Type }

      # If the simulated tokenization attempt was declined, this field contains details as to why.
      class DeclineReason < Increase::Enum
        # The card is not active.
        CARD_NOT_ACTIVE = :card_not_active

        # The card does not have a two-factor authentication method.
        NO_VERIFICATION_METHOD = :no_verification_method

        # Your webhook timed out when evaluating the token provisioning attempt.
        WEBHOOK_TIMED_OUT = :webhook_timed_out

        # Your webhook declined the token provisioning attempt.
        WEBHOOK_DECLINED = :webhook_declined
      end

      # A constant representing the object's type. For this resource it will always be `inbound_digital_wallet_token_request_simulation_result`.
      class Type < Increase::Enum
        INBOUND_DIGITAL_WALLET_TOKEN_REQUEST_SIMULATION_RESULT = :inbound_digital_wallet_token_request_simulation_result
      end
    end
  end
end
