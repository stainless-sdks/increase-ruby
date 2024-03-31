# frozen_string_literal: true

module Increase
  module Models
    class IntrafiExclusion < BaseModel
      # @!attribute [rw] id
      #   The identifier of this exclusion request.
      #   @return [String]
      required :id, String

      # @!attribute [rw] bank_name
      #   The name of the excluded institution.
      #   @return [String]
      required :bank_name, String

      # @!attribute [rw] entity_id
      #   The entity for which this institution is excluded.
      #   @return [String]
      required :entity_id, String

      # @!attribute [rw] excluded_at
      #   When this was exclusion was confirmed by IntraFi.
      #   @return [String]
      required :excluded_at, String

      # @!attribute [rw] fdic_certificate_number
      #   The Federal Deposit Insurance Corporation's certificate number for the institution.
      #   @return [String]
      required :fdic_certificate_number, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] status
      #   The status of the exclusion request.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending, :completed, :archived)

      # @!attribute [rw] submitted_at
      #   When this was exclusion was submitted to IntraFi by Increase.
      #   @return [String]
      required :submitted_at, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `intrafi_exclusion`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:intrafi_exclusion)
    end
  end
end
