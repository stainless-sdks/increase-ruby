# frozen_string_literal: true

module Increase
  module Models
    class Lockbox < BaseModel
      # @!attribute [rw] id
      #   The Lockbox identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the Account checks sent to this lockbox will be deposited into.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] address
      #   The mailing address for the Lockbox.
      #   @return [Increase::Models::Lockbox::Address]
      required :address, -> { Increase::Models::Lockbox::Address }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Lockbox was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] description
      #   The description you choose for the Lockbox.
      #   @return [String]
      required :description, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] status
      #   This indicates if mail can be sent to this address.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:active, :inactive)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `lockbox`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:lockbox)

      class Address < BaseModel
        # @!attribute [rw] city
        #   The city of the address.
        #   @return [String]
        required :city, String

        # @!attribute [rw] line1
        #   The first line of the address.
        #   @return [String]
        required :line1, String

        # @!attribute [rw] line2
        #   The second line of the address.
        #   @return [String]
        required :line2, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        required :postal_code, String

        # @!attribute [rw] state
        #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
        #   @return [String]
        required :state, String
      end
    end
  end
end
