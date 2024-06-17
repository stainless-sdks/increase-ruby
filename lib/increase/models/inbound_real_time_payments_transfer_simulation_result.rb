# frozen_string_literal: true

module Increase
  module Models
    class InboundRealTimePaymentsTransferSimulationResult < BaseModel
      # @!attribute [rw] declined_transaction
      #   If the Real-Time Payments Transfer attempt fails, this will contain the resulting [Declined Transaction](#declined-transactions) object. The Declined Transaction's `source` will be of `category: inbound_real_time_payments_transfer_decline`.
      #   @return [Increase::Models::InboundRealTimePaymentsTransferSimulationResult::DeclinedTransaction]
      required :declined_transaction,
               -> { Increase::Models::InboundRealTimePaymentsTransferSimulationResult::DeclinedTransaction }

      # @!attribute [rw] transaction
      #   If the Real-Time Payments Transfer attempt succeeds, this will contain the resulting [Transaction](#transactions) object. The Transaction's `source` will be of `category: inbound_real_time_payments_transfer_confirmation`.
      #   @return [Increase::Models::InboundRealTimePaymentsTransferSimulationResult::Transaction]
      required :transaction,
               -> { Increase::Models::InboundRealTimePaymentsTransferSimulationResult::Transaction }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_real_time_payments_transfer_simulation_result`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_real_time_payments_transfer_simulation_result)

      class DeclinedTransaction < BaseModel
        # @!attribute [rw] id
        #   The Declined Transaction identifier.
        #   @return [String]
        required :id, String

        # @!attribute [rw] account_id
        #   The identifier for the Account the Declined Transaction belongs to.
        #   @return [String]
        required :account_id, String

        # @!attribute [rw] amount
        #   The Declined Transaction amount in the minor unit of its currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Transaction occurred.
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] description
        #   This is the description the vendor provides.
        #   @return [String]
        required :description, String

        # @!attribute [rw] route_id
        #   The identifier for the route this Declined Transaction came through. Routes are things like cards and ACH details.
        #   @return [String]
        required :route_id, String

        # @!attribute [rw] route_type
        #   The type of the route this Declined Transaction came through.
        #   @return [Symbol]
        required :route_type, Increase::Enum.new(:account_number, :card)

        # @!attribute [rw] source
        #   This is an object giving more details on the network-level event that caused the Declined Transaction. For example, for a card transaction this lists the merchant's industry and location. Note that for backwards compatibility reasons, additional undocumented keys may appear in this object. These should be treated as deprecated and will be removed in the future.
        #   @return [Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda]
        required :source, -> { Increase::Models::UnnamedSchemaRef5bd250eed53c6dbc40d752e575c3cdda }

        # @!attribute [rw] type
        #   A constant representing the object's type. For this resource it will always be `declined_transaction`.
        #   @return [Symbol]
        required :type, Increase::Enum.new(:declined_transaction)
      end

      class Transaction < BaseModel
        # @!attribute [rw] id
        #   The Transaction identifier.
        #   @return [String]
        required :id, String

        # @!attribute [rw] account_id
        #   The identifier for the Account the Transaction belongs to.
        #   @return [String]
        required :account_id, String

        # @!attribute [rw] amount
        #   The Transaction amount in the minor unit of its currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Transaction occurred.
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] description
        #   An informational message describing this transaction. Use the fields in `source` to get more detailed information. This field appears as the line-item on the statement.
        #   @return [String]
        required :description, String

        # @!attribute [rw] route_id
        #   The identifier for the route this Transaction came through. Routes are things like cards and ACH details.
        #   @return [String]
        required :route_id, String

        # @!attribute [rw] route_type
        #   The type of the route this Declined Transaction came through.
        #   @return [Symbol]
        required :route_type, Increase::Enum.new(:account_number, :card)

        # @!attribute [rw] source
        #   This is an object giving more details on the network-level event that caused the Transaction. Note that for backwards compatibility reasons, additional undocumented keys may appear in this object. These should be treated as deprecated and will be removed in the future.
        #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c]
        required :source, -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c }

        # @!attribute [rw] type
        #   A constant representing the object's type. For this resource it will always be `transaction`.
        #   @return [Symbol]
        required :type, Increase::Enum.new(:transaction)
      end
    end
  end
end
