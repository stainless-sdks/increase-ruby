# frozen_string_literal: true

module Increase
  module Models
    class InboundRealTimePaymentsTransferSimulationResult < BaseModel
      # @!attribute [rw] declined_transaction
      #   If the Real-Time Payments Transfer attempt fails, this will contain the resulting [Declined Transaction](#declined-transactions) object. The Declined Transaction's `source` will be of `category: inbound_real_time_payments_transfer_decline`.
      #   @return [Increase::Models::DeclinedTransaction]
      required :declined_transaction, -> { Increase::Models::DeclinedTransaction }

      # @!attribute [rw] transaction
      #   If the Real-Time Payments Transfer attempt succeeds, this will contain the resulting [Transaction](#transactions) object. The Transaction's `source` will be of `category: inbound_real_time_payments_transfer_confirmation`.
      #   @return [Increase::Models::Transaction]
      required :transaction, -> { Increase::Models::Transaction }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_real_time_payments_transfer_simulation_result`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_real_time_payments_transfer_simulation_result)
    end
  end
end
