# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRefBd145cfbb61bff565c9c591f45b4b8fa < BaseModel
      # @!attribute [rw] acquirer_business_id
      #   A network assigned business ID that identifies the acquirer that processed this transaction.
      #   @return [String]
      required :acquirer_business_id, String

      # @!attribute [rw] acquirer_reference_number
      #   A globally unique identifier for this settlement.
      #   @return [String]
      required :acquirer_reference_number, String

      # @!attribute [rw] transaction_id
      #   A globally unique transaction identifier provided by the card network, used across multiple life-cycle requests.
      #   @return [String]
      required :transaction_id, String
    end
  end
end
