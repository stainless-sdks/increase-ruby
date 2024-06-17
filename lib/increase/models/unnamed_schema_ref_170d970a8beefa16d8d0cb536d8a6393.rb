# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef170d970a8beefa16d8d0cb536d8a6393 < BaseModel
      # @!attribute [rw] retrieval_reference_number
      #   A life-cycle identifier used across e.g., an authorization and a reversal. Expected to be unique per acquirer within a window of time. For some card networks the retrieval reference number includes the trace counter.
      #   @return [String]
      required :retrieval_reference_number, String

      # @!attribute [rw] trace_number
      #   A counter used to verify an individual authorization. Expected to be unique per acquirer within a window of time.
      #   @return [String]
      required :trace_number, String

      # @!attribute [rw] transaction_id
      #   A globally unique transaction identifier provided by the card network, used across multiple life-cycle requests.
      #   @return [String]
      required :transaction_id, String
    end
  end
end
