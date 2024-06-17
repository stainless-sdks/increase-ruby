# frozen_string_literal: true

module Increase
  module Models
    class DigitalWalletTokenRequestCreateResponse < BaseModel
      # @!attribute [rw] decline_reason
      #   If the simulated tokenization attempt was declined, this field contains details as to why.
      #   @return [Symbol]
      required :decline_reason,
               Increase::Enum.new(:card_not_active, :no_verification_method, :webhook_timed_out, :webhook_declined)

      # @!attribute [rw] digital_wallet_token_id
      #   If the simulated tokenization attempt was accepted, this field contains the id of the Digital Wallet Token that was created.
      #   @return [String]
      required :digital_wallet_token_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_digital_wallet_token_request_simulation_result`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_digital_wallet_token_request_simulation_result)
    end
  end
end
