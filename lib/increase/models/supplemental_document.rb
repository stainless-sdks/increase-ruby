# frozen_string_literal: true

module Increase
  module Models
    class SupplementalDocument < BaseModel
      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Supplemental Document was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] file_id
      #   The File containing the document.
      #   @return [String]
      required :file_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `entity_supplemental_document`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:entity_supplemental_document)
    end
  end
end
