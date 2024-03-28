# frozen_string_literal: true

module Increase
  module Models
    class DigitalWalletToken
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] card_id
      required :card_id, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:active, :inactive, :suspended, :deactivated])

      # @!attribute [rw] token_requestor
      required :token_requestor, Increase::Enum.new([:apple_pay, :google_pay, :unknown])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:digital_wallet_token])
    end
  end
end
