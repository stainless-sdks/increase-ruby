# frozen_string_literal: true

module Increase
  module Models
    class EntitySupplementalDocument < BaseModel
      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Supplemental Document was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] entity_id
      #   The Entity the supplemental document is attached to.
      #   @return [String]
      required :entity_id, String

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
      #   One of the constants defined in {Increase::Models::EntitySupplementalDocument::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::EntitySupplementalDocument::Type }

      # A constant representing the object's type. For this resource it will always be `entity_supplemental_document`.
      class Type < Increase::Enum
        ENTITY_SUPPLEMENTAL_DOCUMENT = :entity_supplemental_document
      end
    end
  end
end
