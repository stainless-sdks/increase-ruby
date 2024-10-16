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
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] description
      #   The description you choose for the Lockbox.
      #   @return [String]
      required :description, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] recipient_name
      #   The recipient name you choose for the Lockbox.
      #   @return [String]
      required :recipient_name, String

      # @!attribute [rw] status
      #   This indicates if mail can be sent to this address.
      #   @return [Symbol, Increase::Models::Lockbox::Status]
      required :status, enum: -> { Increase::Models::Lockbox::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `lockbox`.
      #   @return [Symbol, Increase::Models::Lockbox::Type]
      required :type, enum: -> { Increase::Models::Lockbox::Type }

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

        # @!attribute [rw] recipient
        #   The recipient line of the address. This will include the recipient name you provide when creating the address, as well as an ATTN suffix to help route the mail to your lockbox. Mail senders must include this ATTN line to receive mail at this Lockbox.
        #   @return [String]
        required :recipient, String

        # @!attribute [rw] state
        #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
        #   @return [String]
        required :state, String

        # @!parse
        #   # Create a new instance of Address from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :city The city of the address.
        #   #   @option data [String] :line1 The first line of the address.
        #   #   @option data [String] :line2 The second line of the address.
        #   #   @option data [String] :postal_code The postal code of the address.
        #   #   @option data [String] :recipient The recipient line of the address. This will include the recipient name you
        #   #     provide when creating the address, as well as an ATTN suffix to help route the
        #   #     mail to your lockbox. Mail senders must include this ATTN line to receive mail
        #   #     at this Lockbox.
        #   #   @option data [String] :state The two-letter United States Postal Service (USPS) abbreviation for the state of
        #   #     the address.
        #   def initialize(data = {}) = super
      end

      # This indicates if mail can be sent to this address.
      class Status < Increase::Enum
        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = :active

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = :inactive
      end

      # A constant representing the object's type. For this resource it will always be `lockbox`.
      class Type < Increase::Enum
        LOCKBOX = :lockbox
      end

      # @!parse
      #   # Create a new instance of Lockbox from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The Lockbox identifier.
      #   #   @option data [String] :account_id The identifier for the Account checks sent to this lockbox will be deposited
      #   #     into.
      #   #   @option data [Object] :address The mailing address for the Lockbox.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Lockbox
      #   #     was created.
      #   #   @option data [String] :description The description you choose for the Lockbox.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [String] :recipient_name The recipient name you choose for the Lockbox.
      #   #   @option data [String] :status This indicates if mail can be sent to this address.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `lockbox`.
      #   def initialize(data = {}) = super
    end
  end
end
