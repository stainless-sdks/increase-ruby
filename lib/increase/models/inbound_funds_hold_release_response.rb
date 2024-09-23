# frozen_string_literal: true

module Increase
  module Models
    class InboundFundsHoldReleaseResponse < BaseModel
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
      #   @return [DateTime]
      required :automatically_releases_at, DateTime

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold was created.
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
      #   One of the constants defined in {Increase::Models::InboundFundsHoldReleaseResponse::Currency}
      #   @return [Symbol]
      required :currency, enum: -> { Increase::Models::InboundFundsHoldReleaseResponse::Currency }

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
      #   @return [DateTime]
      required :released_at, DateTime

      # @!attribute [rw] status
      #   The status of the hold.
      #   One of the constants defined in {Increase::Models::InboundFundsHoldReleaseResponse::Status}
      #   @return [Symbol]
      required :status, enum: -> { Increase::Models::InboundFundsHoldReleaseResponse::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
      #   One of the constants defined in {Increase::Models::InboundFundsHoldReleaseResponse::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::InboundFundsHoldReleaseResponse::Type }

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
    end
  end
end
