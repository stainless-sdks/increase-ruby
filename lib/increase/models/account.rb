# frozen_string_literal: true

module Increase
  module Models
    class Account
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] bank
      required :bank, Increase::Enum.new([:blue_ridge_bank, :first_internet_bank])

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

      # @!attribute [rw] entity_id
      required :entity_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] informational_entity_id
      required :informational_entity_id, String

      # @!attribute [rw] interest_accrued
      required :interest_accrued, String

      # @!attribute [rw] interest_accrued_at
      required :interest_accrued_at, String

      # @!attribute [rw] interest_rate
      required :interest_rate, String

      # @!attribute [rw] name_
      required :name_, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:open, :closed])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:account])
    end
  end
end
