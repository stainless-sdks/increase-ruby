# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::InboundFundsHolds#release
      class InboundFundsHoldReleaseResponse < Increase::Internal::Type::BaseModel
        # @!attribute id
        #   #/components/schemas/inbound_funds_hold/properties/id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   #/components/schemas/inbound_funds_hold/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute automatically_releases_at
        #   #/components/schemas/inbound_funds_hold/properties/automatically_releases_at
        #
        #   @return [Time]
        required :automatically_releases_at, Time

        # @!attribute created_at
        #   #/components/schemas/inbound_funds_hold/properties/created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   #/components/schemas/inbound_funds_hold/properties/currency
        #
        #   @return [Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency]
        required :currency, enum: -> { Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency }

        # @!attribute held_transaction_id
        #   #/components/schemas/inbound_funds_hold/properties/held_transaction_id
        #
        #   @return [String, nil]
        required :held_transaction_id, String, nil?: true

        # @!attribute pending_transaction_id
        #   #/components/schemas/inbound_funds_hold/properties/pending_transaction_id
        #
        #   @return [String, nil]
        required :pending_transaction_id, String, nil?: true

        # @!attribute released_at
        #   #/components/schemas/inbound_funds_hold/properties/released_at
        #
        #   @return [Time, nil]
        required :released_at, Time, nil?: true

        # @!attribute status
        #   #/components/schemas/inbound_funds_hold/properties/status
        #
        #   @return [Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status]
        required :status, enum: -> { Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status }

        # @!attribute type
        #   #/components/schemas/inbound_funds_hold/properties/type
        #
        #   @return [Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type]
        required :type, enum: -> { Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type }

        # @!parse
        #   # #/paths//simulations/inbound_funds_holds/{inbound_funds_hold_id}/release/post/responses/200/content/application/json/schema
        #   #
        #   # @param id [String]
        #   # @param amount [Integer]
        #   # @param automatically_releases_at [Time]
        #   # @param created_at [Time]
        #   # @param currency [Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Currency]
        #   # @param held_transaction_id [String, nil]
        #   # @param pending_transaction_id [String, nil]
        #   # @param released_at [Time, nil]
        #   # @param status [Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Status]
        #   # @param type [Symbol, Increase::Models::Simulations::InboundFundsHoldReleaseResponse::Type]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     automatically_releases_at:,
        #     created_at:,
        #     currency:,
        #     held_transaction_id:,
        #     pending_transaction_id:,
        #     released_at:,
        #     status:,
        #     type:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_funds_hold/properties/currency
        #
        # @see Increase::Models::Simulations::InboundFundsHoldReleaseResponse#currency
        module Currency
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/inbound_funds_hold/properties/status
        #
        # @see Increase::Models::Simulations::InboundFundsHoldReleaseResponse#status
        module Status
          extend Increase::Internal::Type::Enum

          # Funds are still being held.
          HELD = :held

          # Funds have been released.
          COMPLETE = :complete

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/inbound_funds_hold/properties/type
        #
        # @see Increase::Models::Simulations::InboundFundsHoldReleaseResponse#type
        module Type
          extend Increase::Internal::Type::Enum

          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
