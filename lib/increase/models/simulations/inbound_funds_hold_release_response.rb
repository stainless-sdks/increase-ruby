# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class InboundFundsHoldReleaseResponse < Increase::BaseModel
        # @!attribute [rw] id
        #   The Inbound Funds Hold identifier.
        #   @return [String]
        required :id, String

        # @!attribute [rw] amount
        #   The held amount in the minor unit of the account's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] automatically_releases_at
        #   When the hold will be released automatically. Certain conditions may cause it to be released before this time.
        #   @return [Time]
        required :automatically_releases_at, Time

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold was created.
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
        #   @return [Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency]
        required :currency,
                 enum: -> {
                   Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency
                 }

        # @!attribute [rw] held_transaction_id
        #   The ID of the Transaction for which funds were held.
        #   @return [String]
        required :held_transaction_id, String

        # @!attribute [rw] pending_transaction_id
        #   The ID of the Pending Transaction representing the held funds.
        #   @return [String]
        required :pending_transaction_id, String

        # @!attribute [rw] released_at
        #   When the hold was released (if it has been released).
        #   @return [Time]
        required :released_at, Time

        # @!attribute [rw] status
        #   The status of the hold.
        #   @return [Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status]
        required :status, enum: -> { Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status }

        # @!attribute [rw] type
        #   A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
        #   @return [Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type]
        required :type, enum: -> { Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type }

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
        class Currency < Increase::Enum
          # Canadian Dollar (CAD)
          CAD = :CAD

          # Swiss Franc (CHF)
          CHF = :CHF

          # Euro (EUR)
          EUR = :EUR

          # British Pound (GBP)
          GBP = :GBP

          # Japanese Yen (JPY)
          JPY = :JPY

          # US Dollar (USD)
          USD = :USD
        end

        # The status of the hold.
        class Status < Increase::Enum
          # Funds are still being held.
          HELD = :held

          # Funds have been released.
          COMPLETE = :complete
        end

        # A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
        class Type < Increase::Enum
          INBOUND_FUNDS_HOLD = :inbound_funds_hold
        end

        # @!parse
        #   # Create a new instance of InboundFundsHoldReleaseResponse from a Hash of raw
        #   #   data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id The Inbound Funds Hold identifier.
        #   #   @option data [Integer] :amount The held amount in the minor unit of the account's currency. For dollars, for
        #   #     example, this is cents.
        #   #   @option data [String] :automatically_releases_at When the hold will be released automatically. Certain conditions may cause it to
        #   #     be released before this time.
        #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold
        #   #     was created.
        #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
        #   #     currency.
        #   #   @option data [String] :held_transaction_id The ID of the Transaction for which funds were held.
        #   #   @option data [String] :pending_transaction_id The ID of the Pending Transaction representing the held funds.
        #   #   @option data [String] :released_at When the hold was released (if it has been released).
        #   #   @option data [String] :status The status of the hold.
        #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
        #   #     `inbound_funds_hold`.
        #   def initialize(data = {}) = super
      end
    end
  end
end
