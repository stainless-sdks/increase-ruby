# frozen_string_literal: true

module Increase
  module Models
    class ExternalAccount < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_holder
      required :account_holder, Increase::Enum.new([:business, :individual, :unknown])

      # @!attribute [rw] account_number
      required :account_number, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] funding
      required :funding, Increase::Enum.new([:checking, :savings, :other])

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] routing_number
      required :routing_number, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:active, :archived])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:external_account])

      # @!attribute [rw] verification_status
      required :verification_status, Increase::Enum.new([:unverified, :pending, :verified])
    end
  end
end
