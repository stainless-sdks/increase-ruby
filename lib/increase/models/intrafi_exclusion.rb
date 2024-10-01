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
      #   @return [DateTime]
      required :excluded_at, DateTime

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
      #   @return [Symbol, Increase::Models::IntrafiExclusion::Status]
      required :status, enum: -> { Increase::Models::IntrafiExclusion::Status }

      # @!attribute [rw] submitted_at
      #   When this was exclusion was submitted to IntraFi by Increase.
      #   @return [DateTime]
      required :submitted_at, DateTime

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `intrafi_exclusion`.
      #   @return [Symbol, Increase::Models::IntrafiExclusion::Type]
      required :type, enum: -> { Increase::Models::IntrafiExclusion::Type }

      # The status of the exclusion request.
      class Status < Increase::Enum
        # The exclusion is being added to the IntraFi network.
        PENDING = :pending

        # The exclusion has been added to the IntraFi network.
        COMPLETED = :completed

        # The exclusion has been removed from the IntraFi network.
        ARCHIVED = :archived
      end

      # A constant representing the object's type. For this resource it will always be `intrafi_exclusion`.
      class Type < Increase::Enum
        INTRAFI_EXCLUSION = :intrafi_exclusion
      end
    end
  end
end
