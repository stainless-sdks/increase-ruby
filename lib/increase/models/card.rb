# frozen_string_literal: true

module Increase
  module Models
    class Card
      class BillingAddress
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] city
        required :city, String

        # @!attribute [rw] line1
        required :line1, String

        # @!attribute [rw] line2
        required :line2, String

        # @!attribute [rw] postal_code
        required :postal_code, String

        # @!attribute [rw] state
        required :state, String
      end

      class DigitalWallet
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] digital_card_profile_id
        required :digital_card_profile_id, String

        # @!attribute [rw] email
        required :email, String

        # @!attribute [rw] phone
        required :phone, String
      end

      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] billing_address
      required :billing_address, -> { Increase::Models::Card::BillingAddress }

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] digital_wallet
      required :digital_wallet, -> { Increase::Models::Card::DigitalWallet }

      # @!attribute [rw] entity_id
      required :entity_id, String

      # @!attribute [rw] expiration_month
      required :expiration_month, Integer

      # @!attribute [rw] expiration_year
      required :expiration_year, Integer

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] last4
      required :last4, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:active, :disabled, :canceled])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:card])
    end
  end
end
