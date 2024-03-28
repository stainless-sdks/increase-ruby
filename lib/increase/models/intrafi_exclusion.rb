# frozen_string_literal: true

module Increase
  module Models
    class IntrafiExclusion < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] bank_name
      required :bank_name, String

      # @!attribute [rw] entity_id
      required :entity_id, String

      # @!attribute [rw] excluded_at
      required :excluded_at, String

      # @!attribute [rw] fdic_certificate_number
      required :fdic_certificate_number, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:pending, :completed, :archived])

      # @!attribute [rw] submitted_at
      required :submitted_at, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:intrafi_exclusion])
    end
  end
end
