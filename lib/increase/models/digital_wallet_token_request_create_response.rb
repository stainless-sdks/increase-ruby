# frozen_string_literal: true

module Increase
  module Models
    class DigitalWalletTokenRequestCreateResponse
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] decline_reason
      required :decline_reason,
               Increase::Enum.new(
                 [
                   :card_not_active,
                   :no_verification_method,
                   :webhook_timed_out,
                   :webhook_declined
                 ]
               )

      # @!attribute [rw] digital_wallet_token_id
      required :digital_wallet_token_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:inbound_digital_wallet_token_request_simulation_result])
    end
  end
end
