# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # lockbox => {
    #   id: String,
    #   account_id: String,
    #   address: Increase::Models::Lockbox::Address,
    #   created_at: Time,
    #   description: String,
    #   **_
    # }
    # ```
    class Lockbox < Increase::BaseModel
      # @!attribute id
      #   The Lockbox identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The identifier for the Account checks sent to this lockbox will be deposited
      #     into.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute address
      #   The mailing address for the Lockbox.
      #
      #   @return [Increase::Models::Lockbox::Address]
      required :address, -> { Increase::Models::Lockbox::Address }

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Lockbox
      #     was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   The description you choose for the Lockbox.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across
      #     Increase and is used to ensure that a request is only processed once. Learn more
      #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute recipient_name
      #   The recipient name you choose for the Lockbox.
      #
      #   @return [String, nil]
      required :recipient_name, String, nil?: true

      # @!attribute status
      #   This indicates if mail can be sent to this address.
      #
      #   @return [Symbol, Increase::Models::Lockbox::Status]
      required :status, enum: -> { Increase::Models::Lockbox::Status }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `lockbox`.
      #
      #   @return [Symbol, Increase::Models::Lockbox::Type]
      required :type, enum: -> { Increase::Models::Lockbox::Type }

      # @!parse
      #   # Lockboxes are physical locations that can receive mail containing paper checks.
      #   #   Increase will automatically create a Check Deposit for checks received this way.
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param address [Increase::Models::Lockbox::Address]
      #   # @param created_at [String]
      #   # @param description [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param recipient_name [String, nil]
      #   # @param status [String]
      #   # @param type [String]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     address:,
      #     created_at:,
      #     description:,
      #     idempotency_key:,
      #     recipient_name:,
      #     status:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # address => {
      #   city: String,
      #   line1: String,
      #   line2: String,
      #   postal_code: String,
      #   recipient: String
      # }
      # ```
      class Address < Increase::BaseModel
        # @!attribute city
        #   The city of the address.
        #
        #   @return [String]
        required :city, String

        # @!attribute line1
        #   The first line of the address.
        #
        #   @return [String]
        required :line1, String

        # @!attribute line2
        #   The second line of the address.
        #
        #   @return [String]
        required :line2, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute recipient
        #   The recipient line of the address. This will include the recipient name you
        #     provide when creating the address, as well as an ATTN suffix to help route the
        #     mail to your lockbox. Mail senders must include this ATTN line to receive mail
        #     at this Lockbox.
        #
        #   @return [String, nil]
        required :recipient, String, nil?: true

        # @!attribute state
        #   The two-letter United States Postal Service (USPS) abbreviation for the state of
        #     the address.
        #
        #   @return [String]
        required :state, String

        # @!parse
        #   # The mailing address for the Lockbox.
        #   #
        #   # @param city [String]
        #   # @param line1 [String]
        #   # @param line2 [String]
        #   # @param postal_code [String]
        #   # @param recipient [String, nil]
        #   # @param state [String]
        #   #
        #   def initialize(city:, line1:, line2:, postal_code:, recipient:, state:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # This indicates if mail can be sent to this address.
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :inactive
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = :active

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = :inactive

        finalize!
      end

      # A constant representing the object's type. For this resource it will always be
      #   `lockbox`.
      #
      # @example
      # ```ruby
      # case type
      # in :lockbox
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        LOCKBOX = :lockbox

        finalize!
      end
    end
  end
end
