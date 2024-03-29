# frozen_string_literal: true

module Increase
  module Models
    class IntrafiAccountEnrollment < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] intrafi_id
      required :intrafi_id, String

      # @!attribute [rw] status
      required :status,
               Increase::Enum.new(
                 [
                   :pending_enrolling,
                   :enrolled,
                   :pending_unenrolling,
                   :unenrolled,
                   :requires_attention
                 ]
               )

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:intrafi_account_enrollment])
    end
  end
end
