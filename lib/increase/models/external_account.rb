# frozen_string_literal: true

module Increase
  module Models
    class ExternalAccount < BaseModel
      # @!attribute [rw] id
      #   The External Account's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_holder
      #   The type of entity that owns the External Account.
      #   @return [Symbol]
      required :account_holder, Increase::Enum.new(:business, :individual, :unknown)

      # @!attribute [rw] account_number
      #   The destination account number.
      #   @return [String]
      required :account_number, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the External Account was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] description
      #   The External Account's description for display purposes.
      #   @return [String]
      required :description, String

      # @!attribute [rw] funding
      #   The type of the account to which the transfer will be sent.
      #   @return [Symbol]
      required :funding, Increase::Enum.new(:checking, :savings, :other)

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] status
      #   The External Account's status.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:active, :archived)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `external_account`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:external_account)

      # @!attribute [rw] verification_status
      #   If you have verified ownership of the External Account.
      #   @return [Symbol]
      required :verification_status, Increase::Enum.new(:unverified, :pending, :verified)
    end
  end
end
